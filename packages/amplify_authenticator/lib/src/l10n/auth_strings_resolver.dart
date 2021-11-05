/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:flutter/material.dart';

import 'button_resolver.dart';
import 'input_resolver.dart';
import 'message_resolver.dart';
import 'title_resolver.dart';

export 'button_resolver.dart';
export 'input_resolver.dart';
export 'title_resolver.dart';

/// {@template authenticator.auth_string_resolver}
/// The class that is accepted by the Authenticator to override strings
///
/// Consists of a set of resolvers, which are functions for returning strings.
/// This enables users to override default strings, including with localizations.
/// {@endtemplate}
@immutable
class AuthStringResolver {
  /// The resolver class for shared button Widgets
  final ButtonResolver buttons;

  /// The resolver class for shared input Widgets
  final InputResolver inputs;

  /// The resolver class for titles
  final TitleResolver titles;

  /// The resolver class for titles
  final MessageResolver messages;

  /// {@macro authenticator.auth_string_resolver}
  const AuthStringResolver({
    ButtonResolver? buttons,
    InputResolver? inputs,
    TitleResolver? titles,
    MessageResolver? messages,
  })  : titles = titles ?? const TitleResolver(),
        buttons = buttons ?? const ButtonResolver(),
        inputs = inputs ?? const InputResolver(),
        messages = messages ?? const MessageResolver();

  @override
  bool operator ==(Object other) =>
      other is AuthStringResolver &&
      buttons == other.buttons &&
      inputs == other.inputs &&
      titles == other.titles;

  @override
  int get hashCode => hashValues(buttons, inputs, titles);
}
