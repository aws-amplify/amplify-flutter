// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../amplify_exception.dart';

/// {@category Auth}
/// {@template amplify_core.auth.validation_exception}
/// Exception thrown when one of the input fields to an operation is invalid.
/// {@endtemplate}
class AuthValidationException extends AuthException {
  /// {@macro amplify_core.auth.validation_exception}
  const AuthValidationException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'ValidationException';
}
