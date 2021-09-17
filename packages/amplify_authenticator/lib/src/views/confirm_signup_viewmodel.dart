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
import 'package:amplify_authenticator/src/utils/base_viewmodel.dart';
import 'package:flutter/material.dart';

class ConfirmSignUpViewModel extends BaseViewModel {
  ConfirmSignUpViewModel(this._authBloc);

  final StateMachineBloc _authBloc;

  final _formKey = GlobalKey<FormState>();

  GlobalKey<FormState> get formKey => _formKey;

  //This variable is public because is used to set a default hint text
  //in the confirm sign up username form field.
  String? username;

  String? _code;

  String? _password;

  void setUsername(String value) {
    username = value;
  }

  void setCode(String value) {
    _code = value;
  }

  void setPassword(String value) {
    _password = value;
  }

  Future<void> confirm() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setBusy(true);
    final confirmation = AuthConfirmSignUpData(
        code: _code!.trim(),
        username: username!.trim(),
        password: _password!.trim());

    _authBloc.authEvent.add(AuthConfirmSignUp(confirmation));

    await Future.any([
      _authBloc.exceptions.first,
      _authBloc.stream
          .firstWhere((state) => state is AuthFlow || state is Authenticated),
    ]);
    setBusy(false);
  }

  void resendSignUpCode() {
    _authBloc.resendSignUpCode(username!);
  }

  // Screens

  void goToSignIn() {
    clean();
    _authBloc.clearException();
    _authBloc.authEvent.add(const AuthChangeScreen(AuthScreen.signin));
  }

  void clean() {
    _code = null;
  }
}
