import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/utils/base_viewmodel.dart';
import 'package:flutter/material.dart';

class ConfirmSignUpViewModel extends BaseViewModel {
  ConfirmSignUpViewModel(this._authBloc);

  final StateMachineBloc _authBloc;

  final _formKey = GlobalKey<FormState>();

  GlobalKey<FormState> get formKey => _formKey;

  String? _username;

  String? _code;

  void setUsername(value) {
    _username = value;
  }

  void setCode(value) {
    _code = value;
  }

  Future<void> confirm() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    final confirmation =
        AuthConfirmSignUpData(code: _code!.trim(), username: _username!.trim());

    _authBloc.authEvent.add(AuthConfirmSignUp(confirmation));

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
    _username = null;
    _code = null;
  }
}
