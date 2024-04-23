// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/l10n/instructions_resolver.dart';
import 'package:flutter/material.dart';

export 'button_resolver.dart';
export 'dial_code_resolver.dart';
export 'input_resolver.dart';
export 'message_resolver.dart';
export 'title_resolver.dart';

/// {@template amplify_authenticator.auth_string_resolver}
/// The class that is accepted by the Authenticator to override strings
///
/// Consists of a set of resolvers, which are functions for returning strings.
/// This enables users to override default strings, including with localizations.
/// {@endtemplate}
@immutable
class AuthStringResolver {
  /// {@macro amplify_authenticator.auth_string_resolver}
  const AuthStringResolver({
    ButtonResolver? buttons,
    DialCodeResolver? dialCodes,
    InputResolver? inputs,
    MessageResolver? messages,
    TitleResolver? titles,
    InstructionsResolver? instructions,
  })  : buttons = buttons ?? const ButtonResolver(),
        dialCodes = dialCodes ?? const DialCodeResolver(),
        inputs = inputs ?? const InputResolver(),
        titles = titles ?? const TitleResolver(),
        messages = messages ?? const MessageResolver(),
        instruction = instructions ?? const InstructionsResolver();

  /// The resolver class for shared button Widgets
  final ButtonResolver buttons;

  /// The resolver class for area codes
  final DialCodeResolver dialCodes;

  /// The resolver class for shared input Widgets
  final InputResolver inputs;

  /// The resolver class for titles
  final TitleResolver titles;

  /// The resolver class for messages
  final MessageResolver messages;

  /// The resolver class for instructions
  final InstructionsResolver instruction;

  @override
  bool operator ==(Object other) =>
      other is AuthStringResolver &&
      buttons == other.buttons &&
      dialCodes == other.dialCodes &&
      inputs == other.inputs &&
      titles == other.titles;

  @override
  int get hashCode => Object.hash(buttons, inputs, titles);
}
