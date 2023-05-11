// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'amplify_exception.dart';

/// {@template amplify_core.unknown_exception}
/// Exception thrown when an unknown error from an underlying SDK or service is
/// encountered.
/// {@endtemplate}
class UnknownException extends AmplifyException
    implements
        ApiException,
        AuthException,
        StorageException,
        AnalyticsException {
  /// {@macro amplify_core.unknown_exception}
  const UnknownException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'UnknownException';
}
