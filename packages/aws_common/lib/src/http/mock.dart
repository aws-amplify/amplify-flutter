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

import 'package:aws_common/aws_common.dart';

/// A mock request handler for use with [MockAWSHttpClient].
typedef MockRequestHandler = FutureOr<AWSBaseHttpResponse> Function(
  AWSHttpRequest,
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
    return AWSHttpOperation(
      CancelableOperation.fromFuture(
        Future(() async {
          return _handler(await request.read());
        }),
      ),
      requestProgress: const Stream.empty(),
      responseProgress: const Stream.empty(),
    );
  }
}
