// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
