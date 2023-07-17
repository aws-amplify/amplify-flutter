// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../amplify_exception.dart';

/// {@category Auth}
/// {@template amplify_core.auth.not_authorized_exception}
/// Exception thrown when the current session is not authorized to perform an
/// operation.
/// {@endtemplate}
class AuthNotAuthorizedException extends AuthException {
  /// {@macro amplify_core.auth.not_authorized_exception}
  const AuthNotAuthorizedException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'NotAuthorizedException';
}
