// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/l10n/instruction_resolver.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/material.dart';

mixin TotpSetupFields<FieldType extends Enum,
        T extends AuthenticatorFormField<FieldType, String>>
    on AuthenticatorFormFieldState<FieldType, String, T> {
  final _spacingBox = const SizedBox(height: 10);

  String getInstruction(InstructionResolverKey type) =>
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
          getInstruction(InstructionResolverKey.totpStep1),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          getInstruction(InstructionResolverKey.totpStep1Instruction),
        ),
        _spacingBox,
        Text(
          getInstruction(InstructionResolverKey.totpStep2),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          getInstruction(InstructionResolverKey.totpStep2Instruction),
        ),
        ConfirmSignInFormField.totpQrCode(),
        ConfirmSignInFormField.totpCopyKey(),
        Text(
          getInstruction(InstructionResolverKey.totpStep3),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          getInstruction(InstructionResolverKey.totpStep3Instruction),
        ),
        ConfirmSignInFormField.verificationCode(),
      ],
    );
  }
}
