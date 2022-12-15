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

  /// Instantiates and return a new `DataStoreException` from the
  /// serialized exception data
  static DataStoreException fromMap(Map<String, String> serializedException) {
    if (serializedException['message'] == null) {
      throw const FormatException(
        'Cannot create AmplifyException from map.  Message field is missing',
      );
    }

    return DataStoreException(
      serializedException['message']!,
      recoverySuggestion: serializedException['recoverySuggestion'],
      underlyingException: serializedException['underlyingException'],
    );
  }

  @override
  String get runtimeTypeName => 'DataStoreException';
}
