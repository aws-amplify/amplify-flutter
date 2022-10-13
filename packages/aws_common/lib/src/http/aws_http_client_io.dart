// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';
import 'dart:convert';
import 'dart:io' hide X509Certificate;
import 'dart:io' as io show X509Certificate;

import 'package:aws_common/aws_common.dart';
import 'package:http2/http2.dart';
import 'package:meta/meta.dart';
import 'package:stream_transform/stream_transform.dart';

/// {@template aws_common.http.http_client_impl}
/// The platform-specific implementation of [AWSHttpClient].
///
/// - On the VM, this wraps `dart:io`'s [HttpClient] and `package:http2`.
/// - On the Web, this uses the browser's `fetch` API.
/// {@endtemplate}
class AWSHttpClientImpl extends AWSHttpClient {
  /// {@macro aws_common.http.http_client_impl}
  AWSHttpClientImpl() : super.protected();

  /// The underlying `dart:io` HTTP/1.1 client.
  HttpClient? _inner;
  bool get _innerIsClosed => _inner == null;

  final _http2Connections = <String, ClientTransportConnection>{};

  static final AWSLogger _logger = AWSLogger().createChild('AWSHttpClient');

  void _setBadCertificateCallback(
    HttpClient client,
    BadCertificateCallback callback,
  ) {
    client.badCertificateCallback = (cert, host, port) {
      return onBadCertificate(cert.asInternalCert(), host, port);
    };
  }

  @override
  set onBadCertificate(BadCertificateCallback callback) {
    if (!_innerIsClosed) {
      _setBadCertificateCallback(_inner!, callback);
    }
    super.onBadCertificate = callback;
  }

  /// Sends an HTTP/1.1 request using `dart:io`.
  Future<void> _sendH1({
    required AWSLogger logger,
    required AWSBaseHttpRequest request,
    required CancelableCompleter<AWSBaseHttpResponse> completer,
    required Future<void> cancelTrigger,
    required StreamSink<int> requestProgress,
    required StreamSink<int> responseProgress,
  }) async {
    void Function()? onCancel;
    unawaited(
      cancelTrigger.then((_) {
        logger.verbose('Canceling request');
        onCancel?.call();
      }),
    );
    _inner ??= HttpClient();
    _setBadCertificateCallback(_inner!, onBadCertificate);
    if (completer.isCanceled) return;
    final ioRequest = (await _inner!.openUrl(request.method.value, request.uri))
      ..followRedirects = request.followRedirects
      ..maxRedirects = request.maxRedirects;
    if (request.hasContentLength) {
      ioRequest.contentLength = request.contentLength as int;
    }
    logger.verbose('Opened server connection');

    if (completer.isCanceled) return;
    onCancel = () {
      logger.verbose('Aborting request');
      ioRequest.abort();
    };

    var requestBytesRead = 0;
    request.headers.forEach(ioRequest.headers.set);
    final response = await request.body
        .tap(
          (chunk) {
            requestBytesRead += chunk.length;
            requestProgress.add(requestBytesRead);
          },
          onDone: () {
            logger.verbose('Request sent');
            requestProgress.close();
          },
        )
        .takeUntil(cancelTrigger)
        .pipe(ioRequest) as HttpClientResponse;

    if (completer.isCanceled) return;
    final bodyController = StreamController<List<int>>(sync: true);
    onCancel = () {
      logger.verbose('Detaching socket');
      if (!bodyController.isClosed) {
        bodyController
          ..addError(const CancellationException())
          ..close();
      }
      response.detachSocket().then((socket) {
        socket.destroy();
      });
    };
    response.listen(
      bodyController.add,
      onError: bodyController.addError,
      onDone: bodyController.close,
      cancelOnError: true,
    );

    logger.verbose('Received headers');
    final headers = <String, String>{};
    response.headers.forEach((key, values) {
      headers[key] = values.join(', ');
    });

    var responseBytesRead = 0;
    final streamedResponse = AWSStreamedHttpResponse(
      statusCode: response.statusCode,
      headers: headers,
      body: bodyController.stream.tap(
        (chunk) {
          responseBytesRead += chunk.length;
          responseProgress.add(responseBytesRead);
        },
        onDone: () {
          logger.verbose('Response received');
          onCancel = null;
          responseProgress.close();
        },
      ),
    );
    completer.complete(streamedResponse);
  }

  // Copied from `dart:io`.
  static bool _isSubdomain(Uri subdomain, Uri domain) {
    return (subdomain.isScheme(domain.scheme) &&
        subdomain.port == domain.port &&
        (subdomain.host == domain.host ||
            subdomain.host.endsWith('.${domain.host}')));
  }

  // Copied from `dart:io`.
  static bool _shouldCopyHeaderOnRedirect(
    String headerKey,
    Uri originalUrl,
    Uri redirectUri,
  ) {
    if (_isSubdomain(redirectUri, originalUrl)) {
      return true;
    }

    const nonRedirectHeaders = [
      'authorization',
      'www-authenticate',
      'cookie',
      'cookie2'
    ];
    return !nonRedirectHeaders.contains(headerKey.toLowerCase());
  }

