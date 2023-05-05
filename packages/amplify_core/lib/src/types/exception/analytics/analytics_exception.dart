// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../amplify_exception.dart';

/// Base Class for Analytics Exceptions.
sealed class AnalyticsException extends AmplifyException {
  const AnalyticsException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  static const _unknownMessage = 'An unknown error occurred';

  /// Creates an [AnalyticsException] from an [Exception].
  static AnalyticsException fromException(Exception e) {
    if (e is AnalyticsException) {
      return e;
    }
    if (e is AmplifyException) {
      return UnknownException(
        e.message,
        recoverySuggestion: e.recoverySuggestion,
        underlyingException: e.underlyingException,
      );
    }
    if (e is AWSHttpException) {
      return e.toNetworkException();
    }
    String message;
    try {
      // ignore: avoid_dynamic_calls
      message = (e as dynamic).message as String;
    } on Object {
      message = _unknownMessage;
    }
    return UnknownException(message, underlyingException: e);
  }
}
