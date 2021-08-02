import 'dart:async';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';

abstract class AuthService {
  Future<SignInResult> signIn(String username, String password);

  Future<void> signOut();

  Future<SignUpResult> signUp(
      String username, String password, Map<String, String> authAttributes);

  Future<SignUpResult> confirmSignUp(String username, String code);

  Future<AuthUser?> get currentUser;

  Future<bool> get isLoggedIn;

  Future<ResetPasswordResult> resetPassword(String username);

  Future<UpdatePasswordResult> confirmPassword(
      String username, String code, String newPassword);

  Future<void> confirmSignIn(
      {required String code, Map<String, String>? attributes});
}

class AmplifyAuthService implements AuthService {
  @override
  Future<SignInResult> signIn(String username, String password) async {
    //making sure no user is logged in before logging in a new user

    // if (await isLoggedIn) {
    //   await Amplify.Auth.signOut();
    // }

    final SignInResult result = await Amplify.Auth.signIn(
      username: username,
      password: password,
    );

    return result;
  }

  @override
  Future<SignUpResult> signUp(
      String username, String password, Map<String, String> attributes) async {
    return await Amplify.Auth.signUp(
      username: username,
      password: password,
      options: CognitoSignUpOptions(
        userAttributes: attributes,
      ),
    );
  }

  @override
  Future<SignUpResult> confirmSignUp(String username, String code) async {
    return await Amplify.Auth.confirmSignUp(
      username: username,
      confirmationCode: code,
    );
  }

  Future<void> confirmSignIn(
      {required String code, Map<String, String>? attributes}) async {
    await Amplify.Auth.confirmSignIn(
        confirmationValue: code,
        options: CognitoConfirmSignInOptions(userAttributes: attributes));
  }

  @override
  Future<void> signOut() {
    return Amplify.Auth.signOut();
  }

  @override
  Future<AuthUser?> get currentUser async {
    if (!Amplify.isConfigured) return null;

    if (!await isLoggedIn) {
      return null;
    }
    final user = await Amplify.Auth.getCurrentUser();

    return user;
  }

  @override
  Future<bool> get isLoggedIn async {
    try {
      final result = await Amplify.Auth.fetchAuthSession();

      return result.isSignedIn;
    } on SignedOutException {
      return false;
    }
  }

  @override
  Future<ResetPasswordResult> resetPassword(String username) async {
    return await Amplify.Auth.resetPassword(username: username);
  }

  @override
  Future<UpdatePasswordResult> confirmPassword(
      String username, String code, String newPassword) async {
    return await Amplify.Auth.confirmPassword(
        username: username, confirmationCode: code, newPassword: newPassword);
  }
}
