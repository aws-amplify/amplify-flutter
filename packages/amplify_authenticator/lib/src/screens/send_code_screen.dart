import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class SendCodeScreen extends StatelessWidget {
  const SendCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _sendCodeForm = InheritedForms.of(context).sendCodeForm;
    final _title = InheritedStrings.of(context)!.resolver.titles.reset_password;
    return AuthenticatorContainer(title: _title(context), form: _sendCodeForm);
  }
}
