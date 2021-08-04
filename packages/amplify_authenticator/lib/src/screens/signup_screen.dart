import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:flutter/material.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _signUpForm = InheritedForms.of(context).signUpForm;
    return AuthenticatorContainer(
        title: "Create a new account", form: _signUpForm);
  }
}
