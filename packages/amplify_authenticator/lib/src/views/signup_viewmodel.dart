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

import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/models/authenticator_exceptions.dart';
import 'package:amplify_authenticator/src/utils/base_viewmodel.dart';
import 'package:flutter/material.dart';

class SignUpViewModel extends BaseViewModel {
  SignUpViewModel(this._authBloc);

  final StateMachineBloc _authBloc;

  final _formKey = GlobalKey<FormState>();

  GlobalKey<FormState> get formKey => _formKey;

  String? username;
  String? _password;
  String? _passwordConfirmation;
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

  void setUsername(String value) {
    username = value;
  }

  void setPassword(String value) {
    _password = value;
  }

  String? get password {
    return _password;
  }

  void setPasswordConfirmation(String value) {
    _passwordConfirmation = value;
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
    _custom = value;
    authAttributes[type] = _custom!.trim();
  }

  // Auth calls
  Future<void> signUp() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    if (username == null) {
      _authBloc.exceptionsSink
          .add(AuthenticatorException("No username form field found."));
      return;
    } else if (_password == null) {
      _authBloc.exceptionsSink
          .add(AuthenticatorException("No password form field found."));
      return;
    }
    ;
    final signUp = AuthSignUpData(
        username: username!.trim(),
        password: _password!.trim(),
        attributes: authAttributes);

    _authBloc.authEvent.add(AuthSignUp(signUp));
    await Future.any([
      _authBloc.exceptions.first,
      _authBloc.stream.firstWhere((state) => state is AuthFlow),
    ]);
    setBusy(false);
  }

  // Screens

  void goToSignIn() {
    clean();
    _authBloc.clearException();
    _authBloc.authEvent.add(const AuthChangeScreen(AuthScreen.signin));
  }

  void clean() {
    _password = null;
    _passwordConfirmation = null;
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
