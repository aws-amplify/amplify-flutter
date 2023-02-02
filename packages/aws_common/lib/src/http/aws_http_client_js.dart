// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:typed_data';

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/js/abort.dart';
import 'package:aws_common/src/js/fetch.dart';
import 'package:meta/meta.dart';
import 'package:stream_transform/stream_transform.dart';

/// {@macro aws_common.http.http_client_impl}
class AWSHttpClientImpl extends AWSHttpClient {
  /// {@macro aws_common.http.http_client_impl}
  AWSHttpClientImpl() : super.protected();

  /// Weak reference to all open connections' [AbortController].
  final _openConnections = <WeakReference<Cancelable>>[];

  Future<void> _send({
    required AWSBaseHttpRequest request,
    required AWSLogger logger,
    required StreamController<int> requestProgressController,
    required StreamController<int> responseProgressController,
    required AbortController abortController,
    required CancelableCompleter<AWSBaseHttpResponse> completer,
    required Completer<void> cancelTrigger,
  }) async {
    void Function()? onCancel;
    unawaited(
      cancelTrigger.future.then((_) {
        logger.verbose('Canceling request');
        onCancel?.call();
      }),
    );
    onCancel = () {
      abortController.abort();
    };

    // Choose a redirect mode which best matches the intention of the request
    // parameters since we cannot precisely match `dart:io`'s implementation.
    //
    // Allow an error state by setting followRedirects & maxRedirects = 0.
    final RequestRedirect redirect;
    if (request.followRedirects) {
      if (request.maxRedirects == 0) {
        redirect = RequestRedirect.error;
      } else {
        redirect = RequestRedirect.follow;
      }
    } else {
      redirect = RequestRedirect.manual;
    }
    try {
      // ReadableStream bodies are only supported in fetch on HTTPS calls to
      // HTTP/2 or HTTP/3 servers:
      // - https://developer.chrome.com/articles/fetch-streaming-requests/#doesnt-work-on-http1x
      // - https://developer.chrome.com/articles/fetch-streaming-requests/#incompatibility-outside-of-your-control
      var requestBytesRead = 0;
      final stream = request.body.tap(
        (chunk) {
          requestBytesRead += chunk.length;
          requestProgressController.add(requestBytesRead);
        },
        onDone: () {
          if (!cancelTrigger.isCompleted) {
            logger.verbose('Request sent');
          }
          requestProgressController.close();
        },
      ).takeUntil(cancelTrigger.future);
      Object body;
      if (request.scheme == 'http' ||
          supportedProtocols.supports(AlpnProtocol.http1_1)) {
        body = Uint8List.fromList(await collectBytes(stream));
      } else {
        body = stream;
      }

      if (completer.isCanceled) return;
      final resp = await fetch(
        request.uri.toString(),
        createRequestInit(
          method: request.method,
          headers: request.headers,
          body: body,
          signal: abortController.signal,
          redirect: redirect,
        ),
      );

      final streamView = resp.body;
      final bodyController = StreamController<List<int>>(
        sync: true,
        // In downstream operations, we may only have access to the body stream
        // so we need to allow cancellation via the subscription.
        onCancel: () {
          logger.verbose('Subscription canceled');
          if (!cancelTrigger.isCompleted) {
            cancelTrigger.complete();
          }
        },
      );
      onCancel = () {
        if (!bodyController.isClosed) {
          bodyController
            ..addError(const CancellationException())
            ..close();
        }
        responseProgressController.close();
      };
      unawaited(
        streamView.progress.forward(
          responseProgressController,
          cancelOnError: true,
        ),
      );
      unawaited(
        streamView.forward(bodyController, cancelOnError: true),
      );
      final streamedResponse = AWSStreamedHttpResponse(
        statusCode: resp.status,
        headers: resp.headers,
        body: bodyController.stream.tap(
          null,
          onDone: () {
            if (!cancelTrigger.isCompleted) {
              logger.verbose('Response received');
            }
            onCancel = null;
            responseProgressController.close();
          },
        ),
      );
      completer.complete(streamedResponse);
    } on Object catch (e, st) {
      completer.completeError(
        AWSHttpException(request, e),
        st,
      );
    }
  }

  @override
  AWSHttpOperation send(
    AWSBaseHttpRequest request, {
    FutureOr<void> Function()? onCancel,
  }) {
    final abortController = AbortController();
    final requestProgressController = StreamController<int>.broadcast();
    final responseProgressController = StreamController<int>.broadcast();
    // Inner request cancellation should happen before `onCancel` callback.
    final cancelTrigger = Completer<void>.sync();

    FutureOr<void> wrappedOnCancel() {
      // Protect against multiple synchronous calls to `cancel`.
      if (cancelTrigger.isCompleted) {
        return null;
      }
      abortController.abort();
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
      requestProgress: requestProgressController.stream,
      responseProgress: responseProgressController.stream,
      onCancel: wrappedOnCancel,
    );
    _send(
      request: request,
      logger: operation.logger,
      requestProgressController: requestProgressController,
      responseProgressController: responseProgressController,
      abortController: abortController,
      completer: completer,
      cancelTrigger: cancelTrigger,
    ).catchError(
      (Object e, st) => completer.completeError(
        AWSHttpException(request, e),
      ),
    );
    _openConnections.add(WeakReference(operation));
    return operation;
  }

  @override
  @mustCallSuper
  Future<void> close({bool force = false}) async {
    // Close all open connections.
    try {
      for (final openConnection in _openConnections) {
        openConnection.target?.cancel();
      }
    } finally {
      _openConnections.clear();
    }
  }
}
