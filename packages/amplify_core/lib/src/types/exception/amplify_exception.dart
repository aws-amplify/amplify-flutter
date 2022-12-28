// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.amplify_exception}
/// Thrown from top level Amplify APIs from the amplify-flutter package.
/// All other Amplify APIs throw subclasses of AmplifyException.
/// {@endtemplate}
@immutable
abstract class AmplifyException
    with
        AWSDebuggable,
        AWSEquatable<AmplifyException>,
        AWSSerializable<Map<String, Object?>>
    implements Exception {
  /// {@macro amplify_core.amplify_exception}
  const AmplifyException(
    this.message, {
    this.recoverySuggestion,
    this.underlyingException,
  });

  /// Instantiates and return a new `AmplifyException` from the
  /// serialized exception data
  static AmplifyException fromMap(Map<String, String> serializedException) {
    if (serializedException['message'] == null) {
      throw const FormatException(
        'Cannot create AmplifyException from map.  Message field is missing',
      );
    }

    return _AmplifyException(
      serializedException['message']!,
      recoverySuggestion: serializedException['recoverySuggestion'],
      underlyingException: serializedException['underlyingException'],
    );
  }

  /// A descriptive message of the problem.
  final String message;

  /// How to recover from this exception.
  final String? recoverySuggestion;

  /// Underlying cause of this exception helpful for debugging.
  final Object? underlyingException;

  @override
  List<Object?> get props => [
        message,
        recoverySuggestion,
        underlyingException,
      ];

  @override
  String get runtimeTypeName => 'AmplifyException';

  @override
  Map<String, Object?> toJson() => {
        'message': message,
        if (recoverySuggestion != null)
          'recoverySuggestion': recoverySuggestion,
        if (underlyingException != null)
          'underlyingException': underlyingException.toString(),
      };
}

class _AmplifyException extends AmplifyException {
  const _AmplifyException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });
}
