// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/l10n/authenticator_localizations.dart';
import 'package:amplify_authenticator/src/l10n/resolver.dart';
import 'package:flutter/material.dart';

enum InstructionsKeyType {
  totpStep1Title,
  totpStep1Body,
  totpStep2Title,
  totpStep2Body,
  totpStep3Title,
  totpStep3Body,
}

class InstructionsResolver extends Resolver<InstructionsKeyType> {
  const InstructionsResolver();

  /// The header for the first step of TOTP setup
  String totpStep1Title(BuildContext context) {
    return AuthenticatorLocalizations.instructionsOf(context).totpStep1Title;
  }

  /// The header for the second step of TOTP setup
  String totpStep2Title(BuildContext context) {
    return AuthenticatorLocalizations.instructionsOf(context).totpStep2Title;
  }

  /// The header for the third step of TOTP setup
  String totpStep3Title(BuildContext context) {
    return AuthenticatorLocalizations.instructionsOf(context).totpStep3Title;
  }

  /// The Body text for step first step of TOTP setup
  String totpStep1Body(BuildContext context) {
    return AuthenticatorLocalizations.instructionsOf(context).totpStep1Body;
  }

  /// The Body text for step second step of TOTP setup
  String totpStep2Body(BuildContext context) {
    return AuthenticatorLocalizations.instructionsOf(context).totpStep2Body;
  }

  /// The Body text for step three step of TOTP setup
  String totpStep3Body(BuildContext context) {
    return AuthenticatorLocalizations.instructionsOf(context).totpStep3Body;
  }

  @override
  String resolve(BuildContext context, InstructionsKeyType key) {
    switch (key) {
      case InstructionsKeyType.totpStep1Title:
        return totpStep1Title(context);
      case InstructionsKeyType.totpStep2Title:
        return totpStep2Title(context);
      case InstructionsKeyType.totpStep3Title:
        return totpStep3Title(context);
      case InstructionsKeyType.totpStep1Body:
        return totpStep1Body(context);
      case InstructionsKeyType.totpStep2Body:
        return totpStep2Body(context);
      case InstructionsKeyType.totpStep3Body:
        return totpStep3Body(context);
    }
  }
}
