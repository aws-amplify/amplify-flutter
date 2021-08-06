import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/utils/base_viewmodel.dart';
import 'package:flutter/material.dart';

class SignInViewModel extends BaseViewModel {
  SignInViewModel(this._authBloc);

  final StateMachineBloc _authBloc;

  final _formKey = GlobalKey<FormState>();

  GlobalKey<FormState> get formKey => _formKey;
  String? _username;
  String? _password;
  String? _confirmationCode;
  String? _newPassword;
  String? _newUsername;

// This new username is being used to send a code to reset
// a user's password in the SendCodeScreen. Using _username was
// refering to the same instance of SignInFormField in the SignInScreen.
  void setNewUsername(String value) {
    _newUsername = value;
  }

  void setUsername(String value) {
    _username = value;
  }

  void setPassword(String value) {
    _password = value;
  }

  void setConfirmationCode(String value) {
    _confirmationCode = value;
  }

  void setNewPassword(String value) {
    _newPassword = value;
  }
  // Auth calls

  Future<void> signIn() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    AuthSignInData singIn = AuthSignInData(
      username: _username!.trim(),
      password: _password!.trim(),
    );
    _authBloc.authEvent.add(AuthSignIn(singIn));
    await Future.any([
      _authBloc.exceptions.first,
      _authBloc.stream
          .firstWhere((state) => state is AuthFlow || state is Authenticated),
    ]);
    setBusy(false);
  }

  Future<void> signOut() async {
    setBusy(true);
    _authBloc.authEvent.add(const AuthSignOut());
    await Future.any([
      _authBloc.exceptions.first,
      _authBloc.stream.firstWhere((state) => state is AuthFlow),
    ]);
    setBusy(false);
  }

  Future<void> sendCode() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    AuthSendCodeData sendCode =
        AuthSendCodeData(username: _newUsername!.trim());
    _authBloc.authEvent.add(AuthSendCode(sendCode));
    await Future.any([
      _authBloc.exceptions.first,
      _authBloc.stream.firstWhere((state) => state is AuthFlow),
    ]);
    setBusy(false);
  }

  Future<void> confirmPassword() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    AuthConfirmPasswordData confirmPassword = AuthConfirmPasswordData(
        username: _newUsername!.trim(),
        confirmationCode: _confirmationCode!.trim(),
        newPassword: _newPassword!.trim());
    _authBloc.authEvent.add(AuthConfirmPassword(confirmPassword));
    await Future.any([
      _authBloc.exceptions.first,
      _authBloc.stream.firstWhere((state) => state is AuthFlow),
    ]);
    setBusy(false);
  }

//Screens

  void goToSignUp() {
    clean();
    _authBloc.clearException();
    _authBloc.authEvent.add(const AuthChangeScreen(AuthScreen.signup));
  }

  void goToReset() {
    clean();
    _authBloc.clearException();
    _authBloc.authEvent.add(const AuthChangeScreen(AuthScreen.sendCode));
  }

  void clean() {
    _username = null;
    _password = null;
  }
}
