import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _signInForm = InheritedForms.of(context).signInForm;
    final _title =
        InheritedStrings.of(context)!.resolver.titles.signin(context);
    return AuthenticatorContainer(title: _title, form: _signInForm);
  }
}
