import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _resetPasswordForm = InheritedForms.of(context).resetPasswordForm;
    return AuthenticatorContainer(
        title: "Reset your password", form: _resetPasswordForm);
  }
}
