/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:meta/meta.dart';

/// Thrown from top level Amplify APIs from the amplify-flutter package.
/// All other Amplify APIs throw subclasses of AmplifyException.
@immutable
class AmplifyException implements Exception {
  /// Message contained in the exception
  final String message;

  /// How to recover from this exception (Optional)
  final String? recoverySuggestion;

  /// Underlying cause of this exception helpful for debugging (Optional)
  final String? underlyingException;

  /// Named constructor
  const AmplifyException(this.message,
      {this.recoverySuggestion, this.underlyingException});

  /// Instantiates and return a new `AmplifyException` from the
  /// serialized exception data
  static AmplifyException fromMap(Map<String, String> serializedException) {
    if (serializedException['message'] == null) {
      throw const FormatException(
        'Cannot create AmplifyException from map.  Message field is missing',
      );
    }

    return AmplifyException(
      serializedException['message']!,
      recoverySuggestion: serializedException['recoverySuggestion'],
      underlyingException: serializedException['underlyingException'],
    );
  }

  @override
  String toString() =>
      '$runtimeType(message: $message, recoverySuggestion: $recoverySuggestion,'
      ' underlyingException: $underlyingException)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AmplifyException &&
        other.message == message &&
        other.recoverySuggestion == recoverySuggestion &&
        other.underlyingException == underlyingException;
  }

  @override
  int get hashCode =>
      message.hashCode ^
      recoverySuggestion.hashCode ^
      underlyingException.hashCode;
}
