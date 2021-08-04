import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/state/inherited_resolver.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class ConfirmSignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _confirmSignInForm = InheritedForms.of(context)!.confirmSignInForm;
    final _title = InheritedStrings.of(context)!.resolver.titles.confirm_signin;
    return AuthenticatorContainer(
        title: _title(context), form: _confirmSignInForm);
  }
}
