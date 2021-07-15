import 'package:amplify_flutter_authenticator/src/state/inherited_forms.dart';
import 'package:flutter/material.dart';
import 'package:amplify_flutter_authenticator/src/widgets/containers.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _signUpForm = InheritedForms.of(context)!.signUpForm;
    return FormContainer(title: "Create a new account", form: _signUpForm);
  }
}
