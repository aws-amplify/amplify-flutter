import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class ConfirmSignInMFAScreen extends StatelessWidget {
  const ConfirmSignInMFAScreen();

  @override
  Widget build(BuildContext context) {
    final _confirmSignInMFAForm =
        InheritedForms.of(context)!.confirmSignInMFAForm;

    return AuthenticatorContainer(
        title: "Confirm Sign In", form: _confirmSignInMFAForm);
  }
}
