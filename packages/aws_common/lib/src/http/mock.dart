// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:stream_transform/stream_transform.dart';

/// A mock request handler for use with [MockAWSHttpClient].
typedef MockRequestHandler = FutureOr<AWSBaseHttpResponse> Function(
  AWSHttpRequest request,
  bool Function() isCancelled,
);

/// {@template aws_common.http.aws_mock_http_client}
/// A mock [AWSHttpClient] for use in tests.
/// {@endtemplate}
class MockAWSHttpClient extends AWSCustomHttpClient {
  /// {@macro aws_common.http.aws_mock_http_client}
  MockAWSHttpClient(this._handler);

  final MockRequestHandler _handler;

  @override
  AWSHttpOperation send(
    AWSBaseHttpRequest request, {
    FutureOr<void> Function()? onCancel,
  }) {
    final requestProgress = StreamController<int>.broadcast();
    final responseProgress = StreamController<int>.broadcast();
    var isCancelled = false;
    return AWSHttpOperation(
      CancelableOperation.fromFuture(
        Future(() async {
          final readRequest = await request.read();
          requestProgress.add(readRequest.bodyBytes.length);
          unawaited(requestProgress.close());
          final response = await _handler(
            readRequest,
            () => isCancelled,
          );
          if (response is AWSHttpResponse) {
            responseProgress.add(response.bodyBytes.length);
            unawaited(responseProgress.close());
            return response;
          }
          return AWSStreamedHttpResponse(
            statusCode: response.statusCode,
            headers: response.headers,
            body: response.body.tap(
              (event) => responseProgress.add(event.length),
              onDone: responseProgress.close,
            ),
          );
        }),
        onCancel: () {
          isCancelled = true;
          requestProgress.close();
          responseProgress.close();
          return onCancel?.call();
        },
      ),
      requestProgress: requestProgress.stream,
      responseProgress: responseProgress.stream,
      onCancel: onCancel,
    );
  }
}
