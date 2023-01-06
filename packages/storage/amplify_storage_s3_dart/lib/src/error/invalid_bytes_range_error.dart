// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_storage_s3_dart.invalid_bytes_range_error}
class InvalidBytesRangeError extends Error {
  /// {@macro amplify_storage_s3_dart.invalid_bytes_range_error}
  InvalidBytesRangeError(
    this.message, {
    this.recoverySuggestion,
  });

  /// A description of the error.
  final String message;

  /// Details on how to fix the issue, if available.
  final String? recoverySuggestion;

  @override
  String toString() {
    return 'InvalidBytesRangeError($message${recoverySuggestion == null ? '' : ', $recoverySuggestion'})';
  }
}
