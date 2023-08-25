// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/l10n/instruction_resolver.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/material.dart';

mixin TotpSetupFields<FieldType extends Enum,
        T extends AuthenticatorFormField<FieldType, String>>
    on AuthenticatorFormFieldState<FieldType, String, T> {
  final _spacingBox = const SizedBox(height: 10);

  String instruction(InstructionResolverKey type) =>
      stringResolver.instruction.resolve(
        context,
        type,
      );

  @override
  Widget buildFormField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          instruction(InstructionResolverKey.totpStep1),
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Text(
          instruction(InstructionResolverKey.totpStep1Instruction),
        ),
        _spacingBox,
        Text(
          instruction(InstructionResolverKey.totpStep2),
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Text(
          instruction(InstructionResolverKey.totpStep2Instruction),
        ),
        ConfirmSignInFormField.totpQrCode(),
        ConfirmSignInFormField.totpCopyKey(),
        Text(
          instruction(InstructionResolverKey.totpStep3),
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Text(
          instruction(InstructionResolverKey.totpStep3Instruction),
        ),
        ConfirmSignInFormField.verificationCode(),
      ],
    );
  }
}
