// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.exceptions.amplify_error}
/// An non-recoverable error occurring within an Amplify category or plugin.
/// {@endtemplate}
abstract class AmplifyError extends Error
    with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  /// {@macro amplify_core.exceptions.amplify_error}
  AmplifyError(
    this.message, {
    this.recoverySuggestion,
    this.underlyingException,
  });

  /// A description of the error.
  final String message;

  /// Details on how to fix the issue, if available.
  final String? recoverySuggestion;

  /// The exception which caused this, if any.
  final Object? underlyingException;

  @override
  Map<String, Object?> toJson() => {
        'message': message,
        if (recoverySuggestion != null)
          'recoverySuggestion': recoverySuggestion,
        if (underlyingException != null)
          'underlyingException': underlyingException.toString(),
      };
}
