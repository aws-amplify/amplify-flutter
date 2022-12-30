// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:meta/meta.dart';

/// {@template amplify_secure_storage_dart.secure_storage_exception}
/// Base class for Amplify Secure Storage exceptions.
/// {@endtemplate}
@immutable
class SecureStorageException implements Exception {
  /// {@macro amplify_secure_storage_dart.secure_storage_exception}
  const SecureStorageException(
    this.message, {
    this.recoverySuggestion,
    this.underlyingException,
  });

  /// Message contained in the exception
  final String message;

  /// How to recover from this exception (Optional)
  final String? recoverySuggestion;

  /// Underlying cause of this exception helpful for debugging (Optional)
  final Object? underlyingException;

  static const String missingRecovery = 'An unknown exception occurred. \n'
      'Please take a look at https://github.com/aws-amplify/amplify-flutter/issues '
      'to see if there are any existing issues that match your scenario, '
      'and file an issue with the details of the bug if there isn\'t.';

  @override
  String toString() => 'SecureStorageException(message: $message, '
      'recoverySuggestion: $recoverySuggestion, '
      'underlyingException: $underlyingException)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SecureStorageException &&
        other.message == message &&
        other.recoverySuggestion == recoverySuggestion &&
        other.underlyingException == underlyingException;
  }

  @override
  int get hashCode =>
      message.hashCode ^
      recoverySuggestion.hashCode ^
      underlyingException.hashCode;
}
