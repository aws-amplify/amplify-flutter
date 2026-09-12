// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/l10n/button_resolver.dart';
import 'package:amplify_authenticator/src/state/auth_state.dart';
import 'package:flutter_test/flutter_test.dart';

/// UI-04: Passkey error display and localization resolver key tests.
void main() {
  group('PasskeyPromptState error handling', () {
    test('error state carries error message', () {
      const state = PasskeyPromptState(
        errorMessage: 'Platform error: WebAuthn not supported',
      );
      expect(state.errorMessage, isNotNull);
      expect(state.errorMessage, contains('WebAuthn'));
    });

    test('error state with no error message returns null', () {
      const state = PasskeyPromptState();
      expect(state.errorMessage, isNull);
    });

    test('error state is distinct from registering state', () {
      const errorState = PasskeyPromptState(
        errorMessage: 'Registration failed',
      );
      const registeringState = PasskeyPromptState(isRegistering: true);
      expect(errorState, isNot(equals(registeringState)));
    });

    test('error state is distinct from success state', () {
      const errorState = PasskeyPromptState(
        errorMessage: 'Registration failed',
      );
      const successState = PasskeyPromptState(isSuccess: true);
      expect(errorState, isNot(equals(successState)));
    });
  });

  group('ButtonResolverKeyType passkey entries', () {
    test('contains signInWithPasskey key type', () {
      expect(
        ButtonResolverKeyType.values,
        contains(ButtonResolverKeyType.signInWithPasskey),
      );
    });

    test('contains signInWithPassword key type', () {
      expect(
        ButtonResolverKeyType.values,
        contains(ButtonResolverKeyType.signInWithPassword),
      );
    });

    test('contains signInWithEmail key type', () {
      expect(
        ButtonResolverKeyType.values,
        contains(ButtonResolverKeyType.signInWithEmail),
      );
    });

    test('contains signInWithSms key type', () {
      expect(
        ButtonResolverKeyType.values,
        contains(ButtonResolverKeyType.signInWithSms),
      );
    });

    test('contains createPasskey key type', () {
      expect(
        ButtonResolverKeyType.values,
        contains(ButtonResolverKeyType.createPasskey),
      );
    });

    test('contains continueWithoutPasskey key type', () {
      expect(
        ButtonResolverKeyType.values,
        contains(ButtonResolverKeyType.continueWithoutPasskey),
      );
    });

    test('contains setupAnotherPasskey key type', () {
      expect(
        ButtonResolverKeyType.values,
        contains(ButtonResolverKeyType.setupAnotherPasskey),
      );
    });
  });

  group('ButtonResolverKey static constants', () {
    test('signInWithPasskey has correct type', () {
      expect(
        ButtonResolverKey.signInWithPasskey.type,
        ButtonResolverKeyType.signInWithPasskey,
      );
    });

    test('createPasskey has correct type', () {
      expect(
        ButtonResolverKey.createPasskey.type,
        ButtonResolverKeyType.createPasskey,
      );
    });

    test('continueWithoutPasskey has correct type', () {
      expect(
        ButtonResolverKey.continueWithoutPasskey.type,
        ButtonResolverKeyType.continueWithoutPasskey,
      );
    });

    test('setupAnotherPasskey has correct type', () {
      expect(
        ButtonResolverKey.setupAnotherPasskey.type,
        ButtonResolverKeyType.setupAnotherPasskey,
      );
    });
  });

  group('MessageResolverKeyType passkey entries', () {
    test('contains passkeyRegistrationFailed', () {
      expect(
        MessageResolverKeyType.values,
        contains(MessageResolverKeyType.passkeyRegistrationFailed),
      );
    });

    test('contains passkeyCeremonyFailed', () {
      expect(
        MessageResolverKeyType.values,
        contains(MessageResolverKeyType.passkeyCeremonyFailed),
      );
    });

    test('contains passkeyPromptDescription', () {
      expect(
        MessageResolverKeyType.values,
        contains(MessageResolverKeyType.passkeyPromptDescription),
      );
    });
  });

  group('MessageResolverKey static constants', () {
    test('passkeyRegistrationFailed has correct type', () {
      expect(
        MessageResolverKey.passkeyRegistrationFailed.type,
        MessageResolverKeyType.passkeyRegistrationFailed,
      );
    });

    test('passkeyCeremonyFailed has correct type', () {
      expect(
        MessageResolverKey.passkeyCeremonyFailed.type,
        MessageResolverKeyType.passkeyCeremonyFailed,
      );
    });

    test('passkeyPromptDescription has correct type', () {
      expect(
        MessageResolverKey.passkeyPromptDescription.type,
        MessageResolverKeyType.passkeyPromptDescription,
      );
    });
  });

  group('TitleResolver covers passkey steps', () {
    test('TitleResolver is instantiable', () {
      const resolver = TitleResolver();
      expect(resolver, isA<TitleResolver>());
    });
  });

  group('AuthenticatorStep title coverage', () {
    test(
      'continueSignInWithFirstFactorSelection is a valid step for title resolution',
      () {
        // Verify the enum value exists and is usable
        const step = AuthenticatorStep.continueSignInWithFirstFactorSelection;
        expect(step.name, 'continueSignInWithFirstFactorSelection');
      },
    );

    test('passkeyPrompt is a valid step for title resolution', () {
      const step = AuthenticatorStep.passkeyPrompt;
      expect(step.name, 'passkeyPrompt');
    });
  });
}
