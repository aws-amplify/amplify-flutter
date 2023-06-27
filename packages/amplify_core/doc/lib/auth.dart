// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Code excerpts for the Auth category.
library auth;

// #docregion imports
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
// #enddocregion imports

const username = '';

// #docregion get-plugin
Future<CognitoSignInResult> signInWithCognito(
  String username,
  String password,
) async {
  final cognitoPlugin = Amplify.Auth.getPlugin(
    AmplifyAuthCognito.pluginKey,
  );
  return cognitoPlugin.signIn(username: username, password: password);
}
// #enddocregion get-plugin

// #docregion handle-code
void _handleCodeDelivery(AuthCodeDeliveryDetails codeDeliveryDetails) {
  safePrint(
    'A confirmation code has been sent to ${codeDeliveryDetails.destination}. '
    'Please check your ${codeDeliveryDetails.deliveryMedium.name} for the code.',
  );
}
// #enddocregion handle-code

// #docregion handle-signup
Future<void> _handleSignUpResult(SignUpResult result) async {
  switch (result.nextStep.signUpStep) {
    case AuthSignUpStep.confirmSignUp:
      final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
      _handleCodeDelivery(codeDeliveryDetails);
    case AuthSignUpStep.done:
      safePrint('Sign up is complete');
  }
}
// #enddocregion handle-signup

// #docregion signup
/// Signs a user up with a username, password, and email. The required
/// attributes may be different depending on your app's configuration.
Future<void> signUpUser({
  required String username,
  required String password,
  required String email,
  String? phoneNumber,
}) async {
  try {
    final userAttributes = {
      AuthUserAttributeKey.email: email,
      if (phoneNumber != null) AuthUserAttributeKey.phoneNumber: phoneNumber,
      // additional attributes as needed
    };
    final result = await Amplify.Auth.signUp(
      username: username,
      password: password,
      options: SignUpOptions(
        userAttributes: userAttributes,
      ),
    );
    return _handleSignUpResult(result);
  } on AuthException catch (e) {
    safePrint('Error signing up user: ${e.message}');
  }
}
// #enddocregion signup

// #docregion confirm-signup
Future<void> confirmUser({
  required String username,
  required String confirmationCode,
}) async {
  try {
    final result = await Amplify.Auth.confirmSignUp(
      username: username,
      confirmationCode: confirmationCode,
    );
    return _handleSignUpResult(result);
  } on AuthException catch (e) {
    safePrint('Error confirming user: ${e.message}');
  }
}
// #enddocregion confirm-signup

// #docregion resend-signup-code
Future<void> resendSignUpCode(String username) async {
  try {
    final result = await Amplify.Auth.resendSignUpCode(
      username: username,
    );
    final codeDeliveryDetails = result.codeDeliveryDetails;
    _handleCodeDelivery(codeDeliveryDetails);
  } on AuthException catch (e) {
    safePrint('Error resending code: ${e.message}');
  }
}
// #enddocregion resend-signup-code

