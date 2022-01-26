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
import 'package:amplify_authenticator/src/utils/country_code.dart';
import 'package:flutter/material.dart';

@visibleForTesting
typedef BlocEventPredicate = bool Function(AuthState state);

/// State of the Amplify Authenticator.
///
/// Contains the form data for the Authenticator (username, password, etc.) as
/// well as methods to sign the user in or trasistion to a new Authentication State.
///
/// Intended to be used within custom UIs for the Amplify Authenticator.
class AuthenticatorState extends ChangeNotifier {
  AuthenticatorState(this._authBloc) {
    // Listen to step changes to know when to clear the form. Calling `clean`
    // from the forms' dispose method is unreliable since it may be called after
    // the transitioning form's first build is called.
    //
    // When auth flow is complete, reset entirety of the view model state.
    _authBloc.stream.distinct().listen((event) {
      _resetFormKey();
      resetCode();
      if (event is AuthenticatedState) {
        _resetAttributes();
      }
    });
  }

  GlobalKey<FormState> _formKey = GlobalKey();

  /// The key used for all Authenticator forms
  GlobalKey<FormState> get formKey => _formKey;

  final StateMachineBloc _authBloc;

  /// The current step of the authentication flow (signIn, signUp, confirmSignUp, etc.)
  AuthenticatorStep get currentStep {
    AuthState state = _authBloc.currentState;
    if (state is LoadingState) {
      return AuthenticatorStep.loading;
    } else if (state is UnauthenticatedState) {
      return state.step;
    } else {
      return AuthenticatorStep.signIn;
    }
  }

  /// Indicates if the form is currently in a loading state
  ///
  /// Will be set to true when an asynchrounous action (such as login) in
  /// initiated, and will be set to false when that asynchrounous action completes
  bool get isBusy => _isBusy;

  bool _isBusy = false;
  void _setIsBusy(bool busy) {
    _isBusy = busy;
    notifyListeners();
  }

  /// The value for the username form field
  ///
  /// This value will be used during sign up, sign in, or other actions
  /// that required the username
  String get username => _username;

  set username(String value) {
    _username = value;
    notifyListeners();
  }

  String _username = '';

  /// The value for the password form field
  ///
  /// This value will be used during sign up, sign in, or other actions
  /// that required the password
  String get password => _password;

  set password(String value) {
    _password = value;
    notifyListeners();
  }

  String _password = '';

  /// The value for the password confirmation form field
  ///
  /// This value will be used during sign up, or other actions
  /// that required the password confirmation
  String get passwordConfirmation => _passwordConfirmation;

  set passwordConfirmation(String value) {
    _passwordConfirmation = value;
    notifyListeners();
  }

  String _passwordConfirmation = '';

  String get confirmationCode => _confirmationCode;

  /// The value for the confirmation code form field
  ///
  /// This value will be used during confirm sign up, or other actions
  /// that required the confirmation code
  set confirmationCode(String value) {
    _confirmationCode = value;
    notifyListeners();
  }

  String _confirmationCode = '';

  /// The value for the new assword form field
  ///
  /// This value will be used during reset password, or other actions
  /// that required the password
  String get newPassword => _newPassword;

  set newPassword(String value) {
    _newPassword = value;
    notifyListeners();
  }

  String _newPassword = '';

  /// The value for the country code portion of the phone number field
  Country get country => _country;

  set country(Country newCountry) {
    final oldCountry = _country;
    final currentPhoneNumber =
        _authAttributes[CognitoUserAttributeKey.phoneNumber];
    if (currentPhoneNumber != null) {
      _authAttributes[CognitoUserAttributeKey.phoneNumber] =
          currentPhoneNumber.replaceFirst(
        oldCountry.value,
        newCountry.value,
      );
    }
    _country = newCountry;
    notifyListeners();
  }

  Country _country = countryCodes.first;

  final Map<CognitoUserAttributeKey, String> _authAttributes = {};

  // Returns the form field value for a User Attribute
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

  /// Complete MFA using the values for [confirmationCode],
  /// [rememberDevice], and any user attributes.
  Future<void> confirmSignInMFA() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _setIsBusy(true);
    var confirm = AuthConfirmSignInData(
      confirmationValue: _confirmationCode.trim(),
      attributes: _authAttributes,
    );

