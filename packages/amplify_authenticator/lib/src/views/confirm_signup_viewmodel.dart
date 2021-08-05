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
  late String username;

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
    //Uncomment this code when finding the error: for any reason this condition always
    //evaluates to true.

    // if (!_formKey.currentState!.validate()) {
    //   return;
    // }

    setBusy(true);
    final confirmation = AuthConfirmSignUpData(
        code: _code!.trim(),
        username: username.trim(),
        password: _password!.trim());

    _authBloc.authEvent.add(AuthConfirmSignUp(confirmation));

    await Future.any([
      _authBloc.exceptions.first,
      _authBloc.stream.first,
    ]);
    setBusy(false);
  }

  void resendSignUpCode() {
    _authBloc.resendSignUpCode(username);
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
