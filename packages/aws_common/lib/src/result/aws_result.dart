// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';

/// {@template aws_common.aws_result}
/// The result of an operation that may throw an exception.
///
/// [value] will return the result if it was retrieved successfully, or
/// throw an exception if an exception occurred. See [exception] for more
/// details.
/// {@endtemplate}
class AWSResult<T, E extends Exception>
    with AWSEquatable<AWSResult<T, E>>, AWSDebuggable {
  /// Creates a failed result.
  const AWSResult.error(E this.exception, [this.stackTrace])
      : type = AWSResultType.error,
        _value = null;

  /// Creates a successful result.
  const AWSResult.success(T value)
      : _value = value,
        type = AWSResultType.success,
        exception = null,
        stackTrace = null;

  /// The value of the result, or null.
  final T? _value;

  /// The exception that occurred while attempting to retrieve the value.
  final E? exception;

  /// The original stack trace of [exception], if provided.
  final StackTrace? stackTrace;

  /// Indicates if the result was a success.
  final AWSResultType type;

  /// The value of the result, if the result was successful.
  ///
  /// If an exception was thrown while retrieving the value, this will throw.
  /// See [exception] for more details.
  T get value {
    switch (type) {
      case AWSResultType.success:
        // value will be non-null since it is required in AWSResult.success.
        return _value!;
      case AWSResultType.error:
        if (stackTrace != null) {
          // TODO(dnys1): Chain, instead, so that the current stack trace can
          /// provide context to the original
        }
        // ignore: only_throw_errors
        throw exception!;
    }
  }

  /// The value of the result, or null if there was an error retrieving it.
  T? get valueOrNull {
    switch (type) {
      case AWSResultType.success:
        // value will be non-null since it is required in AWSResult.success.
        return _value!;
      case AWSResultType.error:
        return null;
    }
  }

  @override
  List<Object?> get props => [
        _value,
        exception,
        type,
      ];

  @override
  String get runtimeTypeName => 'AWSResult';
}
