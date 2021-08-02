import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _changePasswordForm = InheritedForms.of(context)!.changePasswordForm;
    return AuthenticatorContainer(
        title: "Change Password", form: _changePasswordForm);
  }
}
