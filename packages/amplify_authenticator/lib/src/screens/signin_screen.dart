import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _signInForm = InheritedForms.of(context).signInForm;
<<<<<<< HEAD
    return AuthenticatorContainer(
        title: "Sign in to your account", form: _signInForm);
=======
    final _title = InheritedStrings.of(context)!.resolver.titles.signin;
    return AuthenticatorContainer(title: _title(context), form: _signInForm);
>>>>>>> Added inherited widget
  }
}
