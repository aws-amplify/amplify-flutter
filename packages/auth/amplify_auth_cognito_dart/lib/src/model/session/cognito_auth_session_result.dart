// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.model.cognito_auth_session_result}
/// Wraps a session value.
/// {@endtemplate}
///
/// The result may contain an error even though the method
/// fetching it had a success callback.
class CognitoAuthSessionResult<T>
    with AWSEquatable<CognitoAuthSessionResult<T>> {
  /// {@macro amplify_auth_cognito.model.cognito_auth_session}
  const CognitoAuthSessionResult.success(this._value)
      : type = CognitoAuthSessionResultType.success,
        exception = null,
        previousValue = null;

  /// {@macro amplify_auth_cognito.model.cognito_auth_session}
  const CognitoAuthSessionResult.error(
    Object this.exception, {
    this.previousValue,
  })  : type = CognitoAuthSessionResultType.error,
        _value = null;

  /// The result of the fetch auth session operation.
  ///
  /// If the [type] is [CognitoAuthSessionResultType.error], this will be null.
  final T? _value;

  /// The exception that occurred while attempting to retrieve the value.
  final Object? exception;

  /// If there was an exception thrown fetching the result, this may hold the
  /// previous value.
  final T? previousValue;

  /// Indicates if the result was a success.
  final CognitoAuthSessionResultType type;

  /// The value which was successfully retrieved.
  ///
  /// [exception] will be thrown if there was an issue fetching the value.
  T? get value {
    switch (type) {
      case CognitoAuthSessionResultType.success:
        return _value;
      case CognitoAuthSessionResultType.error:
        // ignore: only_throw_errors
        throw exception!;
    }
  }

  @override
  List<Object?> get props => [
        value,
        exception,
      ];
}

/// The result of the CognitoAuthSession operation.
enum CognitoAuthSessionResultType {
  /// A successful result.
  success,

  /// An unsuccessful result.
  error,
}
