import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/utils/base_viewmodel.dart';
import 'package:flutter/material.dart';

///Sign Up View Modell
class SignUpViewModel extends BaseViewModel {
  ///sign up view model constructor
  SignUpViewModel(this._authBloc);

  final StateMachineBloc _authBloc;

  final _formKey = GlobalKey<FormState>();

  /// form key getter
  GlobalKey<FormState> get formKey => _formKey;

  String _username = "";
  String _password = "";
  String _address = "";
  String _birthdate = "";
  String _email = "";
  String _familyName = "";
  String _gender = "";
  String _givenName = "";
  String _locale = "";
  String _middleName = "";
  String _name = "";
  String _nickname = "";
  String _phoneNumber = "";
  String _picture = "";
  String _preferredUsername = "";
  String _profile = "";
  String _zoneInfo = "";
  String _updatedAt = "";
  String _website = "";

  /// attributes
  Map<String, String> authAttributes = {};

  ///username setter
  void setUsername(value) {
    _username = value;
  }

  ///password setter
  void setPassword(value) {
    _password = value;
  }

  /// address setter
  void setAddress(value) {
    _address = value;

    authAttributes["address"] = _address.trim();
  }

  /// birthdate setter
  void setBirthdate(value) {
    _birthdate = value;
    authAttributes["birthdate"] = _birthdate.trim();
  }

  ///email setter
  void setEmail(value) {
    _email = value;
    authAttributes["email"] = _email.trim();
  }

  ///family name setter
  void setFamilyName(value) {
    _familyName = value;
    authAttributes["family_name"] = _familyName.trim();
  }

  ///gender setter
  void setGender(value) {
    _gender = value;
    authAttributes["gender"] = _gender.trim();
  }

  ///given name setter
  void setGivenName(value) {
    _givenName = value;
    authAttributes["given_name"] = _givenName.trim();
  }

  ///locale setter
  void setLocale(value) {
    _locale = value;
    authAttributes["locale"] = _locale.trim();
  }

  ///middle name setter
  void setMiddleName(value) {
    _middleName = value;
    authAttributes["middle_name"] = _middleName.trim();
  }

  ///name setter
  void setName(value) {
    _name = value;
    authAttributes["name"] = _name.trim();
  }

  ///nickname setter
  void setNickname(value) {
    _nickname = value;
    authAttributes["nickname"] = _nickname.trim();
  }

  ///phone number setter
  void setPhoneNumber(value) {
    _phoneNumber = value;
    authAttributes["phone_number"] = _phoneNumber.trim();
  }

  /// picture setter
  void setPicture(value) {
    _picture = value;
    authAttributes["picture"] = _picture.trim();
  }

  ///preferred username setter
  void setPreferredUsername(value) {
    _preferredUsername = value;
    authAttributes["preferred_username"] = _preferredUsername.trim();
  }

  ///profile setter
  void setProfile(value) {
    _profile = value;
    authAttributes["profile"] = _profile.trim();
  }

  /// zone info setter
  void setZoneInfo(value) {
    _zoneInfo = value;
    authAttributes["zoneinfo"] = _zoneInfo.trim();
  }

  /// update at setter
  void setUpdatedAt(value) {
    _updatedAt = value;
    authAttributes["update_at"] = _updatedAt.trim();
  }

  /// website setter
  void setWebsite(value) {
    _website = value;
    authAttributes["website"] = _website.trim();
  }

  // Auth calls

  /// Sign up method
  Future<void> signUp() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    final signUp = AuthSignUpData(
        username: _username.trim(),
        password: _password.trim(),
        attributes: authAttributes);
    print(authAttributes);
    _authBloc.authEvent.add(AuthSignUp(signUp));
    await Future.any([
      _authBloc.exceptions.first,
      _authBloc.stream.first,
    ]);
    setBusy(false);
  }

  // Screen change

  /// go to sign in method
  void goToSignIn() {
    clean();
    _authBloc.authEvent.add(const AuthChangeScreen(AuthScreen.signin));
  }

  /// clean method
  void clean() {
    _username = "";
    _password = "";
    _address = "";
    _birthdate = "";
    _email = "";
    _familyName = "";
    _gender = "";
    _givenName = "";
    _locale = "";
    _middleName = "";
    _name = "";
    _nickname = "";
    _phoneNumber = "";
    _picture = "";
    _preferredUsername = "";
    _profile = "";
    _zoneInfo = "";
    _updatedAt = "";
    _website = "";
  }
}
