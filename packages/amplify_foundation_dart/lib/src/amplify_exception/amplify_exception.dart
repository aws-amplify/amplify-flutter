// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

abstract class AmplifyException implements Exception {
  AmplifyException({
    required this.message,
    required this.recoverySuggestion,
    this.cause,
  });

  final String message;
  final String recoverySuggestion;
  final Object? cause;

  @override
  String toString() => 'AmplifyException: $message';
}
