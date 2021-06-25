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

/// Thrown from top level Amplify APIs from the amplify-flutter package.
/// All other Amplify APIs throw subclasses of AmplifyException.
class AmplifyException implements Exception {
  /// Message contained in the exception
  final String message;

  /// How to recover from this exception (Optional)
  final String recoverySuggestion;

  /// Underlying cause of this exception helpful for debugging (Optional)
  final String underlyingException;

  /// Named constructor
  const AmplifyException(this.message,
      {this.recoverySuggestion, this.underlyingException});

  /// Instantiates and return a new `AmplifyException` from the
  /// serialized exception data
  static AmplifyException fromMap(Map<String, String> serializedException) {
    return AmplifyException(serializedException["message"],
        recoverySuggestion: serializedException["recoverySuggestion"] ?? null,
        underlyingException:
            serializedException["underlyingException"] ?? null);
  }

  @override
  String toString() =>
      this.runtimeType.toString() +
      '(message: $message, ' +
      'recoverySuggestion: $recoverySuggestion, ' +
      'underlyingException: $underlyingException)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is AmplifyException &&
        o.message == message &&
        o.recoverySuggestion == recoverySuggestion &&
        o.underlyingException == underlyingException;
  }

  @override
  int get hashCode =>
      message.hashCode ^
      recoverySuggestion.hashCode ^
      underlyingException.hashCode;
}
