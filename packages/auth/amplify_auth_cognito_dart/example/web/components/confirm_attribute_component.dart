// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart'
    hide AuthState;
import 'package:cognito_example/common.dart';
import 'package:example_common/example_common.dart';

import 'app_component.dart';

abstract class ConfirmAttributeComponent extends StatefulComponent {
  ConfirmAttributeComponent({required this.onNavigate});

  final void Function(AuthState authState) onNavigate;
  String? errorText;

  String _confirmationCode = '';
  CognitoUserAttributeKey get key;

  void _back() {
    onNavigate(AuthState.manageAttributes);
  }

  void _resendCode() {
    resendUserAttributeConfirmationCode(
      key: key,
      options: const CognitoResendUserAttributeConfirmationCodeOptions(
        clientMetadata: {
          'method': 'resendUserAttributeConfirmationCode',
        },
      ),
    );
  }

  Future<void> _confirm() async {
    try {
      await confirmUserAttribute(
        key: key,
        confirmationCode: _confirmationCode,
      );
      onNavigate(AuthState.manageAttributes);
    } on AuthException catch (e) {
      setState(() {
        errorText = e.message;
      });
    } on Exception catch (e) {
      setState(() {
        errorText = e.toString();
      });
    }
  }

  @override
  Component render() {
    return ColumnComponent(
      children: [
        if (errorText != null) TextComponent(errorText!),
        ButtonComponent(innerHtml: 'Back', onClick: _back),
        FormComponent(
          children: [
            ColumnComponent(
              children: [
                TextFormFieldComponent(
                  initialValue: _confirmationCode,
                  labelText: 'Code',
                  onChanged: (value) {
                    _confirmationCode = value ?? '';
                  },
                )
              ],
            ),
          ],
        ),
        ButtonComponent(innerHtml: 'Confirm', onClick: _confirm),
        ButtonComponent(innerHtml: 'Resend code', onClick: _resendCode)
      ],
    );
  }
}
