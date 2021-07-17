import 'package:amplify_authenticator/src/internationalization/AuthenticatorLocalizations.dart';
import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localizations = Localizations.of<AuthenticatorLocalizations>(
        context, AuthenticatorLocalizations);

    final _signInForm = InheritedForms.of(context)!.signInForm;
    return AuthenticatorContainer(
        title: "Sign in to your account", form: _signInForm);
  }
}
