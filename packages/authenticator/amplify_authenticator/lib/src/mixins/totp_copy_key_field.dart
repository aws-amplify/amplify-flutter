// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: use_build_context_synchronously

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

mixin TotpCopyKey<FieldType extends Enum,
        T extends AuthenticatorFormField<FieldType, String>>
    on AuthenticatorFormFieldState<FieldType, String, T> {
  /// Copies the TOTP key to the clipboard
  Future<void> _copyKey() async {
    try {
      await Clipboard.setData(
        ClipboardData(text: state.totpSetupDetails!.sharedSecret),
      );
      // There is a bug in the analysis that causes this line to fail linting
      // This check resolves lint error in beta, thus the lint error can be
      // ignored using use_build_context_synchronously
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          content: Text(
            stringResolver.messages.copySucceeded(
              context,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    } on Exception {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Theme.of(context).colorScheme.onError,
          content: Text(
            stringResolver.messages.copyFailed(
              context,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }
  }

  @override
  Widget buildFormField(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: _copyKey,
        child: Text(
          stringResolver.buttons.resolve(
            context,
            ButtonResolverKey.copyKey,
          ),
        ),
      ),
    );
  }
}
