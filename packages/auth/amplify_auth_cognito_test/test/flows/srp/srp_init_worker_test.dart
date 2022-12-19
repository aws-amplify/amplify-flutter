// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// TODO(dnys1): Investigate DDC failures
@Tags(['no-ddc'])

import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_init_result.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_init_worker.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;

  group('SrpInitWorkerTest', () {
    test('success', () async {
      final worker = SrpInitWorker.create();
      addTearDown(worker.close);

      worker.logs.listen(safePrint);
      await worker.spawn();
      final message = SrpInitMessage();
      worker.add(message);

      expect(
        worker.stream,
        emits(isA<SrpInitResult>()),
      );
    });
  });
}
