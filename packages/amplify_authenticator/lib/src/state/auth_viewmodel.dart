/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:flutter/material.dart';

@visibleForTesting
typedef BlocEventPredicate = bool Function(AuthenticatorState state);

class AuthViewModel extends ChangeNotifier {
  AuthViewModel(this._authBloc) {
    // Listen to screen changes to know when to clear the form. Calling `clean`
    // from the forms' dispose method is unreliable since it may be called after
    // the transitioning form's first build is called.
    //
    // When auth flow is complete, reset entirety of the view model state.
    _authBloc.stream.distinct().listen((event) {
      resetFormKey();
      resetCode();
      if (event is AuthenticatedState) {
        _resetAttributes();
      }
    });
  }

  final StateMachineBloc _authBloc;
  StateMachineBloc get authBloc => _authBloc;

  GlobalKey<FormState> _formKey = GlobalKey();
  GlobalKey<FormState> get formKey => _formKey;

  bool _isBusy = false;
  bool get isBusy => _isBusy;

  void _setIsBusy(bool busy) {
    _isBusy = busy;
    notifyListeners();
  }

  // Form values

  String _username = '';
  String get username => _username;

  set username(String value) {
    _username = value;
    notifyListeners();
  }

  String _password = '';
  String get password => _password;

  set password(String value) {
    _password = value;
    notifyListeners();
  }

  String _passwordConfirmation = '';
  String get passwordConfirmation => _passwordConfirmation;

  set passwordConfirmation(String value) {
    _passwordConfirmation = value;
    notifyListeners();
  }

  String _confirmationCode = '';
  String get confirmationCode => _confirmationCode;

  set confirmationCode(String value) {
    _confirmationCode = value;
    notifyListeners();
  }

  String _newPassword = '';
  String get newPassword => _newPassword;

  set newPassword(String value) {
    _newPassword = value;
    notifyListeners();
  }

  final Map<CognitoUserAttributeKey, String> _authAttributes = {};

  String? getAttribute(CognitoUserAttributeKey key) => _authAttributes[key];

  void _setAttribute(CognitoUserAttributeKey attribute, String value) {
    _authAttributes[attribute] = value.trim();
    notifyListeners();
  }

  set address(String address) {
    _setAttribute(CognitoUserAttributeKey.address, address);
  }

  set birthdate(String birthdate) {
    _setAttribute(CognitoUserAttributeKey.birthdate, birthdate);
  }

  set email(String email) {
    _setAttribute(CognitoUserAttributeKey.email, email);
  }

  set familyName(String familyName) {
    _setAttribute(CognitoUserAttributeKey.familyName, familyName);
  }

  set gender(String gender) {
    _setAttribute(CognitoUserAttributeKey.gender, gender);
  }

  set givenName(String givenName) {
    _setAttribute(CognitoUserAttributeKey.givenName, givenName);
  }

  set locale(String locale) {
    _setAttribute(CognitoUserAttributeKey.locale, locale);
  }

  set middleName(String middleName) {
    _setAttribute(CognitoUserAttributeKey.middleName, middleName);
  }

  set name(String name) {
    _setAttribute(CognitoUserAttributeKey.name, name);
  }

  set nickname(String nickname) {
    _setAttribute(CognitoUserAttributeKey.nickname, nickname);
  }

  set phoneNumber(String phoneNumber) {
    _setAttribute(CognitoUserAttributeKey.phoneNumber, phoneNumber);
  }

  set picture(String picture) {
    _setAttribute(CognitoUserAttributeKey.picture, picture);
  }

  set preferredUsername(String preferredUsername) {
    _setAttribute(
      CognitoUserAttributeKey.preferredUsername,
      preferredUsername,
    );
  }

  set profile(String profile) {
    _setAttribute(CognitoUserAttributeKey.profile, profile);
  }

  set zoneInfo(String zoneInfo) {
    _setAttribute(CognitoUserAttributeKey.zoneinfo, zoneInfo);
  }

  set updatedAt(String updatedAt) {
    _setAttribute(CognitoUserAttributeKey.updatedAt, updatedAt);
  }

  set website(String website) {
    _setAttribute(CognitoUserAttributeKey.website, website);
  }

  void setCustomAttribute(CognitoUserAttributeKey key, String value) {
    _setAttribute(key, value);
  }

  bool _rememberDevice = false;
  bool get rememberDevice => _rememberDevice;
  set rememberDevice(bool value) {
    _rememberDevice = value;
    notifyListeners();
  }

  CognitoUserAttributeKey _attributeKeyToVerify = CognitoUserAttributeKey.email;
  CognitoUserAttributeKey get attributeKeyToVerify => _attributeKeyToVerify;

  set attributeKeyToVerify(CognitoUserAttributeKey attributeKey) {
    _attributeKeyToVerify = attributeKey;
    notifyListeners();
  }

  // Auth calls

  Future<void> confirmSignInMFA() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    _setIsBusy(true);
    var confirm = AuthConfirmSignInData(
      confirmationValue: _confirmationCode.trim(),
      attributes: _authAttributes,
    );

