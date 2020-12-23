/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:amplify_core_plugin_interface/amplify_core_plugin_interface.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final USERNAME = 'Tony';
  final PASSWORD = 'GreatPass33';
  final NEW_PASSWORD = 'NuPass99';
  final CONFIRMATION_CODE = 'ExcellentCode22';

  group('AuthCategory without selected plugin', () {
    final auth = AuthCategory();
    test('signUp throws', () {
      expect(() =>
        auth.signIn(username: USERNAME, password: PASSWORD),
        throwsA(noPluginError())
      );
    });
    test('confirmSignUp throws', () {
      expect(() =>
        auth.confirmSignUp(username: USERNAME, confirmationCode: CONFIRMATION_CODE),
        throwsA(noPluginError())
      );
    });
    test('resendSignUpCode throws', () {
      expect(() =>
        auth.resendSignUpCode(username: USERNAME),
        throwsA(noPluginError())
      );
    });
    test('signIn throws', () {
      expect(() =>
        auth.signIn(username: USERNAME, password: PASSWORD),
        throwsA(noPluginError())
      );
    });
    test('confirmSignIn throws', () {
      expect(() =>
        auth.confirmSignIn(confirmationValue: CONFIRMATION_CODE),
        throwsA(noPluginError())
      );
    });
    test('signOut throws', () {
      expect(() => auth.signOut(), throwsA(noPluginError()));
    });
    test('updatePassword throws', () {
      expect(() =>
        auth.updatePassword(newPassword: NEW_PASSWORD, oldPassword: PASSWORD),
        throwsA(noPluginError())
      );
    });
    test('resetPassword throws', () {
      expect(() =>
        auth.resetPassword(username: USERNAME),
        throwsA(noPluginError())
      );
    });
    test('confirmPassword throws', () {
      expect(() =>
        auth.confirmPassword(username: USERNAME, newPassword: NEW_PASSWORD, confirmationCode: CONFIRMATION_CODE),
        throwsA(noPluginError())
      );
    });
    test('getCurrentUser throws', () {
      expect(() => auth.getCurrentUser(), throwsA(noPluginError()));
    });
    test('fetchAuthSession throws', () {
      expect(() =>auth.fetchAuthSession(), throwsA(noPluginError()));
    });
  });

  group('AuthCategory with single plugin', () {
    AuthPluginInterface fakeAuthPlugin;
    AuthCategory auth;

    setUpAll(() {
      fakeAuthPlugin = FakeAuthPlugin();
      auth = AuthCategory();
      auth.addPlugin(fakeAuthPlugin);
    });
    test('signUp passes to plugin', () {
      final nextStep =
        AuthNextSignUpStep(codeDeliveryDetails: codeDeliveryDetails(), signUpStep: 'nextStep');
      final result = SignUpResult(isSignUpComplete: true, nextStep: nextStep);
      expect(
        auth.signUp(username: USERNAME, password: PASSWORD),
        completion(equals(result))
      );
    });
    test('confirmSignUp passes to plugin', () {
      final nextStep =
        AuthNextSignUpStep(codeDeliveryDetails: codeDeliveryDetails(), signUpStep: 'nextStep');
      final result = SignUpResult(isSignUpComplete: true, nextStep: nextStep);
      expect(
        auth.confirmSignUp(username: USERNAME, confirmationCode: CONFIRMATION_CODE),
        completion(equals(result))
      );
    });
    test('resendSignUpCode passes to plugin', () {
      final result = ResendSignUpCodeResult(codeDeliveryDetails: codeDeliveryDetails());
      expect(
        auth.resendSignUpCode(username: USERNAME),
        completion(equals(result))
      );
    });
    test('signIn passes to plugin', () {
      expect(
        auth.signIn(username: USERNAME, password: PASSWORD),
        completion(equals(SignInResult(isSignedIn: true)))
      );
    });
    test('confirmSignIn passes to plugin', () {
      expect(
        auth.confirmSignIn(confirmationValue: CONFIRMATION_CODE),
        completion(equals(SignInResult(isSignedIn: true)))
      );
    });
    test('signOut passes to plugin', () {
      expect(auth.signOut(), completion(equals(SignOutResult())));
    });
    test('updatePassword passes to plugin', () {
      expect(
        auth.updatePassword(newPassword: NEW_PASSWORD, oldPassword: PASSWORD),
        completion(equals(UpdatePasswordResult()))
      );
    });
    test('resetPassword passes to plugin', () {
      final nextStep = ResetPasswordStep(codeDeliveryDetails: codeDeliveryDetails(), updateStep: 'updateStep');
      expect(
        auth.resetPassword(username: USERNAME),
        completion(equals(ResetPasswordResult(isPasswordReset: true, nextStep: nextStep)))
      );
    });
    test('confirmPassword passes to plugin', () {
      expect(
        auth.confirmPassword(username: USERNAME, newPassword: NEW_PASSWORD, confirmationCode: CONFIRMATION_CODE),
        completion(equals(UpdatePasswordResult()))
      );
    });
    test('getCurrentUser passes to plugin', () {
      expect(
        auth.getCurrentUser(),
        completion(equals(AuthUser(userId: 'userId', username: 'username')))
      );
    });
    test('fetchAuthSession passes to plugin', () {
      expect(
        auth.fetchAuthSession(),
        completion(equals(AuthSession(isSignedIn: true)))
      );
    });
  });
}

