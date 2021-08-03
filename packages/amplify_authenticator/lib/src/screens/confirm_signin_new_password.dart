import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class ConfirmSignInNewPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _confirmSignInNewPasswordForm =
        InheritedForms.of(context)!.confirmSignInNewPasswordForm;
    return AuthenticatorContainer(
        title: "Change Password", form: _confirmSignInNewPasswordForm);
  }
}
