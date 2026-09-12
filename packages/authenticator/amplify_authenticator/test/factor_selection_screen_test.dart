// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/state/auth_state.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

/// UI-01: Factor selection screen state and configuration tests.
void main() {
  group('ContinueSignInWithFirstFactorSelection', () {
    test('default constructor creates state with empty factors', () {
      const state = ContinueSignInWithFirstFactorSelection();
      expect(state.availableFactors, isEmpty);
    });

    test('constructor accepts a set of available factors', () {
      const state = ContinueSignInWithFirstFactorSelection(
        availableFactors: {
          AuthFactorType.password,
          AuthFactorType.webAuthn,
          AuthFactorType.emailOtp,
        },
      );
      expect(state.availableFactors, hasLength(3));
      expect(state.availableFactors, contains(AuthFactorType.password));
      expect(state.availableFactors, contains(AuthFactorType.webAuthn));
      expect(state.availableFactors, contains(AuthFactorType.emailOtp));
    });

    test('step is continueSignInWithFirstFactorSelection', () {
      const state = ContinueSignInWithFirstFactorSelection();
      expect(
        state.step,
        AuthenticatorStep.continueSignInWithFirstFactorSelection,
      );
    });

    test('equality holds for states with same factors', () {
      const state1 = ContinueSignInWithFirstFactorSelection(
        availableFactors: {AuthFactorType.webAuthn},
      );
      const state2 = ContinueSignInWithFirstFactorSelection(
        availableFactors: {AuthFactorType.webAuthn},
      );
      expect(state1, equals(state2));
    });

    test('inequality for states with different factors', () {
      const state1 = ContinueSignInWithFirstFactorSelection(
        availableFactors: {AuthFactorType.webAuthn},
      );
      const state2 = ContinueSignInWithFirstFactorSelection(
        availableFactors: {AuthFactorType.password},
      );
      expect(state1, isNot(equals(state2)));
    });

    test('runtimeTypeName returns correct value', () {
      const state = ContinueSignInWithFirstFactorSelection();
      expect(state.runtimeTypeName, 'ContinueSignInWithFirstFactorSelection');
    });

    test('is a subclass of UnauthenticatedState', () {
      const state = ContinueSignInWithFirstFactorSelection();
      expect(state, isA<UnauthenticatedState>());
    });

    test('webAuthn factor type can represent passkey selection', () {
      const state = ContinueSignInWithFirstFactorSelection(
        availableFactors: {
          AuthFactorType.password,
          AuthFactorType.webAuthn,
          AuthFactorType.smsOtp,
        },
      );
      final hasPasskey = state.availableFactors.contains(
        AuthFactorType.webAuthn,
      );
      expect(hasPasskey, isTrue);
    });
  });

  group('AuthenticatorStep enum', () {
    test('contains continueSignInWithFirstFactorSelection value', () {
      expect(
        AuthenticatorStep.values,
        contains(AuthenticatorStep.continueSignInWithFirstFactorSelection),
      );
    });

    test('contains passkeyPrompt value', () {
      expect(
        AuthenticatorStep.values,
        contains(AuthenticatorStep.passkeyPrompt),
      );
    });
  });
}
