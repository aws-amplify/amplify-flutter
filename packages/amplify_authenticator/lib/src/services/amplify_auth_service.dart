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

  Future<SignInResult> confirmSignIn(
      {required String code, Map<String, String>? attributes});

  Future<ResendSignUpCodeResult> resendSignUpCode(String username);

  Future<List<String>> getUnverifiedAttributeKeys();

  Future<ResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({required String userAttributeKey});

  Future<ConfirmUserAttributeResult> confirmUserAttribute({
    required String userAttributeKey,
    required String confirmationCode,
  });
}

class AmplifyAuthService implements AuthService {
  @override
  Future<SignInResult> signIn(String username, String password) async {
    final SignInResult result = await Amplify.Auth.signIn(
      username: username,
      password: password,
    );

    return result;
  }

  @override
  Future<ResendSignUpCodeResult> resendSignUpCode(String username) async {
    return await Amplify.Auth.resendSignUpCode(username: username);
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

  Future<SignInResult> confirmSignIn(
      {required String code, Map<String, String>? attributes}) async {
    return await Amplify.Auth.confirmSignIn(
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

  @override
  Future<ResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({required String userAttributeKey}) {
    return Amplify.Auth.resendUserAttributeConfirmationCode(
      userAttributeKey: userAttributeKey,
    );
  }

  @override
  Future<ConfirmUserAttributeResult> confirmUserAttribute({
    required String userAttributeKey,
    required String confirmationCode,
  }) {
    return Amplify.Auth.confirmUserAttribute(
      userAttributeKey: userAttributeKey,
      confirmationCode: confirmationCode,
    );
  }

  /// Get a list of the unverified attribute keys for the given user
  ///
  /// This is based off of `verifiedContact()` from amplify-js
  /// https://github.com/aws-amplify/amplify-js/blob/6de9a1d743deef8de5205590bf7cf8134a5fb5f4/packages/auth/src/Auth.ts#L1199-L1224
  @override
  Future<List<String>> getUnverifiedAttributeKeys() async {
    List<AuthUserAttribute> userAttributes =
        await Amplify.Auth.fetchUserAttributes();

    Map<String, AuthUserAttribute> userAttributeMap =
        <String, AuthUserAttribute>{
      for (AuthUserAttribute attr in userAttributes) attr.userAttributeKey: attr
    };

    // TODO: Use constants from #697 after feature branch has been updated with main
    AuthUserAttribute? emailAttribute = userAttributeMap['email'];
    AuthUserAttribute? emailVerifiedAttribute =
        userAttributeMap['email_verified'];
    AuthUserAttribute? phoneAttribute = userAttributeMap['phone_number'];
    AuthUserAttribute? phoneVerifiedAttribute =
        userAttributeMap['phone_number_verified'];

    bool hasEmail = emailAttribute is AuthUserAttribute;
    bool isEmailVerified = emailVerifiedAttribute is AuthUserAttribute &&
        emailVerifiedAttribute.value == 'true';
    bool hasPhone = phoneAttribute is AuthUserAttribute;
    bool isPhoneVerified = phoneVerifiedAttribute is AuthUserAttribute &&
        phoneVerifiedAttribute.value == 'true';

    List<String> unverifiedUserAttributes = [
      if (hasEmail && !isEmailVerified) emailAttribute.userAttributeKey,
      if (hasPhone && !isPhoneVerified) phoneAttribute.userAttributeKey,
    ];

    return unverifiedUserAttributes;
  }
}
