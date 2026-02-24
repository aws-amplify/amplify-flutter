// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

/// {@template amplify_foundation_dart.result}
/// A type representing either a success with data or a failure with an error.
/// {@endtemplate}
sealed class Result<T, E extends Object> {
  const Result();

  /// {@template amplify_foundation_dart.result.is_success}
  /// Whether this result is a success.
  /// {@endtemplate}
  bool get isSuccess;

  /// {@template amplify_foundation_dart.result.is_failure}
  /// Whether this result is a failure.
  /// {@endtemplate}
  bool get isFailure;

  /// {@template amplify_foundation_dart.result.data_or_throw}
  /// Returns the data if this is a success, otherwise throws.
  /// {@endtemplate}
  T get dataOrThrow;

  /// {@template amplify_foundation_dart.result.data_or_null}
  /// Returns the data if this is a success, otherwise returns null.
  /// {@endtemplate}
  T? get dataOrNull;

  /// {@template amplify_foundation_dart.result.error_or_null}
  /// Returns the error if this is a failure, otherwise returns null.
  /// {@endtemplate}
  E? get errorOrNull;

  /// {@template amplify_foundation_dart.result.handle}
  /// Handles the result by calling the appropriate callback.
  /// {@endtemplate}
  void handle({void Function(T)? onSuccess, void Function(E)? onFailure});
}

/// {@template amplify_foundation_dart.success}
/// A successful result containing data.
/// {@endtemplate}
class Success<T, E extends Object> implements Result<T, E> {
  /// {@macro amplify_foundation_dart.success}
  const Success(this.data);

  /// The success data.
  final T data;

  @override
  bool get isSuccess => true;

  @override
  bool get isFailure => false;

  @override
  T get dataOrThrow => data;

  @override
  T? get dataOrNull => data;

  @override
  E? get errorOrNull => null;

  @override
  void handle({void Function(T)? onSuccess, void Function(E)? onFailure}) {
    onSuccess?.call(data);
  }
}

/// {@template amplify_foundation_dart.failure}
/// A failed result containing an error.
/// {@endtemplate}
class Failure<T, E extends Object> implements Result<T, E> {
  /// {@macro amplify_foundation_dart.failure}
  const Failure(this.error);

  /// The error.
  final E error;

  @override
  bool get isSuccess => false;

  @override
  bool get isFailure => true;

  @override
  T get dataOrThrow => throw ResultFailureException(cause: error);

  @override
  T? get dataOrNull => null;

  @override
  E? get errorOrNull => error;

  @override
  void handle({void Function(T)? onSuccess, void Function(E)? onFailure}) {
    onFailure?.call(error);
  }
}
