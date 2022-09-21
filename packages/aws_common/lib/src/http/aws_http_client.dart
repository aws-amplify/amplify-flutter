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

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/http/aws_http_client_io.dart'
    if (dart.library.js) 'package:aws_common/src/http/aws_http_client_js.dart';
import 'package:meta/meta.dart';

/// {@template aws_common.http.aws_http_client}
/// An HTTP client with support for HTTP/1.1, HTTP/2, and cancelable requests.
/// {@endtemplate}
abstract class AWSHttpClient implements Closeable {
  /// {@macro aws_common.http.aws_http_client}
  factory AWSHttpClient() = AWSHttpClientImpl;

  /// Subclass constructor for [AWSHttpClient].
  ///
  /// **Internal use only**. For external cases, consider subclassing
  /// [AWSBaseHttpClient] or [AWSCustomHttpClient] instead.
  @protected
  @internal
  AWSHttpClient.protected();

  /// Callback for VM clients when an SSL exception occurs due to an untrusted
  /// or unverifiable certificate.
  ///
  /// Clients can support establishing an SSL connection despite this exception
  /// by selectively returning `true` for these options. For example, when
  /// debugging with local, self-signed certificates, it can be helpful to
  /// return `true` from this method for all certificates.
  BadCertificateCallback onBadCertificate = (_, __, ___) => false;

  /// The supported HTTP protocols, used for negotiating with remote servers.
  ///
  /// By default, only HTTP/2 and HTTP/3 servers are supported.
  SupportedProtocols supportedProtocols = SupportedProtocols.http2_3;

  /// Sends [request] using the underlying HTTP protocol and returns the
  /// streaming response.
  AWSHttpOperation send(
    AWSBaseHttpRequest request, {
    FutureOr<void> Function()? onCancel,
  });

  @override
  FutureOr<void> close({bool force = false});
}

/// Base class for all implementations of [AWSHttpClient].
///
/// This class can be used for customizing how requests are sent. For simple
/// modifications in the request or response objects, like adding headers, it
/// is easier to subclass [AWSBaseHttpClient].
abstract class AWSCustomHttpClient extends AWSHttpClientImpl {}

/// An [AWSHttpClient] which supports modifying requests before sending and,
/// optionally, modifying responses before being returned from [send].
///
/// - To modify the request, override [transformRequest].
/// - To modify the response, override [transformResponse].
abstract class AWSBaseHttpClient extends AWSCustomHttpClient {
  /// Overriding this will change the underlying [send] method without
  /// interferring with transformations from [transformRequest] and
  /// [transformResponse].
  AWSHttpClient get baseClient => this;

  @override
  BadCertificateCallback get onBadCertificate => baseClient.onBadCertificate;

  @override
  set onBadCertificate(BadCertificateCallback onBadCertificate) {
    baseClient.onBadCertificate = onBadCertificate;
  }

  @override
  SupportedProtocols get supportedProtocols => baseClient.supportedProtocols;

  @override
  set supportedProtocols(SupportedProtocols supportedProtocols) {
    baseClient.supportedProtocols = supportedProtocols;
  }

  /// Transforms a [request] before sending.
  @protected
  @visibleForOverriding
  @mustCallSuper
  Future<AWSBaseHttpRequest> transformRequest(
    AWSBaseHttpRequest request,
  );

  /// Transforms a [response] before returning from [send].
  ///
  /// By default, no transformation occurs.
  @protected
  @visibleForOverriding
  Future<AWSBaseHttpResponse> transformResponse(
    AWSBaseHttpResponse response,
  ) async =>
      response;

  Future<void> _send(
    AWSBaseHttpRequest request,
    CancelableCompleter<AWSBaseHttpResponse> completer, {
    required StreamCompleter<int> requestProgressCompleter,
    required StreamCompleter<int> responseProgressCompleter,
  }) async {
    try {
      request = await transformRequest(request);
    } on Object catch (e, st) {
      completer.completeError(e, st);
      requestProgressCompleter.setEmpty();
      responseProgressCompleter.setEmpty();
      return;
    }
    final operation = baseClient.send(request);
    requestProgressCompleter.setSourceStream(operation.requestProgress);
    responseProgressCompleter.setSourceStream(operation.responseProgress);
    operation.operation.then(
      (resp) async {
        try {
          resp = await transformResponse(resp);
          completer.complete(resp);
        } on Exception catch (e, st) {
          completer.completeError(e, st);
        }
      },
      onError: completer.completeError,
      onCancel: completer.operation.cancel,
    );
  }

  /// Do not override this method on [AWSBaseHttpClient].
  ///
  /// To modify the underlying [send], override [baseClient] instead.
  @override
  @nonVirtual
  AWSHttpOperation send(
    AWSBaseHttpRequest request, {
    FutureOr<void> Function()? onCancel,
  }) {
    final completer = CancelableCompleter<AWSBaseHttpResponse>(
      onCancel: onCancel,
    );
    final requestProgressCompleter = StreamCompleter<int>();
    final responseProgressCompleter = StreamCompleter<int>();
    _send(
      request,
      completer,
      requestProgressCompleter: requestProgressCompleter,
      responseProgressCompleter: responseProgressCompleter,
    );
    return AWSHttpOperation(
      completer.operation,
      requestProgress: responseProgressCompleter.stream,
      responseProgress: responseProgressCompleter.stream,
    );
  }

  @override
  Future<void> close({bool force = false}) {
    return Future.wait<void>([
      if (!identical(this, baseClient))
        Future.value(baseClient.close(force: force)),
      super.close(force: force),
    ]);
  }
}
