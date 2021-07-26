import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class ConfirmSignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _confirmSignInForm = InheritedForms.of(context)!.confirmSignInForm;
    return AuthenticatorContainer(
        title: "Confirm Sign In", form: _confirmSignInForm);
  }
}
