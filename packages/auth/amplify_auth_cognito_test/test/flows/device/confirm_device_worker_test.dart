// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/src/flows/device/confirm_device_worker.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';
import 'package:worker_bee/worker_bee.dart';

import '../../common/mock_config.dart';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;

  group('ConfirmDeviceWorker', () {
    test('success', () async {
      final worker = ConfirmDeviceWorker.create();
      addTearDown(worker.close);

      worker.logs.listen(safePrint);
      await worker.spawn();
      final message = ConfirmDeviceMessage(
        (b) => b
          ..accessToken = accessToken.raw
          ..newDeviceMetadata.deviceKey = 'deviceKey'
          ..newDeviceMetadata.deviceGroupKey = 'deviceGroupKey',
      );
      worker.add(message);

      expect(
        worker.stream,
        emits(isA<ConfirmDeviceResponse>()),
      );
    });

    test('failure', () async {
      final worker = ConfirmDeviceWorker.create();

      worker.logs.listen(safePrint);
      await worker.spawn();
      final message = ConfirmDeviceMessage(
        // Missing device params
        (b) => b..accessToken = accessToken.raw,
      );
      worker.add(message);

      expect(
        worker.result,
        completion(isA<ErrorResult>()),
      );
      await expectLater(
        worker.stream,
        emitsError(isA<WorkerBeeException>()),
      );
      unawaited(worker.close());
    });
  });
}
