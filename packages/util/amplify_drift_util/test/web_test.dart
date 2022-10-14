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

@TestOn('browser')

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_drift_util/src/connect.web.dart';
import 'package:drift/drift.dart';
import 'package:test/test.dart';

import 'main_test.dart';

void main() {
  group('drift utils (web)', () {
    test('calling connect multiple times should only result in one http call',
        () async {
      final client = MockFetchSqlAWSHttpClient();
      for (var i = 0; i < 100; i++) {
        final db = connect(name: 'TestDatabase', path: '/tmp', client: client);
        unawaited(db.ensureOpen(TestQueryExecutorUser()));
      }
      expect(client.requestCount, 1);
    });
  });
}

/// A mock http client that returns an empty Uint8List and counts requests.
class MockFetchSqlAWSHttpClient extends AWSCustomHttpClient {
  MockFetchSqlAWSHttpClient();

  /// The number of requests this client has made.
  int requestCount = 0;

  @override
  AWSHttpOperation send(
    AWSBaseHttpRequest request, {
    FutureOr<void> Function()? onCancel,
  }) {
    requestCount++;
    return MockFetchSqlAWSHttpOperation();
  }
}

class MockFetchSqlAWSHttpOperation
    extends AWSHttpOperation<AWSBaseHttpResponse> {
  MockFetchSqlAWSHttpOperation()
      : super(
          CancelableOperation.fromFuture(
            Future.value(AWSHttpResponse(statusCode: 200, body: _bytes)),
          ),
          requestProgress: const Stream.empty(),
          responseProgress: const Stream.empty(),
        );

  /// Mock Sqlite3.wasm bytes.
  static final Uint8List _bytes = Uint8List.fromList([]);

  @override
  Future<AWSBaseHttpResponse> get response async {
    return AWSHttpResponse(statusCode: 200, body: _bytes);
  }
}
