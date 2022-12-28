// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.http_status_exception}
/// Exception thrown when the service returned unsuccessful response.
/// {@endtemplate}
class StorageHttpStatusException extends StorageException {
  /// {@macro amplify_core.storage.http_status_exception}
  const StorageHttpStatusException(
    int statusCode, {
    super.recoverySuggestion,
    super.underlyingException,
  }) : super('The HTTP response status code is $statusCode');

  @override
  String get runtimeTypeName => 'StorageHttpStatusException';
}
