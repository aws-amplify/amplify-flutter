import 'dart:async';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';

abstract class AuthService {
  Future signIn(String username, String password);
  Future<void> signOut();
  Future<void> signUp(
      String username, String password, Map<String, String> authAttributes);
  Future<void> confirmSignUp(String username, String code);
  Future get currentUser;
  Future<bool> get isLoggedIn;
}

class AmplifyAuthService implements AuthService {
  @override
  Future signIn(String username, String password) async {
    final user = await currentUser;
    if (user != null) {
      return user;
    }

    final result = await Amplify.Auth.signIn(
      username: username,
      password: password,
    );

    if (!result.isSignedIn) {
      throw const AuthException('Could not sign in');
    }
    return (await currentUser);
  }

  @override
  Future<void> signUp(
      String username, String password, Map<String, String> attributes) async {
    await Amplify.Auth.signUp(
      username: username,
      password: password,
      options: CognitoSignUpOptions(
        userAttributes: attributes,
      ),
    );
  }

  @override
  Future<void> confirmSignUp(String username, String code) async {
    final result = await Amplify.Auth.confirmSignUp(
      username: username,
      confirmationCode: code,
    );
    if (!result.isSignUpComplete) {
      throw const AuthException();
    }
  }

  Future<void> confirmSignIn(String username, String code) async {
    final result = await Amplify.Auth.confirmSignIn(
        confirmationValue: code,
        options: CognitoConfirmSignInOptions(userAttributes: {}));
  }

  @override
  Future<void> signOut() {
    return Amplify.Auth.signOut();
  }

  @override
  Future get currentUser async {
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
}

class AuthException implements Exception {
  final String message;

  const AuthException([this.message = 'An unknown error occurred.']);

  @override
  String toString() => 'AuthException{ message: "$message" }';
}
