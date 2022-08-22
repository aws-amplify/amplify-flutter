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

/// Exception thrown from DataStore Category
class DataStoreException extends AmplifyException {
  /// Named constructor
  const DataStoreException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  /// Constructor for down casting an AmplifyException to this exception
  DataStoreException._private(AmplifyException exception)
      : super(exception.message,
            recoverySuggestion: exception.recoverySuggestion,
            underlyingException: exception.underlyingException);

  /// Instantiates and return a new `DataStoreException` from the
  /// serialized exception data
  static DataStoreException fromMap(Map<String, String> serializedException) {
    return DataStoreException._private(
        AmplifyException.fromMap(serializedException));
  }
}
