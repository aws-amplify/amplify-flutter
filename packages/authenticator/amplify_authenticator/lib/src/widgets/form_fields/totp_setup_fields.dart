// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/l10n/button_resolver.dart';
import 'package:amplify_authenticator/src/utils/responsive.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/material.dart';

mixin TotpSetupFields<FieldType extends Enum,
        T extends AuthenticatorFormField<FieldType, String>>
    on AuthenticatorFormFieldState<FieldType, String, T> {
  final _spacingBox = const SizedBox(height: 20);

  /// Returns a horizontal divider with [label], ie 'or' | 'then'
  Widget optionDivider(
    String label,
  ) {
    return Row(
      children: [
        const Expanded(
          child: Divider(height: 0),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            label,
            textAlign: TextAlign.center,
          ),
        ),
        const Expanded(
          child: Divider(height: 0),
        ),
      ],
    );
  }

  @override
  Widget buildFormField(BuildContext context) {
    final showMobileView = isMobileOrWebMobile(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          stringResolver.buttons.resolve(
            context,
            ButtonResolverKey.totpInstruction,
          ),
        ),
        if (!showMobileView) ...[
          ConfirmSignInFormField.totpQrCode(),
          _spacingBox,
          optionDivider(
            stringResolver.buttons.resolve(
              context,
              ButtonResolverKey.totpDividerOr,
            ),
          ),
          _spacingBox,
        ],
        ConfirmSignInFormField.totpCopyKey(),
        optionDivider(
          stringResolver.buttons.resolve(
            context,
            ButtonResolverKey.totpDividerThen,
          ),
        ),
        _spacingBox,
        Text(
          stringResolver.buttons.resolve(
            context,
            ButtonResolverKey.totpSubmitKeyInstruction,
          ),
        ),
        ConfirmSignInFormField.verificationCode(),
      ],
    );
  }
}
