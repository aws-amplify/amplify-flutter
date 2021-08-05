import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class SendCodeScreen extends StatelessWidget {
  const SendCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _sendCodeForm = InheritedForms.of(context)!.sendCodeForm;
    return AuthenticatorContainer(
        title: "Reset your password", form: _sendCodeForm);
  }
}