// #docregion handle-signin, handle-confirm-signin-sms, handle-confirm-signin-new-password, handle-confirm-signin-custom-challenge, handle-confirm-signin-reset-password, handle-confirm-signin-confirm-signup, handle-confirm-signin-done
Future<void> _handleSignInResult(SignInResult result) async {
  switch (result.nextStep.signInStep) {
    // #enddocregion handle-signin, handle-confirm-signin-sms, handle-confirm-signin-new-password, handle-confirm-signin-custom-challenge, handle-confirm-signin-reset-password, handle-confirm-signin-confirm-signup, handle-confirm-signin-done
    // #docregion handle-confirm-signin-sms
    case AuthSignInStep.confirmSignInWithSmsMfaCode:
      final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
      _handleCodeDelivery(codeDeliveryDetails);
    // #enddocregion handle-confirm-signin-sms
    // #docregion handle-confirm-signin-new-password
    case AuthSignInStep.confirmSignInWithNewPassword:
      safePrint('Enter a new password to continue signing in');
    // #enddocregion handle-confirm-signin-new-password
    // #docregion handle-confirm-signin-custom-challenge
    case AuthSignInStep.confirmSignInWithCustomChallenge:
      final parameters = result.nextStep.additionalInfo;
      final prompt = parameters['prompt']!;
      safePrint(prompt);
    // #enddocregion handle-confirm-signin-custom-challenge
    // #docregion handle-confirm-signin-reset-password
    case AuthSignInStep.resetPassword:
      final resetResult = await Amplify.Auth.resetPassword(
        username: username,
      );
      await _handleResetPasswordResult(resetResult);
    // #enddocregion handle-confirm-signin-reset-password
    // #docregion handle-confirm-signin-confirm-signup
    case AuthSignInStep.confirmSignUp:
      // Resend the sign up code to the registered device.
      final resendResult = await Amplify.Auth.resendSignUpCode(
        username: username,
      );
      _handleCodeDelivery(resendResult.codeDeliveryDetails);
    // #enddocregion handle-confirm-signin-confirm-signup
    // #docregion handle-confirm-signin-done
    case AuthSignInStep.done:
      safePrint('Sign in is complete');
    // #enddocregion handle-confirm-signin-done
    // #docregion handle-signin, handle-confirm-signin-sms, handle-confirm-signin-new-password, handle-confirm-signin-custom-challenge, handle-confirm-signin-reset-password, handle-confirm-signin-confirm-signup, handle-confirm-signin-done
  }
}
// #enddocregion handle-signin, handle-confirm-signin-sms, handle-confirm-signin-new-password, handle-confirm-signin-custom-challenge, handle-confirm-signin-reset-password, handle-confirm-signin-confirm-signup, handle-confirm-signin-done

// #docregion signin
Future<void> signInUser(String username, String password) async {
  try {
    final result = await Amplify.Auth.signIn(
      username: username,
      password: password,
    );
    return _handleSignInResult(result);
  } on AuthException catch (e) {
    safePrint('Error signing in: ${e.message}');
  }
}
// #enddocregion signin

// #docregion signin-webui
Future<void> socialSignIn() async {
  try {
    final result = await Amplify.Auth.signInWithWebUI(
      provider: AuthProvider.google,
    );
    return _handleSignInResult(result);
  } on AuthException catch (e) {
    safePrint('Error signing in: ${e.message}');
  }
}
// #enddocregion signin-webui

// #docregion handle-reset-password
Future<void> _handleResetPasswordResult(ResetPasswordResult result) async {
  switch (result.nextStep.updateStep) {
    case AuthResetPasswordStep.confirmResetPasswordWithCode:
      final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
      _handleCodeDelivery(codeDeliveryDetails);
    case AuthResetPasswordStep.done:
      safePrint('Successfully reset password');
  }
}
// #enddocregion handle-reset-password

// #docregion confirm-signin
Future<void> confirmMfaUser(String mfaCode) async {
  try {
    final result = await Amplify.Auth.confirmSignIn(
      confirmationValue: mfaCode,
    );
    return _handleSignInResult(result);
  } on AuthException catch (e) {
    safePrint('Error confirming MFA code: ${e.message}');
  }
}
// #enddocregion confirm-signin

// #docregion signout
Future<void> signOutCurrentUser() async {
  final result = await Amplify.Auth.signOut();
  if (result is CognitoCompleteSignOut) {
    safePrint('Sign out completed successfully');
  } else if (result is CognitoFailedSignOut) {
    safePrint('Error signing user out: ${result.exception.message}');
  }
}
// #enddocregion signout

