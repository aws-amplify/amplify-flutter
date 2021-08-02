import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class ConfirmSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _confirmSignUpForm = InheritedForms.of(context)!.confirmSignUpForm;
    final _title =
        InheritedForms.of(context)!.authStrings!.titles.confirm_signup;
    return AuthenticatorContainer(title: _title, form: _confirmSignUpForm);
  }
}
