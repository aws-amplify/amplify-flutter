//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.invalid_user_pool_configuration_exception}
/// Exception thrown when a user pool configuration provided to the requested
/// service is invalid.
/// {@endtemplate}
class InvalidUserPoolConfigurationException extends AuthException {
  /// {@macro amplify_core.auth.invalid_user_pool_configuration_exception}
  const InvalidUserPoolConfigurationException({
    required String message,
    String? recoverySuggestion,
    String? underlyingException,
  }) : super(
          message,
          recoverySuggestion: recoverySuggestion,
          underlyingException: underlyingException,
        );

  /// {@macro amplify_core.auth.exception_from_map}
  static InvalidUserPoolConfigurationException fromMap(Map map) =>
      InvalidUserPoolConfigurationException(
        message: map['message'] as String,
        recoverySuggestion: map['recoverySuggestion'] as String?,
        underlyingException: map['underlyingException'] as String?,
      );
}
