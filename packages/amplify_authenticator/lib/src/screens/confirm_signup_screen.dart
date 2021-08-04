import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class ConfirmSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _confirmSignUpForm = InheritedForms.of(context).confirmSignUpForm;
    return AuthenticatorContainer(
        title: "Confirm Sign Up", form: _confirmSignUpForm);
  }
}
