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
