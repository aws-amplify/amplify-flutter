// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_foundation_dart.amplify_exception}
/// Base class for all Amplify exceptions.
/// {@endtemplate}
abstract class AmplifyException implements Exception {
  /// {@macro amplify_foundation_dart.amplify_exception}
  AmplifyException({
    required this.message,
    required this.recoverySuggestion,
    this.cause,
  });

  /// A message describing the exception.
  final String message;

  /// A suggestion for how to recover from the exception.
  final String recoverySuggestion;

  /// The underlying cause of the exception, if any.
  final Object? cause;

  @override
  String toString() => 'AmplifyException: $message';
}
