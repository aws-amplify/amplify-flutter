import 'package:amplify_authenticator/src/enums/signin_step.dart';
import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:amplify_authenticator/src/widgets/forms.dart';
import 'package:flutter/material.dart';

class ConfirmSignInScreen extends StatelessWidget {
  const ConfirmSignInScreen({required this.signInStep});
  final SignInStep? signInStep;
  @override
  Widget build(BuildContext context) {
    final _confirmSignInForms = InheritedForms.of(context)!.confirmSignInForms;

    ConfirmSignInForm _confirmSignInForm = _confirmSignInForms!
        .firstWhere((form) => form.signInStep == signInStep);

    return AuthenticatorContainer(
        title: "Confirm Sign In", form: _confirmSignInForm);
  }
}
