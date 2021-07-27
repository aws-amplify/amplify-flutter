import 'package:amplify_authenticator/src/models/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/strings/auth_strings.dart';
import 'package:amplify_authenticator/src/strings/signin_screen_strings.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localizations = Localizations.of<AuthenticatorLocalizations>(
        context, AuthenticatorLocalizations);

    final _signInForm = InheritedForms.of(context)!.signInForm;
    final strings = InheritedForms.of(context)!.authStrings;
    return FormContainer(title: strings!.signIn.title, form: _signInForm);
  }
}
