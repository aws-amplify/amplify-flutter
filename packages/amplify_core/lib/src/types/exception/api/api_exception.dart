// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.api.api_exception}
/// Exception thrown from the API Category.
/// {@endtemplate}
abstract class ApiException extends AmplifyException {
  /// {@macro api_exception}
  const ApiException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'ApiException';
}
