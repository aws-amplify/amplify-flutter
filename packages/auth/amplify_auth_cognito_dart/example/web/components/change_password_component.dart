// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:cognito_example/common.dart';
import 'package:example_common/example_common.dart';

class ChangePasswordComponent extends StatefulComponent {
  ChangePasswordComponent({required this.onSuccess});

  final void Function() onSuccess;

  String oldPassword = '';
  String newPassword = '';

  String? errorText;
  bool isLoading = false;

  Future<void> _changePassword() async {
    setState(() {
      errorText = null;
      isLoading = true;
    });
    if (oldPassword.isEmpty || newPassword.isEmpty) {
      setState(() {
        errorText = 'Old Password and New Password are required.';
        isLoading = false;
      });
      return;
    }

    try {
      await changePassword(
        oldPassword: oldPassword,
        newPassword: newPassword,
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
              labelText: 'Old Password',
              type: 'password',
              onChanged: (value) {
                oldPassword = value ?? '';
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
            ButtonComponent(
              innerHtml: 'Submit',
              loading: isLoading,
              onClick: _changePassword,
            ),
          ],
        )
      ],
    );
  }
}
