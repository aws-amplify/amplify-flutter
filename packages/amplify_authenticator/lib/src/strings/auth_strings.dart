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

import 'package:amplify_authenticator/src/strings/navigation_strings.dart';
import 'package:amplify_authenticator/src/text_customization/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/strings/button_strings.dart';
import 'package:amplify_authenticator/src/strings/input_strings.dart';
import 'package:amplify_authenticator/src/strings/title_strings.dart';
import 'package:flutter/material.dart';

/// Top-level class for displaying String values in the Authenticator
class AuthStrings {
  /// The optional class that customers can pass to create custom values
  AuthStringResolver? resolver;

  /// The strings for Widget titles
  late TitleStrings titles;

  /// The strings for the shared input fields
  late InputStrings inputs;

  /// The strings for the shared button fields
  late ButtonStrings buttons;

  /// The strings for the shared button fields
  late NavigationStrings navigation;

  // ignore: public_member_api_docs
  AuthStrings({AuthStringResolver? resolver}) {
    this.resolver = resolver;
    this.titles = TitleStrings(resolver: resolver?.titles);
    this.inputs = InputStrings(resolver: resolver?.inputs);
    this.buttons = ButtonStrings(resolver: resolver?.buttons);
    this.navigation = NavigationStrings(resolver: resolver?.navigation);
  }

  void setContext(BuildContext context) {
    this.titles.context = context;
    this.inputs.context = context;
    this.buttons.context = context;
    this.navigation.context = context;
  }
}
