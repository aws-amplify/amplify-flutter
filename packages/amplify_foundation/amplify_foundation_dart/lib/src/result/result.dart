// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_foundation_dart.result}
/// A type representing either a success or a failure with an [Exception].
///
/// Evaluate the result using a switch statement:
/// ```dart
/// switch (result) {
///   case Ok():
///     print(result.value);
///   case Error():
///     print(result.error);
/// }
/// ```
/// {@endtemplate}
sealed class Result<T> {
  const Result();

  /// Creates a successful [Result] with the specified [value].
  const factory Result.ok(T value) = Ok._;

  /// Creates an error [Result] with the specified [error].
  const factory Result.error(Exception error) = Error._;
}

/// {@template amplify_foundation_dart.ok}
/// A successful [Result] with a returned [value].
/// {@endtemplate}
final class Ok<T> extends Result<T> {
  /// {@macro amplify_foundation_dart.ok}
  const Ok._(this.value);

  /// The returned value of this result.
  final T value;

  @override
  String toString() => 'Result<$T>.ok($value)';
}

/// {@template amplify_foundation_dart.error}
/// An error [Result] with a resulting [error].
/// {@endtemplate}
final class Error<T> extends Result<T> {
  /// {@macro amplify_foundation_dart.error}
  const Error._(this.error);

  /// The resulting error of this result.
  final Exception error;

  @override
  String toString() => 'Result<$T>.error($error)';
}
