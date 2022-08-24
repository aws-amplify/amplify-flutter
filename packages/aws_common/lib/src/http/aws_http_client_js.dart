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
    required StreamSink<int> requestProgressController,
    required StreamSink<int> responseProgressController,
    required AbortController abortController,
    required CancelableCompleter<AWSBaseHttpResponse> completer,
  }) async {
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
      Object body;
      if (request.scheme == 'http' ||
          supportedProtocols.supports(AlpnProtocol.http1_1)) {
        body = Uint8List.fromList(await request.bodyBytes);
        unawaited(requestProgressController.close());
      } else {
        body = request.body.tap(
          (chunk) => requestProgressController.add(chunk.length),
          onDone: requestProgressController.close,
        );
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
      unawaited(streamView.progress.pipe(responseProgressController));
      final streamedResponse = AWSStreamedHttpResponse(
        statusCode: resp.status,
        headers: resp.headers,
        body: streamView,
      );
      if (streamedResponse.headers.containsKey(AWSHeaders.contentLength)) {
        completer.complete(streamedResponse.read());
      } else {
        completer.complete(streamedResponse);
      }
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
    final requestProgressController = StreamController<int>();
    final responseProgressController = StreamController<int>();
    final completer = CancelableCompleter<AWSBaseHttpResponse>(
      onCancel: () {
        abortController.abort();
        requestProgressController.close();
        responseProgressController.close();
        return onCancel?.call();
      },
    );
    _send(
      request: request,
      requestProgressController: requestProgressController,
      responseProgressController: responseProgressController,
      abortController: abortController,
      completer: completer,
    )
        .catchError(
          (Object e, st) => completer.completeError(
            AWSHttpException(request, e),
          ),
        )
        .whenComplete(requestProgressController.close);
    final operation = AWSHttpOperation(
      completer.operation,
      requestProgress: requestProgressController.stream,
      responseProgress: responseProgressController.stream,
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
