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

/// {@template amplify_common.invalid_user_pool_configuration_exception}
/// Thrown when a user pool is is not configured for the requested action.
/// {@endtemplate}
class InvalidUserPoolConfigurationException extends AuthException {
  /// {@macro amplify_common.invalid_user_pool_configuration_exception}
  const InvalidUserPoolConfigurationException({
    required String message,
    String? recoverySuggestion,
    String? underlyingException,
  }) : super(
          message,
          recoverySuggestion: recoverySuggestion,
          underlyingException: underlyingException,
        );

  static InvalidUserPoolConfigurationException fromMap(Map map) =>
      InvalidUserPoolConfigurationException(
        message: map['message'] as String,
        recoverySuggestion: map['recoverySuggestion'] as String?,
        underlyingException: map['underlyingException'] as String?,
      );
}
