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
import 'package:amplify_authenticator/src/text_customization/input_resolver.dart';
import 'package:amplify_authenticator/src/text_customization/navigation_resolver.dart';
import 'package:amplify_authenticator/src/text_customization/title_resolver.dart';

export 'package:amplify_authenticator/src/text_customization/title_resolver.dart';
export 'package:amplify_authenticator/src/text_customization/input_resolver.dart';
export 'package:amplify_authenticator/src/text_customization/button_resolver.dart';
export 'package:amplify_authenticator/src/text_customization/navigation_resolver.dart';

/// The class that is accepted by the Authenticator to override strings
///
/// Consists of a set of resolvers, which are functions for returning strings.
/// This enables users to override default strings, including with localizations.
class AuthStringResolver {
  /// The resolver class for shared button Widgets
  ButtonResolver buttons;

  /// The resolver class for shared input Widgets
  InputResolver inputs;

  /// The resolver class for navigation-related Widgets
  NavigationResolver navigation;

  /// The resolver class for titles
  TitleResolver titles;

  // ignore: public_member_api_docs
  AuthStringResolver({
    ButtonResolver? buttons,
    InputResolver? inputs,
    NavigationResolver? navigation,
    TitleResolver? titles,
  })  : this.titles = titles ?? TitleResolver(),
        this.buttons = buttons ?? ButtonResolver(),
        this.inputs = inputs ?? InputResolver(),
        this.navigation = navigation ?? NavigationResolver();
}
