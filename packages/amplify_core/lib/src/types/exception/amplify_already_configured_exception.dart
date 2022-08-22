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

import 'amplify_exception.dart';

/// Thrown when amplify has already been configured.
/// Amplify can only be configured once at run time.
/// Use this exception to detect that `Amplify.configure()`
/// is called again (such as during a hot reload)
class AmplifyAlreadyConfiguredException extends AmplifyException {
  /// Named constructor
  const AmplifyAlreadyConfiguredException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  /// Constructor for down casting an AmplifyException to this exception
  AmplifyAlreadyConfiguredException._private(AmplifyException exception)
      : super(
          exception.message,
          recoverySuggestion: exception.recoverySuggestion,
          underlyingException: exception.underlyingException,
        );

  /// Instantiates and return a new `AmplifyException` from the
  /// serialized exception data
  static AmplifyAlreadyConfiguredException fromMap(
    Map<String, String> serializedException,
  ) {
    return AmplifyAlreadyConfiguredException._private(
      AmplifyException.fromMap(serializedException),
    );
  }
}
