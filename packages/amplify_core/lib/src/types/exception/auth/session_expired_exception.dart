// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../amplify_exception.dart';

/// {@category Auth}
/// {@template amplify_core.auth.session_expired_exception}
/// Exception thrown when the current session is expired.
/// {@endtemplate}
class SessionExpiredException extends AuthException {
  /// {@macro amplify_core.auth.session_expired_exception}
  const SessionExpiredException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'SessionExpiredException';
}
