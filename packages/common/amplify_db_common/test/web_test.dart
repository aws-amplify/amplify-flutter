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

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_db_common/src/connect.web.dart';
import 'package:async/async.dart';
import 'package:aws_common/testing.dart';
import 'package:drift/drift.dart';
import 'package:test/test.dart';

import 'util.dart';

void main() {
  group('drift utils (web)', () {
    test('calling connect multiple times should only result in one http call',
        () async {
      var requestCount = 0;
      final client = MockAWSHttpClient((request) {
        requestCount++;
        return AWSHttpResponse(statusCode: 200, body: Uint8List.fromList([]));
      });
      for (var i = 0; i < 100; i++) {
        try {
          final db = connect(
            name: 'TestDatabase',
            path: '/tmp',
            client: client,
          );
          await db.ensureOpen(TestQueryExecutorUser());
        } on Object {
          // This is expected to throw since the http request is mocked.
        }
      }
      expect(requestCount, 1);
    });

    test('loadSqlite3 should throw AmplifyException for a 4xx/5xx status code',
        () async {
      final client = MockAWSHttpClient((request) {
        return AWSHttpResponse(statusCode: 404, body: Uint8List.fromList([]));
      });
      final memo = AsyncMemoizer<Uint8List>();
      expect(
        () => loadSqlite3(client, memo),
        throwsA(isA<AmplifyException>()),
      );
    });
  });
}
