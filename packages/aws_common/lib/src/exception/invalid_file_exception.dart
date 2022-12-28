// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template aws_common.invalid_file_exception}
/// The file created from AWSFile is not readable.
/// {@endtemplate}
class InvalidFileException implements Exception {
  /// {@macro aws_common.invalid_file_exception}
  const InvalidFileException({
    this.message = 'Invalid file.',
    this.recoverySuggestion = 'Make sure to initialize AWSFile correctly.',
  });

  /// The error message.
  final String message;

  /// The recover suggestion for the [InvalidFileException].
  final String recoverySuggestion;
}
