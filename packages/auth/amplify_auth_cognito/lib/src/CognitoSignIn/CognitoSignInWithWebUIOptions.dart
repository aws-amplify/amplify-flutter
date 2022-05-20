/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_core/amplify_core.dart';

class CognitoSignInWithWebUIOptions extends SignInWithWebUIOptions {
  /// {@template amplify_auth_plugin_interface.cognito_sign_in_with_web_ui_options}
  /// iOS-only: Starts the webUI signin in a private browser session, if supported by the current browser.
  ///
  /// Note that this value internally sets `prefersEphemeralWebBrowserSession` in ASWebAuthenticationSession.
  /// As per Apple documentation, Whether the request is honored depends on the user’s default web browser.
  /// Safari always honors the request.
  ///
  /// Defaults to `false`.
  /// {@endtemplate}
  final bool isPreferPrivateSession;
  const CognitoSignInWithWebUIOptions({this.isPreferPrivateSession = false});
  @override
  Map<String, dynamic> serializeAsMap() => <String, dynamic>{
        'isPreferPrivateSession': isPreferPrivateSession,
      };
}
