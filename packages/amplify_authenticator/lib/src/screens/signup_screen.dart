import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _signUpForm = InheritedForms.of(context).signUpForm;
    return AuthenticatorContainer(
        title: 'Create a new account', form: _signUpForm);
  }
}
