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
import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:flutter/material.dart';

class AuthViewModel extends ChangeNotifier {
  AuthViewModel(this._authBloc) {
    // Listen to screen changes to know when to clear the form. Calling `clean`
    // from the forms' dispose method is unreliable since it may be called after
    // the transitioning form's first build is called.

    /// When transitioning through widgets as part of authflow, maintain [ViewModel] state except for form key

    /// When auth flow is complete, reset entirety of [ViewModel] state
    _authBloc.stream.distinct().listen((event) {
      resetFormKey();
      resetCode();
      if (event is Authenticated) {
        resetAttributes();
      }
    });
  }

  final StateMachineBloc _authBloc;
  StateMachineBloc get authBloc => _authBloc;

  GlobalKey<FormState> _formKey = GlobalKey();
  GlobalKey<FormState> get formKey => _formKey;

  bool _isBusy = false;
  bool get isBusy => _isBusy;

  Key? _busyButton;
  Key? get busyButton => _busyButton;

  //ignore:avoid_positional_boolean_parameters
  void setBusy(bool busy, [Key? busyButton]) {
    _isBusy = busy;
    _busyButton = busy ? busyButton : null;
    notifyListeners();
  }

  // Form values

  String _username = '';
  String get username => _username;

  String _password = '';
  String get password => _password;

  String _passwordConfirmation = '';
  String get passwordConfirmation => _passwordConfirmation;

  String _confirmationCode = '';
  String get confirmationCode => _confirmationCode;

  String _newPassword = '';
  String get newPassword => _newPassword;

  final Map<CognitoUserAttributeKey, String> _authAttributes = {};

  String? getAttribute(CognitoUserAttributeKey key) => _authAttributes[key];

  void setUsername(String value) {
    _username = value;
  }

  void setPassword(String value) {
    _password = value;
  }

  void setPasswordConfirmation(String passwordConfirmation) {
    _passwordConfirmation = passwordConfirmation;
  }

  void setConfirmationCode(String value) {
    _confirmationCode = value;
  }

  void setNewPassword(String newPassword) {
    _newPassword = newPassword;
  }

  bool _rememberDevice = false;
  bool get rememberDevice => _rememberDevice;

  CognitoUserAttributeKey _attributeKeyToVerify = CognitoUserAttributeKey.email;
  CognitoUserAttributeKey get attributeKeyToVerify => _attributeKeyToVerify;

  CognitoUserAttributeKey? _selectedUsername;
  CognitoUserAttributeKey? get selectedUsername => _selectedUsername;

  void _setAttribute(CognitoUserAttributeKey attribute, String value) {
    _authAttributes[attribute] = value.trim();
  }

  void setAddress(String address) {
    _setAttribute(CognitoUserAttributeKey.address, address);
  }

  void setBirthdate(String birthdate) {
    _setAttribute(CognitoUserAttributeKey.birthdate, birthdate);
  }

  void setEmail(String email) {
    _setAttribute(CognitoUserAttributeKey.email, email);
  }

  void setFamilyName(String familyName) {
    _setAttribute(CognitoUserAttributeKey.familyName, familyName);
  }

  void setGender(String gender) {
    _setAttribute(CognitoUserAttributeKey.gender, gender);
  }

  void setGivenName(String givenName) {
    _setAttribute(CognitoUserAttributeKey.givenName, givenName);
  }

  void setLocale(String locale) {
    _setAttribute(CognitoUserAttributeKey.locale, locale);
  }

  void setMiddleName(String middleName) {
    _setAttribute(CognitoUserAttributeKey.middleName, middleName);
  }

  void setName(String name) {
    _setAttribute(CognitoUserAttributeKey.name, name);
  }

  void setNickname(String nickname) {
    _setAttribute(CognitoUserAttributeKey.nickname, nickname);
  }

  void setPhoneNumber(String phoneNumber) {
    _setAttribute(CognitoUserAttributeKey.phoneNumber, phoneNumber);
  }

  void setPicture(String picture) {
    _setAttribute(CognitoUserAttributeKey.picture, picture);
  }

  void setPreferredUsername(String preferredUsername) {
    _setAttribute(
      CognitoUserAttributeKey.preferredUsername,
      preferredUsername,
    );
  }

  void setProfile(String profile) {
    _setAttribute(CognitoUserAttributeKey.profile, profile);
  }

  void setZoneInfo(String zoneInfo) {
    _setAttribute(CognitoUserAttributeKey.zoneinfo, zoneInfo);
  }

  void setUpdatedAt(String updatedAt) {
    _setAttribute(CognitoUserAttributeKey.updatedAt, updatedAt);
  }

  void setWebsite(String website) {
    _setAttribute(CognitoUserAttributeKey.website, website);
  }

  void setCustom(CognitoUserAttributeKey key, String value) {
    _setAttribute(key, value);
  }

  // ignore: avoid_positional_boolean_parameters
  void setRememberDevice(bool value) {
    _rememberDevice = value;
  }

  void setSelectedUsername(CognitoUserAttributeKey value) {
    _selectedUsername = value;
  }

  void setAttributeKeyToVerify(CognitoUserAttributeKey attributeKey) {
    _attributeKeyToVerify = attributeKey;
  }

  // Auth calls

