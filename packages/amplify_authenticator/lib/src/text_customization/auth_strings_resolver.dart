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

import 'package:amplify_authenticator/src/text_customization/button_resolver.dart';
import 'package:amplify_authenticator/src/text_customization/checkbox_resolver.dart';
import 'package:amplify_authenticator/src/text_customization/input_resolver.dart';
import 'package:amplify_authenticator/src/text_customization/navigation_resolver.dart';
import 'package:amplify_authenticator/src/text_customization/title_resolver.dart';
import 'package:flutter/material.dart';

export 'package:amplify_authenticator/src/text_customization/button_resolver.dart';
export 'package:amplify_authenticator/src/text_customization/input_resolver.dart';
export 'package:amplify_authenticator/src/text_customization/navigation_resolver.dart';
export 'package:amplify_authenticator/src/text_customization/title_resolver.dart';

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

  /// The resolver class for shared button Widgets
  final CheckboxResolver checkboxes;

  /// The resolver class for shared input Widgets
  final InputResolver inputs;

  /// The resolver class for navigation-related Widgets
  final NavigationResolver navigation;

  /// The resolver class for titles
  final TitleResolver titles;

  /// {@macro authenticator.auth_string_resolver}
  const AuthStringResolver({
    ButtonResolver? buttons,
    CheckboxResolver? checkboxes,
    InputResolver? inputs,
    NavigationResolver? navigation,
    TitleResolver? titles,
  })  : titles = titles ?? const DefaultTitleResolver(),
        checkboxes = checkboxes ?? const DefaultCheckboxResolver(),
        buttons = buttons ?? const DefaultButtonResolver(),
        inputs = inputs ?? const DefaultInputResolver(),
        navigation = navigation ?? const DefaultNavigationResolver();

  @override
  bool operator ==(Object other) =>
      other is AuthStringResolver &&
      checkboxes == other.checkboxes &&
      buttons == other.buttons &&
      inputs == other.inputs &&
      navigation == other.navigation &&
      titles == other.titles;

  @override
  int get hashCode => hashValues(buttons, inputs, navigation, titles);
}
