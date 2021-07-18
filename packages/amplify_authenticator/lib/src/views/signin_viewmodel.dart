import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/utils/base_viewmodel.dart';
import 'package:flutter/material.dart';

class SignInViewModel extends BaseViewModel {
  SignInViewModel(this._authBloc);

  final StateMachineBloc _authBloc;

  final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;
  String _username = "";
  String _password = "";

  void setUsername(value) {
    _username = value;
  }

  void setPassword(value) {
    _password = value;
  }

  // Auth calls
  Future<void> signIn() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    final singIn = AuthSignInData(
      username: _username.trim(),
      password: _password.trim(),
    );
    _authBloc.authEvent.add(AuthSignIn(singIn));
    await Future.any([
      _authBloc.exceptions.first,
      _authBloc.stream.first,
    ]);
    setBusy(false);
  }

  Future<void> signOut() async {
    setBusy(true);
    _authBloc.authEvent.add(AuthSignOut());
    setBusy(false);
  }

//Screen Change
  void goToSignUp() {
    clean();
    _authBloc.authEvent.add(const AuthChangeScreen(AuthScreen.signup));
  }

  void clean() {
    _username = "";
    _password = "";
  }
}
