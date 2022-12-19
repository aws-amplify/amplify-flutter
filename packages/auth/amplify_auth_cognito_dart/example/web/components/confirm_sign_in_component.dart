// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:cognito_example/common.dart';
import 'package:example_common/example_common.dart';

class ConfirmSignInComponent extends StatefulComponent {
  ConfirmSignInComponent({
    required this.onSuccess,
  });

  final void Function(SignInResult) onSuccess;

  String confirmationCode = '';

  String? errorText;
  bool isLoading = false;

  Future<void> _confirmSignIn() async {
    setState(() {
      errorText = null;
      isLoading = true;
    });
    if (confirmationCode.isEmpty) {
      setState(() {
        errorText =
            'Username, New Password, and Confirmation Code are required.';
        isLoading = false;
      });
      return;
    }

    try {
      final res = await confirmSignIn(confirmationCode);
      onSuccess(res);
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
              labelText: 'Confirmation Code',
              initialValue: confirmationCode,
              onChanged: (value) {
                confirmationCode = value ?? '';
              },
            ),
            ButtonComponent(
              innerHtml: 'Submit',
              loading: isLoading,
              onClick: _confirmSignIn,
            ),
          ],
        )
      ],
    );
  }
}
