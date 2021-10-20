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
import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:flutter/material.dart';

class AuthViewModel extends ChangeNotifier {
  AuthViewModel(this._authBloc);

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

  String _newUsername = '';
  String get newUsername => _newUsername;

  final Map<String, String> _authAttributes = {};

  String? getAttribute(String key) => _authAttributes[key];

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

  void setNewUsername(String newUsername) {
    _newUsername = newUsername;
  }

  void setNewPassword(String newPassword) {
    _newPassword = newPassword;
  }

  bool _rememberDevice = false;
  bool get rememberDevice => _rememberDevice;

  void _setAttribute(String attribute, String value) {
    _authAttributes[attribute] = value.trim();
  }

  void setAddress(String address) {
    _setAttribute(CognitoUserAttributes.address, address);
  }

  void setBirthdate(String birthdate) {
    _setAttribute(CognitoUserAttributes.birthdate, birthdate);
  }

  void setEmail(String email) {
    _setAttribute(CognitoUserAttributes.email, email);
  }

  void setFamilyName(String familyName) {
    _setAttribute(CognitoUserAttributes.familyName, familyName);
  }

  void setGender(String gender) {
    _setAttribute(CognitoUserAttributes.gender, gender);
  }

  void setGivenName(String givenName) {
    _setAttribute(CognitoUserAttributes.givenName, givenName);
  }

  void setLocale(String locale) {
    _setAttribute(CognitoUserAttributes.locale, locale);
  }

  void setMiddleName(String middleName) {
    _setAttribute(CognitoUserAttributes.middleName, middleName);
  }

  void setName(String name) {
    _setAttribute(CognitoUserAttributes.name, name);
  }

  void setNickname(String nickname) {
    _setAttribute(CognitoUserAttributes.nickname, nickname);
  }

  void setPhoneNumber(String phoneNumber) {
    _setAttribute(CognitoUserAttributes.phoneNumber, phoneNumber);
  }

  void setPicture(String picture) {
    _setAttribute(CognitoUserAttributes.picture, picture);
  }

  void setPreferredUsername(String preferredUsername) {
    _setAttribute(
      CognitoUserAttributes.preferredUsername,
      preferredUsername,
    );
  }

  void setProfile(String profile) {
    _setAttribute(CognitoUserAttributes.profile, profile);
  }

  void setZoneInfo(String zoneInfo) {
    _setAttribute(CognitoUserAttributes.zoneinfo, zoneInfo);
  }

  void setUpdatedAt(String updatedAt) {
    _setAttribute(CognitoUserAttributes.updatedAt, updatedAt);
  }

  void setWebsite(String website) {
    _setAttribute(CognitoUserAttributes.website, website);
  }

  void setCustom(String key, String value) {
    _setAttribute('custom:$key', value);
  }

  // ignore: avoid_positional_boolean_parameters
  void setRememberDevice(bool value) {
    _rememberDevice = value;
  }

  // Auth calls

  Future<void> confirmSignIn() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    var confirm = AuthConfirmSignInData(
      code: _confirmationCode.trim(),
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
    final sendCode = AuthSendCodeData(username: _newUsername.trim());
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
      username: _newUsername.trim(),
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
    final signUp = AuthSignUpData(
      username: _username.trim(),
      password: _password.trim(),
      attributes: _authAttributes,
    );

    authBloc.add(AuthSignUp(signUp));
    await _nextBlocEvent();
    setBusy(false);
  }

  Future<void> resendSignUpCode() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    authBloc.add(AuthResendSignUpCode(_username));
    await _nextBlocEvent(
      where: (state) => state is VerificationCodeSent,
    );
    setBusy(false);
  }

  Future<void> confirmVerifyUser(String userAttributeKey) async {
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

  Future<void> verifyUser(String userAttributeKey) async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    AuthVerifyUserData authVerifyUserData = AuthVerifyUserData(
      userAttributeKey: userAttributeKey,
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
  }

  void goToSignUp() => _navigateTo(AuthScreen.signup);
  void goToSignIn() => _navigateTo(AuthScreen.signin);
  void goToReset() => _navigateTo(AuthScreen.sendCode);

  void clean() {
    _username = '';
    _password = '';
    _passwordConfirmation = '';
    _confirmationCode = '';
    _newUsername = '';
    _newPassword = '';

    _authAttributes.clear();
    _formKey = GlobalKey<FormState>();
  }
}
