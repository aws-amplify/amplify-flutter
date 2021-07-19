import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

/// Sign In Screen
class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _signInForm = InheritedForms.of(context)!.signInForm;
    return AuthenticatorContainer(
        title: "Sign in to your account", form: _signInForm);
  }
}
