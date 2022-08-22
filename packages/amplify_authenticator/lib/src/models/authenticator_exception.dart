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
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:smithy/smithy.dart';

/// {@template amplify_authenticator.authenticator_exception}
/// An exception originating within the Authenticator as part of the sign up/
/// sign in flow.
/// {@endtemplate}
class AuthenticatorException extends AmplifyException {
  /// {@macro amplify_authenticator.authenticator_exception}
  factory AuthenticatorException(
    Object exception, {
    bool showBanner = true,
  }) {
    String message;
    if (exception is String) {
      message = exception;
    } else if (exception is AmplifyException) {
      message = exception.message;
    } else if (exception is SmithyException) {
      message = exception.message ?? _unknownMessage;
    } else {
      try {
        message = (exception as dynamic).message as String;
      } on Object {
        message = _unknownMessage;
      }
    }
    return AuthenticatorException._(
      message,
      showBanner: showBanner,
      underlyingException: exception,
    );
  }

  /// {@macro amplify_authenticator.authenticator_exception}
  const AuthenticatorException._(
    super.message, {
    this.showBanner = true,
    Object? underlyingException,
  }) : super(underlyingException: underlyingException ?? message);

  static const _unknownMessage = 'An unknown error occurred';

  /// Whether to show a banner for this exception.
  final bool showBanner;

  const AuthenticatorException.customAuth()
      : this._(
          'Custom auth flows are not supported yet in Authenticator',
          showBanner: true,
        );

  @override
  String toString() => underlyingException.toString();
}

/// {@template amplify_authenticator.exception_handler}
/// A user-specified exception handler for errors originating within the
/// [Authenticator].
/// {@endtemplate}
typedef ExceptionHandler = void Function(AuthenticatorException);

/// {@template amplify_authenticator.exception_banner_location}
/// The location on the screen to show error banners.
///
/// Defaults to `auto`.
/// {@endtemplate}
enum ExceptionBannerLocation {
  /// Decide based off screen size which to show. Smaller devices including
  /// mobile phones will use [SnackBar]s, while larger devices such
  /// as tablets will use [MaterialBanner]s.
  auto,

  /// Show [MaterialBanner]s at the top of the screen.
  top,

  /// Show [SnackBar]s at the bottom of the screen.
  bottom,

  /// Do not show banners for exceptions. Exceptions can still be handled
  /// using a custom `onException` callback.
  none,
}
