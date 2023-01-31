// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// TODO(dnys1): Investigate DDC failures
@Tags(['no-ddc'])

import 'dart:async';

import 'package:amplify_auth_cognito_dart/src/flows/constants.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_device_password_verifier_worker.dart';
import 'package:amplify_auth_cognito_dart/src/model/cognito_device_secrets.dart';
import 'package:amplify_auth_cognito_dart/src/model/sign_in_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/respond_to_auth_challenge_request.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:built_collection/built_collection.dart';
import 'package:test/test.dart';
import 'package:worker_bee/worker_bee.dart';

import '../../common/mock_config.dart' hide username;
import 'srp_helper_test.dart';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;

  group('SrpDevicePasswordVerifierWorker', () {
    test('success', () async {
      final worker = SrpDevicePasswordVerifierWorker.create();
      addTearDown(worker.close);

      worker.logs.listen(safePrint);
      await worker.spawn();

      final message = SrpDevicePasswordVerifierMessage(
        (b) => b
          ..initResult = initResult
          ..clientId = testAppClientId
          ..deviceSecrets = CognitoDeviceSecrets(
            (b) => b
              ..deviceKey = deviceKey
              ..deviceGroupKey = deviceGroupKey
              ..devicePassword = devicePassword,
          )
          ..parameters = SignInParameters(
            (p) => p
              ..username = srpUsername
              ..password = srpPassword,
          )
          ..challengeParameters = BuiltMap({
            CognitoConstants.challengeParamUsername: srpUsername,
            CognitoConstants.challengeParamUserIdForSrp: srpUsername,
            CognitoConstants.challengeParamSecretBlock: secretBlock,
            CognitoConstants.challengeParamSalt: salt,
            CognitoConstants.challengeParamSrpB: publicB,
            CognitoConstants.challengeParamDeviceKey: deviceKey,
          }),
      );
      worker.add(message);

      expect(
        worker.stream,
        emits(
          isA<RespondToAuthChallengeRequest>().having(
            (req) => req.challengeResponses?[
                CognitoConstants.challengeParamPasswordSignature],
            'signature',
            isNotNull,
          ),
        ),
      );
    });

    test('failure', () async {
      final worker = SrpDevicePasswordVerifierWorker.create();

      worker.logs.listen(safePrint);
      await worker.spawn();
      final message = SrpDevicePasswordVerifierMessage(
        (b) => b
          ..initResult = initResult
          ..clientId = testAppClientId
          ..deviceSecrets = CognitoDeviceSecrets(
            (b) => b
              ..deviceKey = deviceKey
              ..deviceGroupKey = deviceGroupKey
              ..devicePassword = devicePassword,
          )
          ..parameters = SignInParameters(
            (p) => p
              ..username = srpUsername
              ..password = srpPassword,
          )
          ..challengeParameters = BuiltMap(<String, String>{}),
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