Matcher noPluginError() {
  return predicate((e) {
    return e is String &&
      e == 'No Auth plugin is available. Did you add one?';
  });
}

class FakeAuthPlugin implements AuthPluginInterface {
  @override
  bool addPlugin(AuthPluginInterface configuration) {
    return true;
  }

  @override
  Future<UpdatePasswordResult> confirmPassword({ConfirmPasswordRequest request}) {
    return Future.value(UpdatePasswordResult());
  }

  @override
  Future<SignInResult> confirmSignIn({ConfirmSignInRequest request}) {
    return Future.value(SignInResult(isSignedIn: true));
  }

  @override
  Future<SignUpResult> confirmSignUp({ConfirmSignUpRequest request}) {
    final nextStep = AuthNextSignUpStep(codeDeliveryDetails: codeDeliveryDetails(), signUpStep: 'nextStep');
    return Future.value(SignUpResult(isSignUpComplete: true, nextStep: nextStep));
  }

  @override
  Future<AuthSession> fetchAuthSession({AuthSessionRequest request}) {
    return Future.value(AuthSession(isSignedIn: true));
  }

  @override
  Future<AuthUser> getCurrentUser({AuthUserRequest request}) {
    return Future.value(AuthUser(userId: 'userId', username: 'username'));
  }

  @override
  Future<ResendSignUpCodeResult> resendSignUpCode({ResendSignUpCodeRequest request}) {
    return Future.value(ResendSignUpCodeResult(codeDeliveryDetails: codeDeliveryDetails()));
  }

  @override
  Future<ResetPasswordResult> resetPassword({ResetPasswordRequest request}) {
    final nextStep = ResetPasswordStep(codeDeliveryDetails: codeDeliveryDetails(), updateStep: 'updateStep');
    return Future.value(ResetPasswordResult(isPasswordReset: true, nextStep: nextStep));
  }

  @override
  Future<SignInResult> signIn({SignInRequest request}) {
    return Future.value(SignInResult(isSignedIn: true));
  }

  @override
  Future<SignOutResult> signOut({SignOutRequest request}) {
    return Future.value(SignOutResult());
  }

  @override
  Future<SignUpResult> signUp({SignUpRequest request}) {
    final nextStep = AuthNextSignUpStep(codeDeliveryDetails: codeDeliveryDetails(), signUpStep: 'nextStep');
    return Future.value(SignUpResult(isSignUpComplete: true, nextStep: nextStep));
  }

  @override
  Future<UpdatePasswordResult> updatePassword({UpdatePasswordRequest request}) {
    return Future.value(UpdatePasswordResult());
  }
}

Map<String, dynamic> codeDeliveryDetails() {
  final codeDeliveryDetails = Map<String, dynamic>();
  codeDeliveryDetails['attributeName'] = 'attributeName';
  codeDeliveryDetails['deliveryMedium'] = 'deliveryMedium';
  codeDeliveryDetails['destination'] = 'destination';
  return codeDeliveryDetails;
}

