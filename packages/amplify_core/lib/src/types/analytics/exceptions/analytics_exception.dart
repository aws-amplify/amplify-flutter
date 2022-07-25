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

/// Base Class for Analytics Exceptions
class AnalyticsException extends AmplifyException {
  const AnalyticsException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  /// Constructor for down casting an AmplifyException to this exception
  AnalyticsException._private(AmplifyException exception)
      : super(
          exception.message,
          recoverySuggestion: exception.recoverySuggestion,
          underlyingException: exception.underlyingException,
        );

  /// Instantiates and return a new `AnalyticsException` from the
  /// serialized exception data
  static AnalyticsException fromMap(Map<String, String> serializedException) {
    return AnalyticsException._private(
      AmplifyException.fromMap(serializedException),
    );
  }
}
