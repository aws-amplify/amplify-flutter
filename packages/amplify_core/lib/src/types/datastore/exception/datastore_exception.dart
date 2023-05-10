// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
