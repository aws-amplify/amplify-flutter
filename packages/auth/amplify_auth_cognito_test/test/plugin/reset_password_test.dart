// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart'
    hide NotAuthorizedException;
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_test/common/mock_clients.dart';
import 'package:amplify_auth_cognito_test/common/mock_config.dart';
import 'package:amplify_auth_cognito_test/common/mock_secure_storage.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:test/test.dart';

// Follows resetPassword test cases:
// https://github.com/aws-amplify/amplify-android/tree/main/aws-auth-cognito/src/test/resources/feature-test/testsuites/resetPassword
void main() {
  final userPoolKeys = CognitoUserPoolKeys(mockConfig.auth!.userPoolClientId!);
  final identityPoolKeys = CognitoIdentityPoolKeys(
    mockConfig.auth!.identityPoolId!,
  );

  late AmplifyAuthCognitoDart plugin;
  late CognitoAuthStateMachine stateMachine;
  late MockSecureStorage secureStorage;

  final testAuthRepo = AmplifyAuthProviderRepository();

  group('AmplifyAuthCognitoDart', () {
    setUp(() async {
      secureStorage = MockSecureStorage();
      SecureStorageInterface storageFactory(scope) => secureStorage;
      stateMachine = CognitoAuthStateMachine();

      plugin = AmplifyAuthCognitoDart(secureStorageFactory: storageFactory)
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
              attributeName: 'email',
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
                deliveryMedium: DeliveryMedium.email,
                destination: 'dummy destination',
                attributeKey: CognitoUserAttributeKey.email,
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
              attributeName: 'email',
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
                deliveryMedium: DeliveryMedium.email,
                destination: 'dummy destination',
                attributeKey: CognitoUserAttributeKey.email,
              ),
            ),
          ),
        );
      });
    });
  });
}
