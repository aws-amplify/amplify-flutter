import 'package:amplify_authenticator/src/l10n/authenticator_localizations.dart';
import 'package:amplify_authenticator/src/l10n/resolver.dart';
import 'package:flutter/material.dart';

enum InstructionKeyType {
  totpStep1,
  totpStep1Instruction,
  totpStep2,
  totpStep2Instruction,
  totpStep3,
  totpStep3Instruction,
  totpPassCodeInstruction,
}

enum InstructionResolverKey {
  totpStep1._(InstructionKeyType.totpStep1),
  totpStep1Instruction._(InstructionKeyType.totpStep1Instruction),
  totpStep2._(InstructionKeyType.totpStep2),
  totpStep2Instruction._(InstructionKeyType.totpStep2Instruction),
  totpStep3._(InstructionKeyType.totpStep3),
  totpStep3Instruction._(InstructionKeyType.totpStep3Instruction),
  totpPassCodeInstruction._(InstructionKeyType.totpPassCodeInstruction);

  const InstructionResolverKey._(
    this.type,
  );

  final InstructionKeyType type;
}

class InstructionResolver extends Resolver<InstructionResolverKey> {
  const InstructionResolver();

  /// The header for the first step of TOTP setup
  String totpStep1(BuildContext context) {
    return AuthenticatorLocalizations.instructionOf(context).totpStep1;
  }

  /// The header for the second step of TOTP setup
  String totpStep2(BuildContext context) {
    return AuthenticatorLocalizations.instructionOf(context).totpStep2;
  }

  /// The header for the third step of TOTP setup
  String totpStep3(BuildContext context) {
    return AuthenticatorLocalizations.instructionOf(context).totpStep3;
  }

  /// The instructional text for step first step of TOTP setup
  String totpStep1Instruction(BuildContext context) {
    return AuthenticatorLocalizations.instructionOf(context)
        .totpStep1Instruction;
  }

  /// The instructional text for step second step of TOTP setup
  String totpStep2Instruction(BuildContext context) {
    return AuthenticatorLocalizations.instructionOf(context)
        .totpStep2Instruction;
  }

  /// The instructional text for step three step of TOTP setup
  String totpStep3Instruction(BuildContext context) {
    return AuthenticatorLocalizations.instructionOf(context)
        .totpStep3Instruction;
  }

  /// The instructional text for step three step of TOTP setup
  String totpPassCodeInstruction(BuildContext context) {
    return AuthenticatorLocalizations.instructionOf(context)
        .totpPassCodeInstruction;
  }

  @override
  String resolve(BuildContext context, InstructionResolverKey key) {
    switch (key.type) {
      case InstructionKeyType.totpStep1:
        return totpStep1(context);
      case InstructionKeyType.totpStep2:
        return totpStep2(context);
      case InstructionKeyType.totpStep3:
        return totpStep3(context);
      case InstructionKeyType.totpStep1Instruction:
        return totpStep1Instruction(context);
      case InstructionKeyType.totpStep2Instruction:
        return totpStep2Instruction(context);
      case InstructionKeyType.totpStep3Instruction:
        return totpStep3Instruction(context);
      case InstructionKeyType.totpPassCodeInstruction:
        return totpPassCodeInstruction(context);
    }
  }
}
