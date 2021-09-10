import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/utils/base_viewmodel.dart';
import 'package:flutter/material.dart';

class ConfirmVerifyUserViewModel extends BaseViewModel {
  ConfirmVerifyUserViewModel(this._authBloc);

  final StateMachineBloc _authBloc;

  final _formKey = GlobalKey<FormState>();

  GlobalKey<FormState> get formKey => _formKey;

  String? code;

  String? _userAttributeKey;

  void setCode(String value) {
    code = value;
  }

  void setUserAttributeKey(String? value) {
    _userAttributeKey = value;
  }

  Future<void> confirmVerifyUser() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    AuthConfirmVerifyUserData authConfirmVerifyUserData =
        AuthConfirmVerifyUserData(
      userAttributeKey: _userAttributeKey!,
      code: code!,
    );
    _authBloc.authEvent.add(AuthConfirmVerifyUser(authConfirmVerifyUserData));
    await Future.any([
      _authBloc.exceptions.first,
      _authBloc.stream
          .firstWhere((state) => state is AuthFlow || state is Authenticated),
    ]);
    setBusy(false);
  }

  void skip() {}

  //Screens

}
