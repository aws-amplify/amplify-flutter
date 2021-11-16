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

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';

/// {@template amplify_authenticator.authenticator_exception}
/// An exception originating within the Authenticator as part of the sign up/
/// sign in flow.
/// {@endtemplate}
class AuthenticatorException implements Exception {
  /// {@macro amplify_authenticator.authenticator_exception}
  const AuthenticatorException(
    this.message, {
    this.showBanner = true,
  });

  /// A message passed from the server, or generated locally, which can be
  /// presented to users.
  final String message;

  /// Whether to show a banner for this exception.
  final bool showBanner;

  const AuthenticatorException.customAuth()
      : message = 'Custom auth flows are not supported yet in Authenticator',
        showBanner = true;

  @override
  String toString() => message;
}

/// {@template amplify_authenticator.exception_handler}
/// A user-specified exception handler for errors originating within the
/// [Authenticator].
/// {@endtemplate}
typedef ExceptionHandler = void Function(AuthenticatorException);

/// {@template amplify_authenticator.exception_banner_location}
/// The location on the screen to show error banners.
///
/// - `top`: Show [MaterialBanner]s at the top of the screen.
/// - `bottom`: Show [SnackBar]s at the bottom of the screen.
/// - `auto` (default): Decide based off screen size which to show. Smaller devices
/// including mobile phones will use [SnackBar]s, while larger devices such
/// as tablets will use [MaterialBanner]s.
/// - `none`: Do not show banners for exceptions. Exceptions can still be handled
/// using a custom `onException` callback.
/// {@endtemplate}
enum ExceptionBannerLocation { auto, top, bottom, none }
