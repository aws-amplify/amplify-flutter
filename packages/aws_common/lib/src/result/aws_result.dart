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
sealed class AWSResult<V extends Object?, E extends Exception>
    with AWSDebuggable, AWSSerializable<Map<String, Object?>> {
  /// Creates a failed result.
  const factory AWSResult.error(E exception, [StackTrace? stackTrace]) =
      AWSErrorResult<V, E>;

  /// Creates a successful result.
  const factory AWSResult.success(V value) = AWSSuccessResult<V, E>;

  const AWSResult._();

  /// The exception that occurred while attempting to retrieve the value.
  E? get exception;

  /// The original stack trace of [exception], if provided.
  StackTrace? get stackTrace;

  /// The value of the result, if the result was successful.
  ///
  /// If an exception was thrown while retrieving the value, this will throw.
  /// See [exception] for more details.
  V get value;

  /// The value of the result, or null if there was an error retrieving it.
  V? get valueOrNull;
}

/// {@template aws_common.aws_success_result}
/// A successful [AWSResult].
///
/// For successful results, [value] is guaranteed to not throw.
/// {@endtemplate}
final class AWSSuccessResult<V extends Object?, E extends Exception>
    extends AWSResult<V, E> with AWSEquatable<AWSSuccessResult<V, E>> {
  /// {@macro aws_common.aws_success_result}
  const AWSSuccessResult(this.value) : super._();

  @override
  final V value;

  @override
  V get valueOrNull => value;

  @override
  E? get exception => null;

  @override
  StackTrace? get stackTrace => null;

  @override
  List<Object?> get props => [value];

  @override
  String get runtimeTypeName {
    final typeName = StringBuffer('AWSSuccessResult<')
      ..write(
        switch (value) {
          AWSDebuggable(:final runtimeTypeName) => runtimeTypeName,
          _ => V,
        },
      )
      ..write(', $E>');
    return typeName.toString();
  }

  @override
  Map<String, Object?> toJson() => {
        'value': switch (value) {
          final AWSSerializable serializable => serializable.toJson(),
          _ => value.toString(),
        },
      };
}

/// {@template aws_common.aws_error_result}
/// A failed [AWSResult].
///
/// For failed results, [value] will always throw and [exception] is guaranteed
/// to not be `null`.
/// {@endtemplate}
final class AWSErrorResult<V extends Object?, E extends Exception>
    extends AWSResult<V, E> with AWSEquatable<AWSErrorResult<V, E>> {
  /// {@macro aws_common.aws_error_result}
  const AWSErrorResult(this.exception, [this.stackTrace]) : super._();

  @override
  final E exception;

  @override
  final StackTrace? stackTrace;

  @override
  V get value {
    if (stackTrace != null) {
      // TODO(dnys1): Chain, instead, so that the current stack trace can
      /// provide context to the original
    }
    throw exception;
  }

  @override
  V? get valueOrNull => null;

  @override
  List<Object?> get props => [exception, stackTrace];

  @override
  String get runtimeTypeName {
    final typeName = StringBuffer('AWSErrorResult<$V, ')
      ..write(
        switch (exception) {
          AWSDebuggable(:final runtimeTypeName) => runtimeTypeName,
          _ => E,
        },
      )
      ..write('>');
    return typeName.toString();
  }

  @override
  Map<String, Object?> toJson() => {
        'exception': switch (exception) {
          final AWSSerializable serializable => serializable.toJson(),
          _ => exception.toString(),
        },
        'stackTrace': stackTrace?.toString(),
      };
}
