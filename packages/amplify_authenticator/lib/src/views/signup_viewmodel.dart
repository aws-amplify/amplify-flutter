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

  String? _username;
  String? _password;
  String? _address;
  String? _birthdate;
  String? _email;
  String? _familyName;
  String? _gender;
  String? _givenName;
  String? _locale;
  String? _middleName;
  String? _name;
  String? _nickname;
  String? _phoneNumber;
  String? _picture;
  String? _preferredUsername;
  String? _profile;
  String? _zoneInfo;
  String? _updatedAt;
  String? _website;
  String? _custom;

  /// attributes
  Map<String, String> authAttributes = {};

  ///username setter
  void setUsername(value) {
    print(value);
    _username = value;
  }

  ///password setter
  void setPassword(value) {
    _password = value;
  }

  /// address setter
  void setAddress(value, type) {
    _address = value;

    authAttributes[type] = _address!.trim();
  }

  /// birthdate setter
  void setBirthdate(value, type) {
    _birthdate = value;
    authAttributes[type] = _birthdate!.trim();
  }

  ///email setter
  void setEmail(value, type) {
    _email = value;
    authAttributes[type] = _email!.trim();
  }

  ///family name setter
  void setFamilyName(value, type) {
    _familyName = value;
    authAttributes[type] = _familyName!.trim();
  }

  ///gender setter
  void setGender(value, type) {
    _gender = value;
    authAttributes[type] = _gender!.trim();
  }

  ///given name setter
  void setGivenName(value, type) {
    _givenName = value;
    authAttributes[type] = _givenName!.trim();
  }

  ///locale setter
  void setLocale(value, type) {
    _locale = value;
    authAttributes[type] = _locale!.trim();
  }

  ///middle name setter
  void setMiddleName(value, type) {
    _middleName = value;
    authAttributes[type] = _middleName!.trim();
  }

  ///name setter
  void setName(value, type) {
    _name = value;
    authAttributes[type] = _name!.trim();
  }

  ///nickname setter
  void setNickname(value, type) {
    _nickname = value;
    authAttributes[type] = _nickname!.trim();
  }

  ///phone number setter
  void setPhoneNumber(value, type) {
    _phoneNumber = value;
    authAttributes[type] = _phoneNumber!.trim();
  }

  /// picture setter
  void setPicture(value, type) {
    _picture = value;
    authAttributes[type] = _picture!.trim();
  }

  ///preferred username setter
  void setPreferredUsername(value, type) {
    _preferredUsername = value;
    authAttributes[type] = _preferredUsername!.trim();
  }

  ///profile setter
  void setProfile(value, type) {
    _profile = value;
    authAttributes[type] = _profile!.trim();
  }

  /// zone info setter
  void setZoneInfo(value, type) {
    _zoneInfo = value;
    authAttributes[type] = _zoneInfo!.trim();
  }

  /// update at setter
  void setUpdatedAt(value, type) {
    _updatedAt = value;
    authAttributes[type] = _updatedAt!.trim();
  }

  /// website setter
  void setWebsite(value, type) {
    _website = value;
    authAttributes[type] = _website!.trim();
  }

  /// custom setter
  void setCustom(value, type) {
    _website = value;
    authAttributes[type] = _custom!.trim();
  }

  // Auth calls

  /// Sign up method
  Future<void> signUp() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    final signUp = AuthSignUpData(
        username: _username!.trim(),
        password: _password!.trim(),
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
    _username = null;
    _password = null;
    _address = null;
    _birthdate = null;
    _email = null;
    _familyName = null;
    _gender = null;
    _givenName = null;
    _locale = null;
    _middleName = null;
    _name = null;
    _nickname = null;
    _phoneNumber = null;
    _picture = null;
    _preferredUsername = null;
    _profile = null;
    _zoneInfo = null;
    _updatedAt = null;
    _website = null;
  }
}