  Future<void> confirmSignInMFA() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    var confirm = AuthConfirmSignInData(
      confirmationValue: _confirmationCode.trim(),
      attributes: _authAttributes,
    );

    authBloc.add(AuthConfirmSignIn(confirm, rememberDevice: rememberDevice));
    await _nextBlocEvent();
    setBusy(false);
  }

  Future<void> confirmSignInNewPassword() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    var confirm = AuthConfirmSignInData(
      confirmationValue: _newPassword.trim(),
      attributes: _authAttributes,
    );

    authBloc.add(AuthConfirmSignIn(confirm, rememberDevice: rememberDevice));
    await _nextBlocEvent();
    setBusy(false);
  }

  Future<void> confirm() async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    setBusy(true);
    final confirmation = AuthConfirmSignUpData(
      code: _confirmationCode.trim(),
      username: _username.trim(),
      password: _password.trim(),
    );

    authBloc.add(AuthConfirmSignUp(confirmation));
    await _nextBlocEvent();
    setBusy(false);
  }

  Future<void> signIn() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    AuthSignInData signIn = AuthUsernamePasswordSignInData(
      username: _username.trim(),
      password: _password.trim(),
    );
    authBloc.add(AuthSignIn(signIn));
    await _nextBlocEvent();
    setBusy(false);
  }

  Future<void> signInWithProvider(AuthProvider provider) async {
    setBusy(true);
    final signInData = AuthSocialSignInData(provider: provider);
    authBloc.add(AuthSignIn(signInData));
    await _nextBlocEvent();
    setBusy(false);
  }

  Future<void> signOut() async {
    setBusy(true);
    authBloc.add(const AuthSignOut());
    await _nextBlocEvent();
    setBusy(false);
  }

  Future<void> sendCode() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    final sendCode = AuthSendCodeData(username: _username.trim());
    authBloc.add(AuthSendCode(sendCode));
    await _nextBlocEvent(
      where: (state) => state is AuthFlow,
    );
    setBusy(false);
  }

  Future<void> confirmPassword() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    AuthConfirmPasswordData confirmPassword = AuthConfirmPasswordData(
      username: _username.trim(),
      confirmationCode: _confirmationCode.trim(),
      newPassword: _newPassword.trim(),
    );
    authBloc.add(AuthConfirmPassword(confirmPassword));
    await _nextBlocEvent(
      where: (state) => state is AuthFlow,
    );
    setBusy(false);
  }

  Future<void> signUp() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);

    String username;
    if (_selectedUsername == CognitoUserAttributeKey.email) {
      username = _authAttributes[CognitoUserAttributeKey.email]!;
    } else if (_selectedUsername == CognitoUserAttributeKey.phoneNumber) {
      username = _authAttributes[CognitoUserAttributeKey.phoneNumber]!;
    } else {
      username = _username;
    }

    setUsername(username);

    final signUp = AuthSignUpData(
      username: username.trim(),
      password: _password.trim(),
      attributes: _authAttributes,
    );

    authBloc.add(AuthSignUp(signUp));
    await _nextBlocEvent();
    setBusy(false);
  }

  Future<void> resendSignUpCode() async {
    authBloc.add(AuthResendSignUpCode(_username));
    await _nextBlocEvent(
      where: (state) => state is VerificationCodeSent,
    );
  }

  Future<void> confirmVerifyUser(
      CognitoUserAttributeKey userAttributeKey) async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    AuthConfirmVerifyUserData authConfirmVerifyUserData =
        AuthConfirmVerifyUserData(
      userAttributeKey: userAttributeKey,
      code: _confirmationCode,
    );
    _authBloc.add(AuthConfirmVerifyUser(authConfirmVerifyUserData));
    await _nextBlocEvent(
      where: (state) => state is AuthFlow || state is Authenticated,
    );
    setBusy(false);
  }

  Future<void> verifyUser() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    AuthVerifyUserData authVerifyUserData = AuthVerifyUserData(
      userAttributeKey: attributeKeyToVerify,
    );

    _authBloc.add(AuthVerifyUser(authVerifyUserData));
    await _nextBlocEvent(
      where: (state) => state is AuthFlow || state is Authenticated,
    );
    setBusy(false);
  }

  void skipVerifyUser() {
    _authBloc.add(const AuthSkipVerifyUser());
  }

  Future<void> _nextBlocEvent({bool Function(AuthState state)? where}) async {
    await Future.any([
      _authBloc.exceptions.first,

      // Bloc emits current state first
      _authBloc.stream
          .skip(1)
          .firstWhere((state) => where?.call(state) ?? true),
    ]);
  }

  void _navigateTo(AuthScreen authScreen) {
    authBloc.add(AuthChangeScreen(authScreen));

    /// Clean [ViewModel] when user manually navigates widgets
    resetAttributes();
  }

  void goToSignUp() => _navigateTo(AuthScreen.signup);
  void goToSignIn() => _navigateTo(AuthScreen.signin);
  void goToReset() => _navigateTo(AuthScreen.sendCode);

  void resetAttributes() {
    _username = '';
    _password = '';
    _passwordConfirmation = '';
    _confirmationCode = '';
    _newPassword = '';
    _selectedUsername = null;
    _authAttributes.clear();
  }

  void resetFormKey() {
    _formKey = GlobalKey<FormState>();
  }

  void resetCode() {
    _confirmationCode = '';
  }
}
