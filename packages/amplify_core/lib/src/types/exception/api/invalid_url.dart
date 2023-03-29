// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/types/exception/api/api_exception.dart';

/// {@template amplify_core.api.api_invalid_url_exception}
/// Exception thrown when an invalid URL is provided to the request
/// {@endtemplate}
class ApiInvalidURLApiException extends ApiException {
  /// {@macro amplify_core.api.api_invalid_url_exception}
  const ApiInvalidURLApiException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'ApiInvalidURLApiException';
}
