// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/state/auth_state.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

/// UI-03: Passkey registration prompt state and model tests.
void main() {
  group('PasskeyPromptState', () {
    test('default constructor has expected defaults', () {
      const state = PasskeyPromptState();
      expect(state.isRegistering, isFalse);
      expect(state.isSuccess, isFalse);
      expect(state.errorMessage, isNull);
      expect(state.registeredCredentials, isEmpty);
      expect(state.step, AuthenticatorStep.passkeyPrompt);
    });

    test('isRegistering flag indicates active registration', () {
      const state = PasskeyPromptState(isRegistering: true);
      expect(state.isRegistering, isTrue);
      expect(state.isSuccess, isFalse);
    });

    test('isSuccess flag indicates completed registration', () {
      const state = PasskeyPromptState(isSuccess: true);
      expect(state.isSuccess, isTrue);
      expect(state.isRegistering, isFalse);
    });

    test('errorMessage is accessible when set', () {
      const state = PasskeyPromptState(
        errorMessage: 'Passkey registration failed',
      );
      expect(state.errorMessage, 'Passkey registration failed');
    });

    test('equality holds for states with same properties', () {
      const state1 = PasskeyPromptState(isRegistering: true);
      const state2 = PasskeyPromptState(isRegistering: true);
      expect(state1, equals(state2));
    });

    test('inequality for states with different properties', () {
      const state1 = PasskeyPromptState(isRegistering: true);
      const state2 = PasskeyPromptState(isSuccess: true);
      expect(state1, isNot(equals(state2)));
    });

    test('props include all fields', () {
      const state = PasskeyPromptState(
        isRegistering: true,
        errorMessage: 'error',
      );
      // props: [step, isRegistering, isSuccess, errorMessage, registeredCredentials]
      expect(state.props, hasLength(5));
      expect(state.props[0], AuthenticatorStep.passkeyPrompt);
      expect(state.props[1], true); // isRegistering
      expect(state.props[2], false); // isSuccess
      expect(state.props[3], 'error'); // errorMessage
      expect(state.props[4], const <Never>[]); // registeredCredentials
    });

    test('runtimeTypeName returns correct value', () {
      const state = PasskeyPromptState();
      expect(state.runtimeTypeName, 'PasskeyPromptState');
    });
  });

  group('PasskeyRegistrationPrompts', () {
    test(
      'default constructor enables prompts after both sign-in and sign-up',
      () {
        const prompts = PasskeyRegistrationPrompts();
        expect(prompts.isEnabledAfterSignIn, isTrue);
        expect(prompts.isEnabledAfterSignUp, isTrue);
      },
    );

    test('enabled constructor enables all prompts', () {
      const prompts = PasskeyRegistrationPrompts.enabled();
      expect(prompts.afterSignIn, PasskeyPromptBehavior.always);
      expect(prompts.afterSignUp, PasskeyPromptBehavior.always);
      expect(prompts.isEnabledAfterSignIn, isTrue);
      expect(prompts.isEnabledAfterSignUp, isTrue);
    });

    test('disabled constructor disables all prompts', () {
      const prompts = PasskeyRegistrationPrompts.disabled();
      expect(prompts.afterSignIn, PasskeyPromptBehavior.never);
      expect(prompts.afterSignUp, PasskeyPromptBehavior.never);
      expect(prompts.isEnabledAfterSignIn, isFalse);
      expect(prompts.isEnabledAfterSignUp, isFalse);
    });

    test('custom configuration with mixed behaviors', () {
      const prompts = PasskeyRegistrationPrompts(
        afterSignIn: PasskeyPromptBehavior.always,
        afterSignUp: PasskeyPromptBehavior.never,
      );
      expect(prompts.isEnabledAfterSignIn, isTrue);
      expect(prompts.isEnabledAfterSignUp, isFalse);
    });
  });

  group('PasswordlessSettings', () {
    test('default constructor has all null fields', () {
      const settings = PasswordlessSettings();
      expect(settings.hiddenAuthMethods, isNull);
      expect(settings.preferredAuthMethod, isNull);
      expect(settings.passkeyRegistrationPrompts, isNull);
    });

    test('accepts passkey registration prompts configuration', () {
      const settings = PasswordlessSettings(
        passkeyRegistrationPrompts: PasskeyRegistrationPrompts.enabled(),
      );
      expect(settings.passkeyRegistrationPrompts, isNotNull);
      expect(settings.passkeyRegistrationPrompts!.isEnabledAfterSignIn, isTrue);
    });

    test('accepts all configuration options together', () {
      const settings = PasswordlessSettings(
        hiddenAuthMethods: [AuthFactorType.smsOtp],
        preferredAuthMethod: AuthFactorType.webAuthn,
        passkeyRegistrationPrompts: PasskeyRegistrationPrompts.disabled(),
      );
      expect(settings.hiddenAuthMethods, hasLength(1));
      expect(settings.preferredAuthMethod, AuthFactorType.webAuthn);
      expect(
        settings.passkeyRegistrationPrompts!.isEnabledAfterSignIn,
        isFalse,
      );
    });
  });

  group('PasskeyPromptBehavior', () {
    test('has two values: always and never', () {
      expect(PasskeyPromptBehavior.values, hasLength(2));
      expect(
        PasskeyPromptBehavior.values,
        contains(PasskeyPromptBehavior.always),
      );
      expect(
        PasskeyPromptBehavior.values,
        contains(PasskeyPromptBehavior.never),
      );
    });
  });
}
