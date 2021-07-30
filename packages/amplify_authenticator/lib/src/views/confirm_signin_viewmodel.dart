import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/utils/base_viewmodel.dart';
import 'package:flutter/material.dart';

class ConfirmSignInViewModel extends BaseViewModel {
  ConfirmSignInViewModel(this._authBloc);

  final StateMachineBloc _authBloc;

  final _formKey = GlobalKey<FormState>();

  GlobalKey<FormState> get formKey => _formKey;

  String? _code;
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

  Map<String, String> authAttributes = {};

  void setCode(String value) {
    _code = value;
  }

  void setPassword(String value, String type) {
    _password = value;

//uncoment after verifing that the confirm sign in method
//takes a password attribute.

    // authAttributes[type] = _password!.trim();
  }

  void setAddress(String value, String type) {
    _address = value;

    authAttributes[type] = _address!.trim();
  }

  void setBirthdate(String value, String type) {
    _birthdate = value;
    authAttributes[type] = _birthdate!.trim();
  }

  void setEmail(String value, String type) {
    _email = value;
    authAttributes[type] = _email!.trim();
  }

  void setFamilyName(String value, String type) {
    _familyName = value;
    authAttributes[type] = _familyName!.trim();
  }

  void setGender(String value, String type) {
    _gender = value;
    authAttributes[type] = _gender!.trim();
  }

  void setGivenName(String value, String type) {
    _givenName = value;
    authAttributes[type] = _givenName!.trim();
  }

  void setLocale(String value, String type) {
    _locale = value;
    authAttributes[type] = _locale!.trim();
  }

  void setMiddleName(String value, String type) {
    _middleName = value;
    authAttributes[type] = _middleName!.trim();
  }

  void setName(String value, String type) {
    _name = value;
    authAttributes[type] = _name!.trim();
  }

  void setNickname(String value, String type) {
    _nickname = value;
    authAttributes[type] = _nickname!.trim();
  }

  void setPhoneNumber(String value, String type) {
    _phoneNumber = value;
    authAttributes[type] = _phoneNumber!.trim();
  }

  void setPicture(String value, String type) {
    _picture = value;
    authAttributes[type] = _picture!.trim();
  }

  void setPreferredUsername(String value, String type) {
    _preferredUsername = value;
    authAttributes[type] = _preferredUsername!.trim();
  }

  void setProfile(String value, String type) {
    _profile = value;
    authAttributes[type] = _profile!.trim();
  }

  void setZoneInfo(String value, String type) {
    _zoneInfo = value;
    authAttributes[type] = _zoneInfo!.trim();
  }

  void setUpdatedAt(String value, String type) {
    _updatedAt = value;
    authAttributes[type] = _updatedAt!.trim();
  }

  void setWebsite(String value, String type) {
    _website = value;
    authAttributes[type] = _website!.trim();
  }

  void setCustom(String value, String type) {
    _website = value;
    authAttributes[type] = _custom!.trim();
  }

  // Auth calls

  Future<void> confirm() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    AuthConfirmSignInData confirm =
        AuthConfirmSignInData(code: _code!.trim(), attributes: authAttributes);

    _authBloc.authEvent.add(AuthConfirmSignIn(confirm));
    await Future.any([
      _authBloc.exceptions.first,
      _authBloc.stream.first,
    ]);
    setBusy(false);
  }

  // Screens

  void goToSignIn() {
    clean();
    _authBloc.authEvent.add(const AuthChangeScreen(AuthScreen.signin));
  }

  void clean() {
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
