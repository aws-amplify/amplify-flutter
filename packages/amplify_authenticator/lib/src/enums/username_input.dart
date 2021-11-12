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

import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

/// {@template amplify_authenticator.username_type}
/// The type of username input field presented to the user. Depending on your
/// Cognito configuration, users may choose to create their own username, use
/// their email, or use their phone number as their login.
/// {@endtemplate}
enum UsernameType {
  /// The user's chosen username.
  username,

  /// The user's email address, corresponding to their [CognitoUserAttributeKey.email]
  /// attribute value.
  email,

  /// The user's email address, corresponding to their [CognitoUserAttributeKey.phoneNumber]
  /// attribute value.
  phoneNumber
}

/// {@template amplify_authenticator.username_input}
/// A value emitted from username form fields when a user has updated their
/// input.
/// {@endtemplate}
class UsernameInput {
  /// {@macro amplify_authenticator.username_type}
  final UsernameType type;

  /// The username value.
  final String username;

  /// {@macro amplify_authenticator.username_input}
  const UsernameInput({
    required this.type,
    required this.username,
  });
}
