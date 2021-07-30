import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/models/authenticator_exceptions.dart';
import 'package:amplify_authenticator/src/utils/base_viewmodel.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';

class ConfirmSignUpViewModel extends BaseViewModel {
  ConfirmSignUpViewModel(this._authBloc);

  final StateMachineBloc _authBloc;

  final _formKey = GlobalKey<FormState>();

  GlobalKey<FormState> get formKey => _formKey;

  late String username;

  String? _code;

  void setUsername(String value) {
    username = value;
  }

  void setCode(String value) {
    _code = value;
  }

  Future<void> confirm() async {
    setBusy(true);
    final confirmation =
        AuthConfirmSignUpData(code: _code!.trim(), username: username.trim());

    _authBloc.authEvent.add(AuthConfirmSignUp(confirmation));

    await Future.any([
      _authBloc.exceptions!.first,
      _authBloc.stream.first,
    ]);
    setBusy(false);
  }

//This method is called directly from this view due to the fact that
//its result doesn't form part of the authenticator state machine.
  Future<void> resendSignUpCode() async {
    try {
      await Amplify.Auth.resendSignUpCode(username: username);
    } on AmplifyException catch (e) {
      print(e);
      _authBloc.exceptionsSink!.add(AuthenticatorException(e.message));
    }
  }

  // Screens

  void goToSignIn() {
    clean();
    _authBloc.exceptionsSink!.add(null);
    _authBloc.authEvent.add(const AuthChangeScreen(AuthScreen.signin));
  }

  void clean() {
    _code = null;
  }
}
