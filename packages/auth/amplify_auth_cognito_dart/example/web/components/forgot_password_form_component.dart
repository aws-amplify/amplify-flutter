// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:cognito_example/common.dart';
import 'package:example_common/example_common.dart';

class ForgotPasswordFormComponent extends StatefulComponent {
  ForgotPasswordFormComponent({required this.onSuccess});

  final void Function() onSuccess;

  String username = '';

  String? errorText;
  bool isLoading = false;

  Future<void> _forgotPassword() async {
    setState(() {
      errorText = null;
      isLoading = true;
    });
    if (username.isEmpty) {
      setState(() {
        errorText = 'Username is required.';
        isLoading = false;
      });
      return;
    }
    try {
      await forgotPassword(username: username);
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
          id: 'forgotPasswordForm',
          children: [
            TextFormFieldComponent(
              initialValue: username,
              labelText: 'Username',
              onChanged: (value) {
                username = value ?? '';
              },
            ),
            ButtonComponent(
              innerHtml: 'Submit',
              loading: isLoading,
              onClick: _forgotPassword,
            ),
          ],
        )
      ],
    );
  }
}
