// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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

  /// Instantiates and return a new `AmplifyException` from the
  /// serialized exception data
  static AmplifyAlreadyConfiguredException fromMap(
    Map<String, String> serializedException,
  ) {
    if (serializedException['message'] == null) {
      throw const FormatException(
        'Cannot create AmplifyException from map.  Message field is missing',
      );
    }

    return AmplifyAlreadyConfiguredException(
      serializedException['message']!,
      recoverySuggestion: serializedException['recoverySuggestion'],
      underlyingException: serializedException['underlyingException'],
    );
  }

  @override
  String get runtimeTypeName => 'AmplifyAlreadyConfiguredException';
}
