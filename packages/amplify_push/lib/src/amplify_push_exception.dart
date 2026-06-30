// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:flutter/services.dart';

/// {@template amplify_push.amplify_push_exception}
/// Base exception for Amplify Push errors.
/// {@endtemplate}
sealed class AmplifyPushException extends AmplifyException {
  /// {@macro amplify_push.amplify_push_exception}
  const AmplifyPushException({
    required super.message,
    required super.recoverySuggestion,
    super.cause,
  });

  /// Maps an arbitrary error into the appropriate [AmplifyPushException].
  static AmplifyPushException from(Object error) => switch (error) {
    final AmplifyPushException e => e,
    final PlatformException e => PushPlatformException(cause: e),
    final TimeoutException e => PushTimeoutException(cause: e),
    final Exception e => PushUnknownException(cause: e),
    _ => PushUnknownException(cause: Exception(error.toString())),
  };
}

/// Thrown when the client has not been initialized via `AmplifyPushClient.create`.
final class PushNotConfiguredException extends AmplifyPushException {
  /// Creates a [PushNotConfiguredException].
  const PushNotConfiguredException()
    : super(
        message: 'Push client has not been initialized.',
        recoverySuggestion: 'Call AmplifyPushClient.create() first.',
      );
}

/// Thrown when a platform channel error occurs communicating with native code.
final class PushPlatformException extends AmplifyPushException {
  /// Creates a [PushPlatformException].
  const PushPlatformException({super.cause})
    : super(
        message: 'Platform error communicating with native push module.',
        recoverySuggestion:
            'Verify push notification capabilities are configured in your native project.',
      );
}

/// Thrown when waiting for a device token times out.
final class PushTimeoutException extends AmplifyPushException {
  /// Creates a [PushTimeoutException].
  const PushTimeoutException({super.cause})
    : super(
        message: 'Timed out waiting for device token.',
        recoverySuggestion:
            'Verify push notification capabilities are configured in your native iOS/Android project.',
      );
}

/// Thrown when the background callback is not a top-level or static function.
final class PushCallbackException extends AmplifyPushException {
  /// Creates a [PushCallbackException].
  const PushCallbackException()
    : super(
        message: 'Callback is not a global or static function.',
        recoverySuggestion: 'Make the callback a top-level or static function.',
      );
}

/// Thrown when an operation is attempted on a closed client.
final class PushClientClosedException extends AmplifyPushException {
  /// Creates a [PushClientClosedException].
  const PushClientClosedException()
    : super(
        message: 'Push client has been closed.',
        recoverySuggestion: 'Create a new AmplifyPushClient instance.',
      );
}

/// Catch-all for unexpected errors.
final class PushUnknownException extends AmplifyPushException {
  /// Creates a [PushUnknownException].
  const PushUnknownException({super.cause})
    : super(
        message: 'An unexpected error occurred.',
        recoverySuggestion: 'Review the underlying cause.',
      );
}
