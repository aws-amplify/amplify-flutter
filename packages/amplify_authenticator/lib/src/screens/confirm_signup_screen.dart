import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/state/inherited_resolver.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class ConfirmSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _confirmSignUpForm = InheritedForms.of(context)!.confirmSignUpForm;
    final _title =
        InheritedStrings.of(context)!.resolver.titles.confirm_signup!;
    return AuthenticatorContainer(
        title: _title(context), form: _confirmSignUpForm);
  }
}
