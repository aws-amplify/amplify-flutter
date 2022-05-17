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

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_common.too_many_requests_exception}
/// Thrown when a request is throttled.
/// {@endtemplate}
class TooManyRequestsException extends AuthException {
  /// {@macro amplify_common.too_many_requests_exception}
  const TooManyRequestsException(
    String message, {
    String? recoverySuggestion,
    String? underlyingException,
  }) : super(
          message,
          recoverySuggestion: recoverySuggestion,
          underlyingException: underlyingException,
        );

  /// Constructor for down casting an AuthException to this exception
  TooManyRequestsException._private(AuthException exception)
      : super(
          exception.message,
          recoverySuggestion: exception.recoverySuggestion,
          underlyingException: exception.underlyingException,
        );

  /// Instantiates and return a new `AuthException` from the
  /// serialized exception data
  static TooManyRequestsException fromMap(
    Map<String, String> serializedException,
  ) {
    return TooManyRequestsException._private(
      AuthException.fromMap(serializedException),
    );
  }
}
