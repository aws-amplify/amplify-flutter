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
    required Future<void> cancelTrigger,
  }) async {
    void Function()? onCancel;
    unawaited(
      cancelTrigger.then((_) {
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
          logger.verbose('Request sent');
          requestProgressController.close();
        },
      ).takeUntil(cancelTrigger);
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
      final bodyController = StreamController<List<int>>(sync: true);
      onCancel = () {
        if (!bodyController.isClosed) {
          bodyController
            ..addError(const CancellationException())
            ..close();
        }
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
            logger.verbose('Response received');
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
      cancelTrigger: cancelTrigger.future,
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
