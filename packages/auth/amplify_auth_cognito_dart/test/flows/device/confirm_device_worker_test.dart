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

import 'package:amplify_auth_cognito_dart/src/flows/device/confirm_device_worker.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/confirm_device_request.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';
import 'package:worker_bee/worker_bee.dart';

import '../../common/mock_config.dart';

void main() {
  group('ConfirmDeviceWorker', () {
    test('success', () async {
      final worker = ConfirmDeviceWorker.create();
      addTearDown(worker.close);

      worker.logs.listen(safePrint);
      await worker.spawn();
      final message = ConfirmDeviceMessage(
        (b) => b
          ..accessToken = accessToken.raw
          ..password = 'password'
          ..newDeviceMetadata.deviceKey = 'deviceKey'
          ..newDeviceMetadata.deviceGroupKey = 'deviceGroupKey',
      );
      worker.add(message);

      expect(
        worker.stream,
        emits(isA<ConfirmDeviceRequest>()),
      );
    });

    test('failure', () async {
      final worker = ConfirmDeviceWorker.create();

      worker.logs.listen(safePrint);
      await worker.spawn();
      final message = ConfirmDeviceMessage(
        (b) => b
          ..accessToken = accessToken.raw
          ..password = 'password',
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
