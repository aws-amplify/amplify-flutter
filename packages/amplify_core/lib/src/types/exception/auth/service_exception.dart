// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../amplify_exception.dart';

/// {@category Auth}
/// {@template amplify_core.auth.service_exception}
/// Exception thrown when some error occurs in the underlying service.
///
/// Check the [underlyingException] for more details.
/// {@endtemplate}
class AuthServiceException extends AuthException {
  /// {@macro amplify_core.auth.service_exception}
  const AuthServiceException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'ServiceException';
}
