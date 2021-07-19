import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/utils/base_viewmodel.dart';
import 'package:flutter/material.dart';

///Confirm Sign Up View Model
class ConfirmSignUpViewModel extends BaseViewModel {
  ///Confirm Sign Up View Model Constructor
  ConfirmSignUpViewModel(this._authBloc);

  final StateMachineBloc _authBloc;

  final _formKey = GlobalKey<FormState>();

  ///form key
  GlobalKey<FormState> get formKey => _formKey;

  String _username = "";

  String _code = "";

  ///username setter
  void setUsername(value) {
    _username = value;
  }

  ///code setter
  void setCode(value) {
    _code = value;
  }

  /// confirm sign up method
  Future<void> confirm() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    final confirmation =
        AuthConfirmSignUpData(code: _code.trim(), username: _username.trim());

    _authBloc.authEvent.add(AuthConfirmSignUp(confirmation));

    await Future.any([
      _authBloc.exceptions.first,
      _authBloc.stream.first,
    ]);
    setBusy(false);
  }

  /// Screen change

  void goToSignIn() {
    clean();
    _authBloc.authEvent.add(const AuthChangeScreen(AuthScreen.signin));
  }

  ///clean method
  void clean() {
    _username = "";
    _code = "";
  }
}