    _authBloc.add(AuthConfirmSignIn(confirm, rememberDevice: rememberDevice));
    await nextBlocEvent();
    _setIsBusy(false);
  }

  /// Complete the force password change with [newPassword]
  Future<void> confirmSignInNewPassword() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _setIsBusy(true);
    var confirm = AuthConfirmSignInData(
      confirmationValue: _newPassword.trim(),
      attributes: _authAttributes,
    );

    _authBloc.add(AuthConfirmSignIn(confirm, rememberDevice: rememberDevice));
    await nextBlocEvent();
    _setIsBusy(false);
  }

  /// Confirm sign up with [confirmationCode], [username], and [password]
  Future<void> confirmSignUp() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _setIsBusy(true);
    final confirmation = AuthConfirmSignUpData(
      code: _confirmationCode.trim(),
      username: _username.trim(),
      password: _password.trim(),
    );

    _authBloc.add(AuthConfirmSignUp(confirmation));
    await nextBlocEvent();
    _setIsBusy(false);
  }

  /// Sign in with [username], and [password]
  Future<void> signIn() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _setIsBusy(true);
    AuthSignInData signIn = AuthUsernamePasswordSignInData(
      username: _username.trim(),
      password: _password.trim(),
    );
    _authBloc.add(AuthSignIn(signIn));
    await nextBlocEvent();
    _setIsBusy(false);
  }

  /// Perform sicial sign in with the given provider
  Future<void> signInWithProvider(AuthProvider provider) async {
    _setIsBusy(true);
    final signInData = AuthSocialSignInData(provider: provider);
    _authBloc.add(AuthSignIn(signInData));
    await nextBlocEvent();
    _setIsBusy(false);
  }

  /// Sign out the currecnt user
  Future<void> signOut() async {
    _setIsBusy(true);
    _authBloc.add(const AuthSignOut());
    await nextBlocEvent();
    _setIsBusy(false);
  }

  /// Initiates the reset password process for the user with the given [username]
  Future<void> resetPassword() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _setIsBusy(true);
    final resetPasswordData = AuthResetPasswordData(username: _username.trim());
    _authBloc.add(AuthResetPassword(resetPasswordData));
    await nextBlocEvent(
      where: (state) => state is UnauthenticatedState,
    );
    _setIsBusy(false);
  }

  /// Completes the reset password process with [confirmationCode],
  /// [username], and [newPassword]
  Future<void> confirmResetPassword() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _setIsBusy(true);
    AuthConfirmResetPasswordData confirmResetPasswordData =
        AuthConfirmResetPasswordData(
      username: _username.trim(),
      confirmationCode: _confirmationCode.trim(),
      newPassword: _newPassword.trim(),
    );
    _authBloc.add(AuthConfirmResetPassword(confirmResetPasswordData));
    await nextBlocEvent(
      where: (state) => state is UnauthenticatedState,
    );
    _setIsBusy(false);
  }

  /// Sign up with [username], [password] and any user attributes
  Future<void> signUp() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _setIsBusy(true);

    final signUp = AuthSignUpData(
      username: _username.trim(),
      password: _password.trim(),
      attributes: _authAttributes,
    );

    _authBloc.add(AuthSignUp(signUp));
    await nextBlocEvent();
    _setIsBusy(false);
  }

  /// Resend sign up code for the user with the given [username]
  Future<void> resendSignUpCode() async {
    _authBloc.add(AuthResendSignUpCode(_username));
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
      where: (state) => state is! LoadingState,
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

  /// Change to a new step in the authentication flow
  void changeStep(AuthenticatorStep step, {bool resetAttributes = true}) {
    _authBloc.add(AuthChangeScreen(step));

    /// Clean [ViewModel] when user manually navigates widgets
    if (resetAttributes) _resetAttributes();
  }

  void _resetAttributes() {
    _username = '';
    _password = '';
    _passwordConfirmation = '';
    _confirmationCode = '';
    _newPassword = '';
    _authAttributes.clear();
  }

  void _resetFormKey() {
    _formKey = GlobalKey<FormState>();
  }

  void resetCode() {
    _confirmationCode = '';
  }
}
