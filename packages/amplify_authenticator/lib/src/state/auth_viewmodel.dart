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

  //ignore:avoid_positional_boolean_parameters
  void setBusy(bool busy) {
    _isBusy = busy;
    notifyListeners();
  }

  // Form values

  String _username = '';
  String get username => _username;

  String _password = '';
  String get password => _password;

  String _passwordConfirmation = '';
  String _confirmationCode = '';
  String _newPassword = '';
  String _newUsername = '';

  final Map<CognitoUserAttributes, String> _authAttributes = {};

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

  void _setAttribute(CognitoUserAttributes attribute, String value) {
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

  void setCustom(String value, String type) {
    _setAttribute(CognitoUserAttributes.custom(type), value);
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

    authBloc.add(AuthConfirmSignIn(confirm));
    await Future.any([
      authBloc.exceptions.first,
      authBloc.stream.first,
    ]);
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

    await Future.any([
      authBloc.exceptions.first,
      authBloc.stream.first,
    ]);
    setBusy(false);
  }

  Future<void> signIn() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    AuthSignInData signIn = AuthSignInData(
      username: _username.trim(),
      password: _password.trim(),
    );
    authBloc.add(AuthSignIn(signIn));
    await Future.any([
      authBloc.exceptions.first,
      authBloc.stream.first,
    ]);
    setBusy(false);
  }

  Future<void> signOut() async {
    setBusy(true);
    authBloc.add(const AuthSignOut());
    await Future.any([
      authBloc.exceptions.first,
      authBloc.stream.first,
    ]);
    setBusy(false);
  }

  Future<void> sendCode() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    final sendCode = AuthSendCodeData(username: _newUsername.trim());
    authBloc.add(AuthSendCode(sendCode));
    await Future.any([
      authBloc.exceptions.first,
      authBloc.stream.firstWhere((state) => state is AuthFlow),
    ]);
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
    await Future.any([
      authBloc.exceptions.first,
      authBloc.stream.firstWhere((state) => state is AuthFlow),
    ]);
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
    await Future.any([
      authBloc.exceptions.first,
      authBloc.stream.first,
    ]);
    setBusy(false);
  }

  void _navigateTo(AuthScreen authScreen) {
    _clean();
    authBloc.add(AuthChangeScreen(authScreen));
  }

  void goToSignUp() => _navigateTo(AuthScreen.signup);
  void goToSignIn() => _navigateTo(AuthScreen.signin);
  void goToReset() => _navigateTo(AuthScreen.sendCode);

  void resendSignUpCode() {
    // TODO
    // authBloc.resendSignUpCode(username!);
  }

  void _clean() {
    _username = '';
    _password = '';
    _confirmationCode = '';
    _newUsername = '';
    _newPassword = '';

    _authAttributes.clear();
    _formKey = GlobalKey();
  }
}
