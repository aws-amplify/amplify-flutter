// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

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
  /// By default, all protocols are supported.
  SupportedProtocols supportedProtocols = SupportedProtocols.http1_2_3;

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
  AWSHttpClient? get baseClient => null;

  @override
  BadCertificateCallback get onBadCertificate =>
      baseClient?.onBadCertificate ?? super.onBadCertificate;

  @override
  set onBadCertificate(BadCertificateCallback onBadCertificate) {
    if (baseClient != null) {
      baseClient!.onBadCertificate = onBadCertificate;
    } else {
      super.onBadCertificate = onBadCertificate;
    }
  }

  @override
  SupportedProtocols get supportedProtocols =>
      baseClient?.supportedProtocols ?? super.supportedProtocols;

  @override
  set supportedProtocols(SupportedProtocols supportedProtocols) {
    if (baseClient != null) {
      baseClient!.supportedProtocols = supportedProtocols;
    } else {
      super.supportedProtocols = supportedProtocols;
    }
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

  Future<AWSHttpOperation<AWSBaseHttpResponse>?> _send(
    AWSBaseHttpRequest request,
    CancelableCompleter<AWSBaseHttpResponse> completer, {
    required StreamController<int> requestProgressController,
    required StreamController<int> responseProgressController,
  }) async {
    try {
      request = await transformRequest(request);
    } on Object catch (e, st) {
      completer.completeError(e, st);
      unawaited(requestProgressController.close());
      unawaited(responseProgressController.close());
      return null;
    }
    final operation = baseClient?.send(request) ?? super.send(request);
    unawaited(
      operation.requestProgress.forward(requestProgressController),
    );
    unawaited(
      operation.responseProgress.forward(responseProgressController),
    );
    // TODO(dnys1): Use `completeOperation` when available
    operation.operation.then(
      (resp) async {
        try {
          resp = await transformResponse(resp);
          completer.complete(resp);
        } on Object catch (e, st) {
          completer.completeError(e, st);
        }
      },
      onError: completer.completeError,
    );
    return operation;
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
    final requestProgressController =
        StreamController<int>.broadcast(sync: true);
    final responseProgressController =
        StreamController<int>.broadcast(sync: true);

    // TODO(dnys1): Use `completeOperation` when available
    AWSHttpOperation? underlyingOperation;
    final completer = CancelableCompleter<AWSBaseHttpResponse>(
      onCancel: () {
        underlyingOperation?.cancel();
        requestProgressController.close();
        responseProgressController.close();
        return onCancel?.call();
      },
    );
    _send(
      request,
      completer,
      requestProgressController: requestProgressController,
      responseProgressController: responseProgressController,
    ).then((op) => underlyingOperation = op);
    return AWSHttpOperation(
      completer.operation,
      requestProgress: requestProgressController.stream,
      responseProgress: responseProgressController.stream,
      onCancel: onCancel,
    );
  }

  @override
  Future<void> close({bool force = false}) {
    return Future.wait<void>([
      Future.value(baseClient?.close(force: force)),
      super.close(force: force),
    ]);
  }
}
