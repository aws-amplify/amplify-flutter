// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/flows/constants.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_test/amplify_auth_cognito_test.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:checks/checks.dart';
import 'package:test/test.dart';

void main() {
  late AmplifyAuthCognitoDart plugin;
  late CognitoAuthStateMachine stateMachine;
  late MockSecureStorage secureStorage;

  final testAuthRepo = AmplifyAuthProviderRepository();

  group('resendSignInCode', () {
    setUp(() {
      secureStorage = MockSecureStorage();
      plugin = AmplifyAuthCognitoDart(
        secureStorageFactory: (_) => secureStorage,
      );
      stateMachine = plugin.stateMachine;
    });

    tearDown(Amplify.reset);

    test('should fail with inactive sign-in session', () async {
      await plugin.configure(
        config: mockConfig,
        authProviderRepo: testAuthRepo,
      );

      await check(plugin.resendSignInCode()).throws<InvalidStateException>();
    });

    test('should succeed with success response', () async {
      await plugin.configure(
        config: mockConfig,
        authProviderRepo: testAuthRepo,
      );

      const mockSession1 = 'MOCK_SESSION_1';
      const mockSession2 = 'MOCK_SESSION_2';
      const destination = '1234';
      final mockIdp = MockCognitoIdentityProviderClient(
        initiateAuth: (_) async => InitiateAuthResponse(
          challengeName: ChallengeNameType.smsMfa,
          session: mockSession1,
          challengeParameters: {
            CognitoConstants.challengeParamDeliveryMedium: 'SMS',
            CognitoConstants.challengeParamDeliveryDest: destination,
          },
        ),
        resendAuthChallengeCode: expectAsync1((request) async {
          expect(request.session, mockSession1);
          return ResendAuthChallengeCodeResponse(
            session: mockSession2,
            codeDeliveryDetails: CodeDeliveryDetailsType(
              destination: destination,
              deliveryMedium: DeliveryMediumType.sms,
            ),
          );
        }),
      );
      stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

      const expectedCodeDeliveryDetails = AuthCodeDeliveryDetails(
        deliveryMedium: DeliveryMedium.sms,
        destination: destination,
      );
      await check(
        plugin.signIn(username: username, password: password),
      ).completes(
        it()
          ..has((res) => res.isSignedIn, 'isSignedIn').isFalse()
          ..has((res) => res.nextStep.signInStep, 'signInStep')
              .equals(AuthSignInStep.confirmSignInWithSmsMfaCode)
          ..has(
            (res) => res.nextStep.codeDeliveryDetails,
            'codeDeliveryDetails',
          ).equals(expectedCodeDeliveryDetails),
      );

      await check(plugin.resendSignInCode()).completes(
        it()
          ..has((res) => res.codeDeliveryDetails, 'codeDeliveryDetails')
              .equals(expectedCodeDeliveryDetails),
      );
    });

    test('should fail with error response', () async {
      await plugin.configure(
        config: mockConfig,
        authProviderRepo: testAuthRepo,
      );

      const mockSession1 = 'MOCK_SESSION_1';
      const destination = '1234';
      final mockIdp = MockCognitoIdentityProviderClient(
        initiateAuth: (_) async => InitiateAuthResponse(
          challengeName: ChallengeNameType.smsMfa,
          session: mockSession1,
          challengeParameters: {
            CognitoConstants.challengeParamDeliveryMedium: 'SMS',
            CognitoConstants.challengeParamDeliveryDest: destination,
          },
        ),
        resendAuthChallengeCode: expectAsync1((request) async {
          expect(request.session, mockSession1);
          throw const NotAuthorizedServiceException('Invalid session');
        }),
      );
      stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

      const expectedCodeDeliveryDetails = AuthCodeDeliveryDetails(
        deliveryMedium: DeliveryMedium.sms,
        destination: destination,
      );
      await check(
        plugin.signIn(username: username, password: password),
      ).completes(
        it()
          ..has((res) => res.isSignedIn, 'isSignedIn').isFalse()
          ..has((res) => res.nextStep.signInStep, 'signInStep')
              .equals(AuthSignInStep.confirmSignInWithSmsMfaCode)
          ..has(
            (res) => res.nextStep.codeDeliveryDetails,
            'codeDeliveryDetails',
          ).equals(expectedCodeDeliveryDetails),
      );

      await check(plugin.resendSignInCode()).throws<AuthNotAuthorizedException>(
        it()
          ..has((res) => res.recoverySuggestion, 'recoverySuggestion')
              .isNotNull()
              .contains('Amplify.Auth.signIn'),
      );
    });
  });
}
