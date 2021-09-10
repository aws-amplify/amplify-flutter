import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/utils/base_viewmodel.dart';
import 'package:flutter/material.dart';

class VerifyUserViewModel extends BaseViewModel {
  VerifyUserViewModel(this._authBloc) {
    this
        ._authBloc
        .authEventStream
        .where((event) => event is AuthSetUnverifiedAttributeKeys)
        .listen((event) {
      event as AuthSetUnverifiedAttributeKeys;
      _unverifiedAttributeKeys = event.data.unverifiedAttributeKeys;
    });
  }

  final StateMachineBloc _authBloc;

  final _formKey = GlobalKey<FormState>();

  GlobalKey<FormState> get formKey => _formKey;

  String? _userAttributeKey;

  void setUserAttributeKey(String? value) {
    _userAttributeKey = value;
  }

  List<String> _unverifiedAttributeKeys = [];

  List<String> get unverifiedAttributeKeys => _unverifiedAttributeKeys;

  Future<void> verifyUser() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    AuthVerifyUserData authVerifyUserData = AuthVerifyUserData(
      userAttributeKey: _userAttributeKey!,
    );
    _authBloc.authEvent.add(AuthVerifyUser(authVerifyUserData));
    await Future.any([
      _authBloc.exceptions.first,
      _authBloc.stream
          .firstWhere((state) => state is AuthFlow || state is Authenticated),
    ]);
    setBusy(false);
  }

  void skip() {
    _authBloc.clearException();
    _authBloc.authEvent.add(const AuthSkipVerifyUser());
  }
}