  /// Required HTTP/2 pseudo-header fields as described here:
  /// https://www.rfc-editor.org/rfc/rfc7540#section-8.1.2.3
  static List<Header> _requiredH2Headers(
    AWSBaseHttpRequest request,
    List<_RedirectInfo> redirects,
    AWSHttpMethod method,
    Uri uri,
  ) =>
      [
        Header(':method'.codeUnits, utf8.encode(method.value)),
        Header(
          ':path'.codeUnits,
          utf8.encode('${uri.path}${uri.hasQuery ? '?${uri.query}' : ''}'),
        ),
        Header(':scheme'.codeUnits, utf8.encode(uri.scheme)),
        Header(
          ':authority'.codeUnits,
          utf8.encode('${uri.host}${uri.hasPort ? ':${uri.port}' : ''}'),
        ),
        for (final entry in request.headers.entries)
          if (redirects.isEmpty ||
              _shouldCopyHeaderOnRedirect(entry.key, request.uri, uri))
            Header(utf8.encode(entry.key), utf8.encode(entry.value)),
      ];

  /// Sends an HTTP/2 request using `package:http2`.
  Future<void> _sendH2({
    required AWSBaseHttpRequest request,
    required AWSLogger logger,
    required CancelableCompleter<AWSBaseHttpResponse> completer,
    required Future<void> cancelTrigger,
    required StreamSink<int> requestProgress,
    required StreamSink<int> responseProgress,
  }) async {
    void Function()? onCancel;
    unawaited(
      cancelTrigger.then((_) {
        logger.verbose('Canceling request');
        onCancel?.call();
      }),
    );

    final redirects = <_RedirectInfo>[];
    Future<AWSStreamedHttpResponse?> makeRequest(
      AWSHttpMethod method,
      Uri uri,
    ) async {
      final transport = _http2Connections[uri.authority] ??=
          ClientTransportConnection.viaSocket(
        await SecureSocket.connect(
          uri.host,
          uri.port,
          supportedProtocols: supportedProtocols.alpnValues,
          onBadCertificate: (cert) {
            return onBadCertificate(cert.asInternalCert(), uri.host, uri.port);
          },
        ),
      )..onActiveStateChanged = (isActive) {
              if (!isActive) {
                _logger.verbose('Closing transport: ${uri.authority}');
                _http2Connections.remove(uri.authority)?.finish();
              }
            };
      final stream = transport.makeRequest(
        _requiredH2Headers(request, redirects, method, uri),
      );

      var requestBytesRead = 0;
      request.body
          .map((chunk) {
            requestBytesRead += chunk.length;
            requestProgress.add(requestBytesRead);
            return DataStreamMessage(chunk);
          })
          .takeUntil(cancelTrigger)
          .listen(
            stream.outgoingMessages.add,
            onDone: () {
              logger.verbose('Request sent');
              requestProgress.close();
              stream.outgoingMessages.close();
            },
          );

      final gotHeaders = Completer<void>();
      onCancel = () {
        if (!gotHeaders.isCompleted) {
          gotHeaders.completeError(const CancellationException());
        }
      };
      stream.onTerminated = (code) {
        logger.debug('Stream terminated: $code');
      };

      final headers = CaseInsensitiveMap<String>({});
      final bodyController = StreamController<List<int>>(sync: true);

      late final StreamSubscription<StreamMessage> subscription;
      subscription = stream.incomingMessages.listen(
        (message) {
          if (completer.isCanceled) {
            subscription.cancel();
            return;
          }
          if (message is HeadersStreamMessage) {
            headers.addEntries(
              message.headers.map((header) {
                return MapEntry(
                  utf8.decode(header.name),
                  utf8.decode(header.value),
                );
              }),
            );
            if (message.endStream) {
              gotHeaders.complete();
            }
          } else if (message is DataStreamMessage) {
            if (!gotHeaders.isCompleted) {
              gotHeaders.complete();
            }
            bodyController.add(message.bytes);
          }
        },
        onError: (Object error, StackTrace stackTrace) {
          logger.debug('Error in stream: $error');
          if (!gotHeaders.isCompleted) {
            gotHeaders.completeError(
              AWSHttpException(request, error),
              stackTrace,
            );
            return;
          }
          if (!bodyController.isClosed) {
            bodyController
              ..addError(AWSHttpException(request, error), stackTrace)
              ..close();
          }
        },
        onDone: () {
          logger.verbose('Stream done');
          if (!gotHeaders.isCompleted) {
            gotHeaders.completeError(
              HttpException(
                'Connection closed before full header was received',
                uri: request.uri,
              ),
            );
            return;
          }
          bodyController.close();
        },
      );
      logger.verbose('Subscription established');
      onCancel = () {
        logger.verbose('Terminating connection');
        subscription.cancel();
        if (!bodyController.isClosed) {
          bodyController
            ..addError(const CancellationException())
            ..close();
        }
      };
      if (completer.isCanceled) return null;

      try {
        await gotHeaders.future;
      } on Object {
        logger.verbose('Never received headers');
        unawaited(subscription.cancel());
        if (!completer.isCanceled) {
          rethrow;
        }
      }

      logger.verbose('Received headers');
      if (completer.isCanceled) return null;

      // This field MUST be included in all responses:
      // https://httpwg.org/specs/rfc9113.html#rfc.section.8.3.2
      final statusCode = int.parse(headers.remove(':status')!);

      // Follow the semantics of [HttpClientRequest.followRedirects] from
      // `dart:io` for processing redirects.
      const redirectOnStatuses = [
        HttpStatus.movedPermanently,
        HttpStatus.found,
        HttpStatus.seeOther,
        HttpStatus.temporaryRedirect,
        HttpStatus.permanentRedirect,
      ];
      const redirectOnMethods = [AWSHttpMethod.get, AWSHttpMethod.head];
      if (redirectOnStatuses.contains(statusCode) && request.followRedirects) {
        redirects.add(_RedirectInfo(method.value, request.uri, statusCode));
        if (!redirectOnMethods.contains(method)) {
          // Exception: For [HttpStatus.seeOther] (303) automatic redirect will
          // also happen for "POST" requests with the method changed to "GET"
          // when following the redirect.
          if (method == AWSHttpMethod.post &&
              statusCode == HttpStatus.seeOther) {
            method = AWSHttpMethod.get;
          } else {
            throw RedirectException('Could not redirect', redirects);
          }
        }
        if (redirects.length > request.maxRedirects) {
          throw RedirectException('Redirect limit exceeded', redirects);
        }
        final location = headers.remove(AWSHeaders.location);
        if (location == null) {
          throw RedirectException('Could not redirect', redirects);
        }
        final locationUri = Uri.parse(location);
        return makeRequest(method, locationUri);
      }

      var responseBytesRead = 0;
      return AWSStreamedHttpResponse(
        statusCode: statusCode,
        headers: headers,
        body: bodyController.stream.tap(
          (chunk) {
            responseBytesRead += chunk.length;
            responseProgress.add(responseBytesRead);
          },
          onDone: () {
            logger.verbose('Response received');
            onCancel = null;
            responseProgress.close();
          },
        ),
      );
    }

    final response = await makeRequest(request.method, request.uri);
    if (response != null) {
      completer.complete(response);
    }
  }

