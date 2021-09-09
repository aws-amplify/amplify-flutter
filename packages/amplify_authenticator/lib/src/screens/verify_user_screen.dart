import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class VerifyUserScreen extends StatelessWidget {
  const VerifyUserScreen({
    required this.data,
    Key? key,
  }) : super(key: key);
  final VerifyUserStateData data;
  @override
  Widget build(BuildContext context) {
    final _verifyUserForm = InheritedForms.of(context)
        .verifyUserFormBuilder(data.unverifiedAttributeKeys);
    final _title =
        InheritedStrings.of(context)!.resolver.titles.verifyUser(context);
    return AuthenticatorContainer(title: _title, form: _verifyUserForm);
  }
}