// #docregion signout-globally
Future<void> signOutGlobally() async {
  final result = await Amplify.Auth.signOut(
    options: const SignOutOptions(globalSignOut: true),
  );
  if (result is CognitoCompleteSignOut) {
    safePrint('Sign out completed successfully');
  } else if (result is CognitoPartialSignOut) {
    final globalSignOutException = result.globalSignOutException!;
    final accessToken = globalSignOutException.accessToken;
    // Retry the global sign out using the access token, if desired
    // ...
    safePrint('Error signing user out: ${globalSignOutException.message}');
  } else if (result is CognitoFailedSignOut) {
    safePrint('Error signing user out: ${result.exception.message}');
  }
}
// #enddocregion signout-globally

// #docregion update-password
Future<void> updatePassword({
  required String oldPassword,
  required String newPassword,
}) async {
  try {
    await Amplify.Auth.updatePassword(
      oldPassword: oldPassword,
      newPassword: newPassword,
    );
  } on AmplifyException catch (e) {
    safePrint('Error updating password: ${e.message}');
  }
}
// #enddocregion update-password

// #docregion reset-password
Future<void> resetPassword(String username) async {
  try {
    final result = await Amplify.Auth.resetPassword(
      username: username,
    );
    return _handleResetPasswordResult(result);
  } on AuthException catch (e) {
    safePrint('Error resetting password: ${e.message}');
  }
}
// #enddocregion reset-password

// #docregion confirm-reset-password
Future<void> confirmResetPassword({
  required String username,
  required String newPassword,
  required String confirmationCode,
}) async {
  try {
    final result = await Amplify.Auth.confirmResetPassword(
      username: username,
      newPassword: newPassword,
      confirmationCode: confirmationCode,
    );
    safePrint('Password reset complete: ${result.isPasswordReset}');
  } on AuthException catch (e) {
    safePrint('Error resetting password: ${e.message}');
  }
}
// #enddocregion confirm-reset-password

// #docregion get-current-user
Future<String?> getCurrentUserId() async {
  try {
    final user = await Amplify.Auth.getCurrentUser();
    return user.userId;
  } on AuthException catch (e) {
    safePrint('Could not retrieve current user: ${e.message}');
    return null;
  }
}
// #enddocregion get-current-user

// #docregion fetch-auth-session
Future<void> fetchAuthSession() async {
  try {
    final result = await Amplify.Auth.fetchAuthSession();
    safePrint('User is signed in: ${result.isSignedIn}');
  } on AuthException catch (e) {
    safePrint('Error retrieving auth session: ${e.message}');
  }
}
// #enddocregion fetch-auth-session

// #docregion fetch-cognito-auth-session
Future<void> fetchCognitoAuthSession() async {
  try {
    final cognitoPlugin = Amplify.Auth.getPlugin(AmplifyAuthCognito.pluginKey);
    final result = await cognitoPlugin.fetchAuthSession();
    final identityId = result.identityIdResult.value;
    safePrint("Current user's identity ID: $identityId");
  } on AuthException catch (e) {
    safePrint('Error retrieving auth session: ${e.message}');
  }
}
// #enddocregion fetch-cognito-auth-session

// #docregion fetch-user-attributes
Future<void> fetchCurrentUserAttributes() async {
  try {
    final result = await Amplify.Auth.fetchUserAttributes();
    for (final element in result) {
      safePrint('key: ${element.userAttributeKey}; value: ${element.value}');
    }
  } on AuthException catch (e) {
    safePrint('Error fetching user attributes: ${e.message}');
  }
}
// #enddocregion fetch-user-attributes

// #docregion handle-update-user-attribute
void _handleUpdateUserAttributeResult(
  UpdateUserAttributeResult result,
) {
  switch (result.nextStep.updateAttributeStep) {
    case AuthUpdateAttributeStep.confirmAttributeWithCode:
      final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
      _handleCodeDelivery(codeDeliveryDetails);
    case AuthUpdateAttributeStep.done:
      safePrint('Successfully updated attribute');
  }
}
// #enddocregion handle-update-user-attribute