  @override
  AWSHttpOperation send(
    AWSBaseHttpRequest request, {
    FutureOr<void> Function()? onCancel,
  }) {
    final requestProgressController = StreamController<int>();
    final responseProgressController = StreamController<int>();
    final cancelTrigger = Completer<void>();

    FutureOr<void> wrappedOnCancel() {
      _logger.verbose('onCancel triggered');
      requestProgressController.close();
      responseProgressController.close();
      cancelTrigger.complete();
      return onCancel?.call();
    }

    final completer = CancelableCompleter<AWSBaseHttpResponse>(
      onCancel: wrappedOnCancel,
    );
    final operation = AWSHttpOperation(
      completer.operation,
      onCancel: wrappedOnCancel,
      requestProgress: requestProgressController.stream,
      responseProgress: responseProgressController.stream,
    );

    Future<void>(() async {
      if (supportedProtocols.supports(AlpnProtocol.http1_1)) {
        return _sendH1(
          logger: operation.logger,
          request: request,
          completer: completer,
          cancelTrigger: cancelTrigger.future,
          requestProgress: requestProgressController,
          responseProgress: responseProgressController,
        );
      } else {
        return _sendH2(
          request: request,
          logger: operation.logger,
          completer: completer,
          cancelTrigger: cancelTrigger.future,
          requestProgress: requestProgressController,
          responseProgress: responseProgressController,
        );
      }
    }).catchError((Object e, StackTrace st) {
      completer.completeError(AWSHttpException(request, e), st);
    });

    return operation;
  }

  @override
  @mustCallSuper
  Future<void> close({bool force = false}) async {
    try {
      _inner?.close(force: force);
      _inner = null;
      for (final connection in _http2Connections.values) {
        if (force) {
          unawaited(connection.terminate());
        } else {
          unawaited(connection.finish());
        }
      }
    } finally {
      _http2Connections.clear();
    }
  }
}

class _RedirectInfo implements RedirectInfo {
  const _RedirectInfo(this.method, this.location, this.statusCode);

  @override
  final Uri location;

  @override
  final String method;

  @override
  final int statusCode;
}

extension on io.X509Certificate {
  /// Converts a `dart:io` X509Certificate to one which can be exported safely
  /// for all platforms.
  X509Certificate asInternalCert() {
    return X509Certificate(
      der: der,
      pem: pem,
      sha1: sha1,
      subject: subject,
      issuer: issuer,
      startValidity: startValidity,
      endValidity: endValidity,
    );
  }
}
