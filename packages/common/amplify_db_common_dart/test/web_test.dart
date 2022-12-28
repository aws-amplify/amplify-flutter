// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_db_common_dart/src/connect_html.dart';
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
      final client = MockAWSHttpClient((request, _) {
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
      final client = MockAWSHttpClient((request, _) {
        return AWSHttpResponse(statusCode: 404, body: Uint8List.fromList([]));
      });
      final memo = AsyncMemoizer<Uint8List>();
      expect(
        () => loadSqlite3(client, memo),
        throwsA(isA<Exception>()),
      );
    });
  });
}
