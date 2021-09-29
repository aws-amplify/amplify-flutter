import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class VerifyUserScreen extends StatelessWidget {
  const VerifyUserScreen({
    required this.unverifiedAttributeKeys,
    Key? key,
  }) : super(key: key);

  final List<String> unverifiedAttributeKeys;
  @override
  Widget build(BuildContext context) {
    final _form = InheritedForms.of(context).verifyUserFormBuilder(
        unverifiedAttributeKeys: unverifiedAttributeKeys);
    final _title =
        InheritedStrings.of(context)!.resolver.titles.verifyUser(context);
    return AuthenticatorContainer(title: _title, form: _form);
  }
}
