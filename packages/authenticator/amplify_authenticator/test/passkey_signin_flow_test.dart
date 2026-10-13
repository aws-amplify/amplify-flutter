// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/state/auth_state.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

/// UI-02: Passkey sign-in ceremony flow state transition tests.
void main() {
  group('Passkey sign-in flow state transitions', () {
    test(
      'ContinueSignInWithFirstFactorSelection includes webAuthn as selectable factor',
      () {
        const state = ContinueSignInWithFirstFactorSelection(
          availableFactors: {AuthFactorType.password, AuthFactorType.webAuthn},
        );
        expect(state.availableFactors, contains(AuthFactorType.webAuthn));
        expect(
          state.step,
          AuthenticatorStep.continueSignInWithFirstFactorSelection,
        );
      },
    );

    test('AuthFactorType.webAuthn has correct JSON value', () {
      expect(AuthFactorType.webAuthn.value, 'WEB_AUTHN');
    });

    test('all five AuthFactorType values are available', () {
      expect(AuthFactorType.values, hasLength(5));
      expect(AuthFactorType.values, contains(AuthFactorType.password));
      expect(AuthFactorType.values, contains(AuthFactorType.passwordSrp));
      expect(AuthFactorType.values, contains(AuthFactorType.emailOtp));
      expect(AuthFactorType.values, contains(AuthFactorType.smsOtp));
      expect(AuthFactorType.values, contains(AuthFactorType.webAuthn));
    });

    test(
      'factor selection state with only webAuthn represents passkey-only flow',
      () {
        const state = ContinueSignInWithFirstFactorSelection(
          availableFactors: {AuthFactorType.webAuthn},
        );
        expect(state.availableFactors, hasLength(1));
        expect(state.availableFactors.first, AuthFactorType.webAuthn);
      },
    );

    test('factor selection state props include step and factors', () {
      const state = ContinueSignInWithFirstFactorSelection(
        availableFactors: {AuthFactorType.webAuthn, AuthFactorType.password},
      );
      expect(state.props, hasLength(2));
      expect(
        state.props[0],
        AuthenticatorStep.continueSignInWithFirstFactorSelection,
      );
      expect(state.props[1], isA<Set<AuthFactorType>>());
    });

    test(
      'PasswordlessSettings can specify preferred auth method as webAuthn',
      () {
        const settings = PasswordlessSettings(
          preferredAuthMethod: AuthFactorType.webAuthn,
        );
        expect(settings.preferredAuthMethod, AuthFactorType.webAuthn);
      },
    );

    test('PasswordlessSettings can hide specific auth methods', () {
      const settings = PasswordlessSettings(
        hiddenAuthMethods: [AuthFactorType.password, AuthFactorType.smsOtp],
      );
      expect(settings.hiddenAuthMethods, hasLength(2));
      expect(settings.hiddenAuthMethods, contains(AuthFactorType.password));
      expect(settings.hiddenAuthMethods, contains(AuthFactorType.smsOtp));
    });

    test('factor selection transitions from signIn step conceptually', () {
      // Verify that these are distinct steps in the auth flow
      const signInState = UnauthenticatedState.signIn;
      const factorSelectionState = ContinueSignInWithFirstFactorSelection(
        availableFactors: {AuthFactorType.webAuthn},
      );
      expect(signInState.step, isNot(equals(factorSelectionState.step)));
    });
  });
}
