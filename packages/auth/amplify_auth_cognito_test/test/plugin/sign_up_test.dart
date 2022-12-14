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

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart'
    hide SignUpRequest;
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:test/test.dart';

import '../common/mock_clients.dart';
import '../common/mock_config.dart';
import '../common/mock_secure_storage.dart';

// Follows signUp test cases:
// https://github.com/aws-amplify/amplify-android/tree/main/aws-auth-cognito/src/test/resources/feature-test/testsuites/signUp
void main() {
  late AmplifyAuthCognitoDart plugin;
  late CognitoAuthStateMachine stateMachine;
  late SecureStorageInterface secureStorage;

  final testAuthRepo = AmplifyAuthProviderRepository();

  group('AmplifyAuthCognitoDart', () {
    setUp(() async {
      secureStorage = MockSecureStorage();
      stateMachine = CognitoAuthStateMachine()..addInstance(secureStorage);

      plugin = AmplifyAuthCognitoDart(credentialStorage: secureStorage)
        ..stateMachine = stateMachine;
    });

    tearDown(Amplify.reset);

    group('signUp', () {
      test('finishes when confirmed in the first step', () async {
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        final mockIdp = MockCognitoIdentityProviderClient(
          signUp: () async => SignUpResponse(
            userConfirmed: true,
            userSub: userSub,
          ),
        );
        stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

        await expectLater(
          plugin.signUp(
            username: username,
            password: 'password',
            options: CognitoSignUpOptions(
              userAttributes: {
                CognitoUserAttributeKey.email: 'user@domain.com',
              },
            ),
          ),
          completion(
            isA<CognitoSignUpResult>()
                .having(
                  (res) => res.isSignUpComplete,
                  'isSignUpComplete',
                  isTrue,
                )
                .having(
                  (res) => res.nextStep,
                  'nextStep',
                  const AuthNextSignUpStep(signUpStep: 'DONE'),
                ),
          ),
        );
      });

      test('prompts confirmation', () async {
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        const destination = 'user@domain.com';
        const deliveryMedium = DeliveryMediumType.email;
        const attributeName = 'attributeName';
        final mockIdp = MockCognitoIdentityProviderClient(
          signUp: () async => SignUpResponse(
            userConfirmed: false,
            userSub: userSub,
            codeDeliveryDetails: CodeDeliveryDetailsType(
              destination: destination,
              deliveryMedium: deliveryMedium,
              attributeName: attributeName,
            ),
          ),
        );
        stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

        await expectLater(
          plugin.signUp(
            username: username,
            password: 'password',
            options: CognitoSignUpOptions(
              userAttributes: {
                CognitoUserAttributeKey.email: 'user@domain.com',
              },
            ),
          ),
          completion(
            isA<CognitoSignUpResult>()
                .having(
                  (res) => res.isSignUpComplete,
                  'isSignUpComplete',
                  isFalse,
                )
                .having(
                  (res) => res.nextStep,
                  'nextStep',
                  AuthNextSignUpStep(
                    signUpStep: 'CONFIRM_SIGN_UP_STEP',
                    codeDeliveryDetails: AuthCodeDeliveryDetails(
                      attributeName: attributeName,
                      deliveryMedium: deliveryMedium.name,
                      destination: destination,
                    ),
                  ),
                ),
          ),
        );
      });
    });
  });
}
