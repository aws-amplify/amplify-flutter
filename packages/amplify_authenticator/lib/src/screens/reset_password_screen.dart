import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _resetPasswordForm = InheritedForms.of(context).resetPasswordForm;
    final _title = InheritedStrings.of(context)!.resolver.titles.reset_password;
    return AuthenticatorContainer(
        title: _title(context), form: _resetPasswordForm);
  }
}
