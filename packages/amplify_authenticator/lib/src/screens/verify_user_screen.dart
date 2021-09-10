import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class VerifyUserScreen extends StatelessWidget {
  const VerifyUserScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _form = InheritedForms.of(context).verifyUserForm;
    final _title =
        InheritedStrings.of(context)!.resolver.titles.verifyUser(context);
    return AuthenticatorContainer(title: _title, form: _form);
  }
}
