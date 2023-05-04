// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'amplify_exception.dart';

/// {@template amplify_core.network_exception}
/// Exception thrown when the requested operation fails due to a network
/// failure.
/// {@endtemplate}
class NetworkException extends AmplifyException
    implements
        ApiException,
        AuthException,
        StorageException,
        AnalyticsException {
  /// {@macro amplify_core.network_exception}
  const NetworkException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });
}

extension AWSHttpExceptionToAmplifyException on AWSHttpException {
  /// Creates a [NetworkException] with the [AWSHttpException] as the underlying
  /// exception.
  NetworkException toNetworkException() {
    return NetworkException(
      'The request failed due to a network error.',
      recoverySuggestion: 'Ensure that you have an active network connection',
      underlyingException: this,
    );
  }
}
