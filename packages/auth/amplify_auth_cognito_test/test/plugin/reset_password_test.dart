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
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/model/auth_configuration.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart'
    hide NotAuthorizedException;
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:test/test.dart';

import '../common/mock_clients.dart';
import '../common/mock_config.dart';
import '../common/mock_secure_storage.dart';

// Follows resetPassword test cases:
// https://github.com/aws-amplify/amplify-android/tree/main/aws-auth-cognito/src/test/resources/feature-test/testsuites/resetPassword
void main() {
  final authConfig = AuthConfiguration.fromConfig(mockConfig.auth!.awsPlugin!);
  final userPoolConfig = authConfig.userPoolConfig!;
  final identityPoolConfig = authConfig.identityPoolConfig!;
  final userPoolKeys = CognitoUserPoolKeys(userPoolConfig);
  final identityPoolKeys = CognitoIdentityPoolKeys(identityPoolConfig);

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

    group('resetPassword', () {
      test('throws when API call fails', () async {
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
        );
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        final mockIdp = MockCognitoIdentityProviderClient(
          forgotPassword: () async =>
              throw const AuthNotAuthorizedException('Cognito error message'),
        );
        stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

        await expectLater(
          plugin.resetPassword(username: username),
          // TODO(dnys1): Align error handling
          throwsA(
            isA<AuthNotAuthorizedException>().having(
              (e) => e.message,
              'message',
              'Cognito error message',
            ),
          ),
        );
      });

      test('succeeds with successful API call', () async {
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
        );
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        final mockIdp = MockCognitoIdentityProviderClient(
          forgotPassword: () async => ForgotPasswordResponse(
            codeDeliveryDetails: CodeDeliveryDetailsType(
              destination: 'dummy destination',
              deliveryMedium: DeliveryMediumType.email,
              attributeName: 'dummy attribute',
            ),
          ),
        );
        stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

        await expectLater(
          plugin.resetPassword(username: username),
          completion(
            isA<CognitoResetPasswordResult>().having(
              (res) => res.nextStep.codeDeliveryDetails,
              'codeDeliveryDetails',
              const AuthCodeDeliveryDetails(
                destination: 'dummy destination',
                deliveryMedium: 'EMAIL',
                attributeName: 'dummy attribute',
              ),
            ),
          ),
        );
      });

      test('can be called when signed out', () async {
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        final mockIdp = MockCognitoIdentityProviderClient(
          forgotPassword: () async => ForgotPasswordResponse(
            codeDeliveryDetails: CodeDeliveryDetailsType(
              destination: 'dummy destination',
              deliveryMedium: DeliveryMediumType.email,
              attributeName: 'dummy attribute',
            ),
          ),
        );
        stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

        await expectLater(
          plugin.resetPassword(username: username),
          completion(
            isA<CognitoResetPasswordResult>().having(
              (res) => res.nextStep.codeDeliveryDetails,
              'codeDeliveryDetails',
              const AuthCodeDeliveryDetails(
                destination: 'dummy destination',
                deliveryMedium: 'EMAIL',
                attributeName: 'dummy attribute',
              ),
            ),
          ),
        );
      });
    });
  });
}
