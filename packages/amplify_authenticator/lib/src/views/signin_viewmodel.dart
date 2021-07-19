import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/utils/base_viewmodel.dart';
import 'package:flutter/material.dart';

///Sign In View Model
class SignInViewModel extends BaseViewModel {
  ///Sign In View Model Constructor
  SignInViewModel(this._authBloc);

  final StateMachineBloc _authBloc;

  final _formKey = GlobalKey<FormState>();

  ///form key
  GlobalKey<FormState> get formKey => _formKey;
  String _username = "";
  String _password = "";

  ///username setter
  void setUsername(value) {
    _username = value;
  }

  /// password setter
  void setPassword(value) {
    _password = value;
  }

  // Auth calls

  ///sign in method
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

  /// sign out method
  Future<void> signOut() async {
    setBusy(true);
    _authBloc.authEvent.add(AuthSignOut());
    setBusy(false);
  }

//Screen Change

  /// go to sign up method
  void goToSignUp() {
    clean();
    _authBloc.authEvent.add(const AuthChangeScreen(AuthScreen.signup));
  }

  /// clean method
  void clean() {
    _username = "";
    _password = "";
  }
}
