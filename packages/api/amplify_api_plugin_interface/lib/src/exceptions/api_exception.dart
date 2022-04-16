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

/// {@template api_exception}
/// Exception thrown from the API Category.
/// {@endtemplate}
class ApiException extends AmplifyException {
  /// HTTP status of response, only available if error
  @Deprecated(
      'Use RestException instead to retrieve the HTTP response. Existing uses of '
      'ApiException for handling REST errors can be safely replaced with RestException')
  final int? httpStatusCode;

  /// {@macro api_exception}
  const ApiException(
    String message, {
    String? recoverySuggestion,
    String? underlyingException,
    this.httpStatusCode,
  }) : super(
          message,
          recoverySuggestion: recoverySuggestion,
          underlyingException: underlyingException,
        );

  /// Constructor for down casting an AmplifyException to this exception
  ApiException._private(
    AmplifyException exception,
    this.httpStatusCode,
  ) : super(
          exception.message,
          recoverySuggestion: exception.recoverySuggestion,
          underlyingException: exception.underlyingException,
        );

  /// Instantiates and return a new `ApiException` from the
  /// serialized exception data
  static ApiException fromMap(Map<String, String> serializedException) {
    var statusCode = int.tryParse(serializedException['httpStatusCode'] ?? '');
    // Ensure a valid HTTP status code for an error.
    if (statusCode != null && (statusCode < 300 || statusCode > 511)) {
      statusCode = null;
    }
    return ApiException._private(
      AmplifyException.fromMap(serializedException),
      statusCode,
    );
  }
}