// #docregion update-user-attribute
Future<void> updateUserEmail({
  required String newEmail,
}) async {
  try {
    final result = await Amplify.Auth.updateUserAttribute(
      userAttributeKey: AuthUserAttributeKey.email,
      value: newEmail,
    );
    return _handleUpdateUserAttributeResult(result);
  } on AuthException catch (e) {
    safePrint('Error updating user attribute: ${e.message}');
  }
}
// #enddocregion update-user-attribute

// #docregion update-user-attributes
Future<void> updateUserAttributes() async {
  const attributes = [
    AuthUserAttribute(
      userAttributeKey: AuthUserAttributeKey.email,
      value: 'email@email.com',
    ),
    AuthUserAttribute(
      userAttributeKey: AuthUserAttributeKey.familyName,
      value: 'MyFamilyName',
    ),
  ];
  try {
    final result = await Amplify.Auth.updateUserAttributes(
      attributes: attributes,
    );
    result.forEach((key, value) {
      switch (value.nextStep.updateAttributeStep) {
        case AuthUpdateAttributeStep.confirmAttributeWithCode:
          final destination = value.nextStep.codeDeliveryDetails?.destination;
          safePrint('Confirmation code sent to $destination for $key');
        case AuthUpdateAttributeStep.done:
          safePrint('Update completed for $key');
      }
    });
  } on AuthException catch (e) {
    safePrint('Error updating user attributes: ${e.message}');
  }
}
// #enddocregion update-user-attributes

// #docregion confirm-user-attribute
Future<void> verifyAttributeUpdate() async {
  try {
    await Amplify.Auth.confirmUserAttribute(
      userAttributeKey: AuthUserAttributeKey.email,
      confirmationCode: '390739',
    );
  } on AuthException catch (e) {
    safePrint('Error confirming attribute update: ${e.message}');
  }
}
// #enddocregion confirm-user-attribute

// #docregion resend-user-attribute-code
Future<void> resendVerificationCode() async {
  try {
    final result = await Amplify.Auth.resendUserAttributeConfirmationCode(
      userAttributeKey: AuthUserAttributeKey.email,
    );
    _handleCodeDelivery(result.codeDeliveryDetails);
  } on AuthException catch (e) {
    safePrint('Error resending code: ${e.message}');
  }
}
// #enddocregion resend-user-attribute-code

// #docregion remember-device
Future<void> rememberCurrentDevice() async {
  try {
    await Amplify.Auth.rememberDevice();
    safePrint('Remember device succeeded');
  } on AuthException catch (e) {
    safePrint('Remember device failed with error: $e');
  }
}
// #enddocregion remember-device

// #docregion forget-device
Future<void> forgetCurrentDevice() async {
  try {
    await Amplify.Auth.forgetDevice();
    safePrint('Forget device succeeded');
  } on AuthException catch (e) {
    safePrint('Forget device failed with error: $e');
  }
}
// #enddocregion forget-device

// #docregion forget-specific-device
Future<void> forgetSpecificDevice(AuthDevice myDevice) async {
  try {
    await Amplify.Auth.forgetDevice(myDevice);
    safePrint('Forget device succeeded');
  } on AuthException catch (e) {
    safePrint('Forget device failed with error: $e');
  }
}
// #enddocregion forget-specific-device

// #docregion fetch-devices
Future<void> fetchAllDevices() async {
  try {
    final devices = await Amplify.Auth.fetchDevices();
    for (final device in devices) {
      safePrint('Device: $device');
    }
  } on AuthException catch (e) {
    safePrint('Fetch devices failed with error: $e');
  }
}
// #enddocregion fetch-devices

// #docregion delete-user
Future<void> deleteUser() async {
  try {
    await Amplify.Auth.deleteUser();
    safePrint('Delete user succeeded');
  } on AuthException catch (e) {
    safePrint('Delete user failed with error: $e');
  }
}
// #enddocregion delete-user