    authBloc.add(AuthConfirmSignIn(confirm, rememberDevice: rememberDevice));
    await nextBlocEvent();
    _setIsBusy(false);
  }

  Future<void> confirmSignInNewPassword() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    _setIsBusy(true);
    var confirm = AuthConfirmSignInData(
      confirmationValue: _newPassword.trim(),
      attributes: _authAttributes,
    );

    authBloc.add(AuthConfirmSignIn(confirm, rememberDevice: rememberDevice));
    await nextBlocEvent();
    _setIsBusy(false);
  }

  Future<void> confirm() async {
    // if (!formKey.currentState!.validate()) {
    //   return;
    // }

    _setIsBusy(true);
    final confirmation = AuthConfirmSignUpData(
      code: _confirmationCode.trim(),
      username: _username.trim(),
      password: _password.trim(),
    );

    authBloc.add(AuthConfirmSignUp(confirmation));
    await nextBlocEvent();
    _setIsBusy(false);
  }

  Future<void> signIn() async {
    // if (!formKey.currentState!.validate()) {
    //   return;
    // }
    _setIsBusy(true);
    AuthSignInData signIn = AuthUsernamePasswordSignInData(
      username: _username.trim(),
      password: _password.trim(),
    );
    authBloc.add(AuthSignIn(signIn));
    await nextBlocEvent();
    _setIsBusy(false);
  }

  Future<void> signInWithProvider(AuthProvider provider) async {
    _setIsBusy(true);
    final signInData = AuthSocialSignInData(provider: provider);
    authBloc.add(AuthSignIn(signInData));
    await nextBlocEvent();
    _setIsBusy(false);
  }

  Future<void> signOut() async {
    _setIsBusy(true);
    authBloc.add(const AuthSignOut());
    await nextBlocEvent();
    _setIsBusy(false);
  }

  Future<void> resetPassword() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    _setIsBusy(true);
    final resetPasswordData = AuthResetPasswordData(username: _username.trim());
    authBloc.add(AuthResetPassword(resetPasswordData));
    await nextBlocEvent(
      where: (state) => state is UnauthenticatedState,
    );
    _setIsBusy(false);
  }

  Future<void> confirmResetPassword() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    _setIsBusy(true);
    AuthConfirmResetPasswordData confirmResetPasswordData =
        AuthConfirmResetPasswordData(
      username: _username.trim(),
      confirmationCode: _confirmationCode.trim(),
      newPassword: _newPassword.trim(),
    );
    authBloc.add(AuthConfirmResetPassword(confirmResetPasswordData));
    await nextBlocEvent(
      where: (state) => state is UnauthenticatedState,
    );
    _setIsBusy(false);
  }

  Future<void> signUp() async {
    // if (!formKey.currentState!.validate()) {
    //   return;
    // }
    _setIsBusy(true);

    final signUp = AuthSignUpData(
      username: _username.trim(),
      password: _password.trim(),
      attributes: _authAttributes,
    );

    authBloc.add(AuthSignUp(signUp));
    await nextBlocEvent();
    _setIsBusy(false);
  }

  Future<void> resendSignUpCode() async {
    authBloc.add(AuthResendSignUpCode(_username));
    await nextBlocEvent();
  }

  Future<void> confirmVerifyUser(
      CognitoUserAttributeKey userAttributeKey) async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _setIsBusy(true);
    AuthConfirmVerifyUserData authConfirmVerifyUserData =
        AuthConfirmVerifyUserData(
      userAttributeKey: userAttributeKey,
      code: _confirmationCode,
    );
    _authBloc.add(AuthConfirmVerifyUser(authConfirmVerifyUserData));
    await nextBlocEvent(
      where: (state) =>
          state is UnauthenticatedState || state is AuthenticatedState,
    );
    _setIsBusy(false);
  }

  Future<void> verifyUser() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _setIsBusy(true);
    AuthVerifyUserData authVerifyUserData = AuthVerifyUserData(
      userAttributeKey: attributeKeyToVerify,
    );

    _authBloc.add(AuthVerifyUser(authVerifyUserData));
    await nextBlocEvent(
      where: (state) => !state.isLoading,
    );
    _setIsBusy(false);
  }

  void skipVerifyUser() {
    _authBloc.add(const AuthSkipVerifyUser());
  }

  @visibleForTesting
  Future<void> nextBlocEvent({BlocEventPredicate? where}) async {
    await Future.any([
      _authBloc.exceptions.first,

      // Bloc emits current state first
      _authBloc.stream
          .skip(1)
          .firstWhere((state) => where?.call(state) ?? true),
    ]);
  }

  void navigateTo(AuthScreen authScreen, {bool resetAttributes = true}) {
    authBloc.add(AuthChangeScreen(authScreen));

    /// Clean [ViewModel] when user manually navigates widgets
    if (resetAttributes) _resetAttributes();
  }

  void goToSignUp() => navigateTo(AuthScreen.signup);
  void goToSignIn() => navigateTo(AuthScreen.signin);
  void goToResetPassword() => navigateTo(AuthScreen.resetPassword);

  void _resetAttributes() {
    _username = '';
    _password = '';
    _passwordConfirmation = '';
    _confirmationCode = '';
    _newPassword = '';
    _authAttributes.clear();
  }

  void resetFormKey() {
    _formKey = GlobalKey<FormState>();
  }

  void resetCode() {
    _confirmationCode = '';
  }
}
