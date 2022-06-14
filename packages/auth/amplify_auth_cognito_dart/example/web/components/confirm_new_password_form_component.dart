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

import 'package:amplify_core/amplify_core.dart';
import 'package:cognito_example/common.dart';
import 'package:example_common/example_common.dart';

class ConfirmNewPasswordFormComponent extends StatefulComponent {
  ConfirmNewPasswordFormComponent({required this.onSuccess});

  final void Function() onSuccess;

  String username = '';
  String newPassword = '';
  String confirmationCode = '';

  String? errorText;
  bool isLoading = false;

  Future<void> _confirmPassword() async {
    setState(() {
      errorText = null;
      isLoading = true;
    });
    if (username.isEmpty || newPassword.isEmpty || confirmationCode.isEmpty) {
      setState(() {
        errorText =
            'Username, New Password, and Confirmation Code are required.';
        isLoading = false;
      });
      return;
    }

    try {
      await confirmResetPassword(
        username: username,
        newPassword: newPassword,
        confirmationCode: confirmationCode,
      );
      onSuccess();
    } on AmplifyException catch (e) {
      setState(() {
        errorText = 'Error: ${e.message}';
        isLoading = false;
      });
    } on Exception catch (e) {
      setState(() {
        errorText = 'An unknown error occurred: $e';
        isLoading = false;
      });
    }
  }

  @override
  Component render() {
    return ColumnComponent(
      children: [
        if (errorText != null) TextComponent(errorText!),
        FormComponent(
          children: [
            TextFormFieldComponent(
              labelText: 'Username',
              initialValue: username,
              onChanged: (value) {
                username = value ?? '';
              },
            ),
            TextFormFieldComponent(
              labelText: 'New Password',
              initialValue: newPassword,
              type: 'password',
              onChanged: (value) {
                newPassword = value ?? '';
              },
            ),
            TextFormFieldComponent(
              labelText: 'Confirmation Code',
              initialValue: confirmationCode,
              onChanged: (value) {
                confirmationCode = value ?? '';
              },
            ),
            ButtonComponent(
              innerHtml: 'Submit',
              loading: isLoading,
              onClick: _confirmPassword,
            ),
          ],
        )
      ],
    );
  }
}
