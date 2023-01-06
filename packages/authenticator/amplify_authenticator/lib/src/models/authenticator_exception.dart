// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
