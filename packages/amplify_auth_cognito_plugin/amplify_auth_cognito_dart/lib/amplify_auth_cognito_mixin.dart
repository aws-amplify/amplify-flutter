import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

mixin AmplifyAuthCognitoDartMixin implements AuthCategoryInterface {
  @override
  Future<void> addPlugin() async {
    print('dart add plugin');
  }

  @override
  Future<CognitoSignUpResult> signUp({required SignUpRequest request}) async {
    return CognitoSignUpResult(
        nextStep: AuthNextSignUpStep(signUpStep: 'DONE'),
        isSignUpComplete: true);
  }

  @override
  Future<UpdatePasswordResult> confirmResetPassword(
      {ConfirmResetPasswordRequest? request}) {
    // TODO: implement confirmResetPassword
    throw UnimplementedError();
  }

  @override
  Future<SignInResult> confirmSignIn({required ConfirmSignInRequest request}) {
    // TODO: implement confirmSignIn
    throw UnimplementedError();
  }

  @override
  Future<SignUpResult> confirmSignUp({required ConfirmSignUpRequest request}) {
    // TODO: implement confirmSignUp
    throw UnimplementedError();
  }

  @override
  Future<ConfirmUserAttributeResult> confirmUserAttribute(
      {ConfirmUserAttributeRequest? request}) {
    // TODO: implement confirmUserAttribute
    throw UnimplementedError();
  }

  @override
  Future<void> deleteUser() {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<AuthSession> fetchAuthSession({AuthSessionRequest? request}) {
    // TODO: implement fetchAuthSession
    throw UnimplementedError();
  }

  @override
  Future<List<CognitoDevice>> fetchDevices() {
    // TODO: implement fetchDevices
    throw UnimplementedError();
  }

  @override
  Future<List<AuthUserAttribute>> fetchUserAttributes(
      {FetchUserAttributesRequest? request}) {
    // TODO: implement fetchUserAttributes
    throw UnimplementedError();
  }

  @override
  Future<void> forgetDevice([AuthDevice? device]) {
    // TODO: implement forgetDevice
    throw UnimplementedError();
  }

  @override
  Future<AuthUser> getCurrentUser({AuthUserRequest? request}) {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<void> rememberDevice() {
    // TODO: implement rememberDevice
    throw UnimplementedError();
  }

  @override
  Future<ResendSignUpCodeResult> resendSignUpCode(
      {required ResendSignUpCodeRequest request}) {
    // TODO: implement resendSignUpCode
    throw UnimplementedError();
  }

  @override
  Future<ResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode(
          {ResendUserAttributeConfirmationCodeRequest? request}) {
    // TODO: implement resendUserAttributeConfirmationCode
    throw UnimplementedError();
  }

  @override
  Future<ResetPasswordResult> resetPassword({ResetPasswordRequest? request}) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  Future<SignInResult> signIn({required SignInRequest request}) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<SignInResult> signInWithWebUI({SignInWithWebUIRequest? request}) {
    // TODO: implement signInWithWebUI
    throw UnimplementedError();
  }

  @override
  Future<SignOutResult> signOut({SignOutRequest? request}) {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  // TODO: implement streamController
  StreamController<AuthHubEvent> get streamController =>
      throw UnimplementedError();

  @override
  Future<UpdatePasswordResult> updatePassword(
      {UpdatePasswordRequest? request}) {
    // TODO: implement updatePassword
    throw UnimplementedError();
  }

  @override
  Future<UpdateUserAttributeResult> updateUserAttribute(
      {UpdateUserAttributeRequest? request}) {
    // TODO: implement updateUserAttribute
    throw UnimplementedError();
  }

  @override
  Future<Map<UserAttributeKey, UpdateUserAttributeResult>> updateUserAttributes(
      {required UpdateUserAttributesRequest request}) {
    // TODO: implement updateUserAttributes
    throw UnimplementedError();
  }
}
