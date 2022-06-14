// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
