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

// TODO(dnys1): Investigate DDC failures
@Tags(['no-ddc'])

import 'dart:async';

import 'package:amplify_auth_cognito_dart/src/flows/constants.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_password_verifier_worker.dart';
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

  group('SrpPasswordVerifierWorker', () {
    test('success', () async {
      final worker = SrpPasswordVerifierWorker.create();
      addTearDown(worker.close);

      worker.logs.listen(safePrint);
      await worker.spawn();
      final message = SrpPasswordVerifierMessage(
        (b) => b
          ..initResult = initResult
          ..clientId = testAppClientId
          ..poolId = 'us-east-1_$poolName'
          ..parameters = SignInParameters(
            (p) => p
              ..username = username
              ..password = password,
          )
          ..challengeParameters = BuiltMap({
            CognitoConstants.challengeParamUsername: username,
            CognitoConstants.challengeParamUserIdForSrp: username,
            CognitoConstants.challengeParamSecretBlock: secretBlock,
            CognitoConstants.challengeParamSalt: salt,
            CognitoConstants.challengeParamSrpB: publicB,
          })
          ..timestamp = DateTime.utc(2017, 6, 15, 7),
      );
      worker.add(message);

      const expectedSignature = 'QwHbbUqF6DSSepJh2QqTWDCb1XjmqaxnnW5kDn5dz7E=';

      expect(
        worker.stream,
        emits(
          isA<RespondToAuthChallengeRequest>().having(
            (req) => req.challengeResponses?[
                CognitoConstants.challengeParamPasswordSignature],
            'signature',
            expectedSignature,
          ),
        ),
      );
    });

    test('failure', () async {
      final worker = SrpPasswordVerifierWorker.create();

      worker.logs.listen(safePrint);
      await worker.spawn();
      final message = SrpPasswordVerifierMessage(
        (b) => b
          ..initResult = initResult
          ..clientId = testAppClientId
          ..poolId = 'us-east-1_$poolName'
          ..parameters = SignInParameters(
            (p) => p
              ..username = username
              ..password = password,
          )
          ..challengeParameters = BuiltMap(<String, String>{})
          ..timestamp = DateTime.utc(2017, 6, 15, 7),
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
