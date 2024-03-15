// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../amplify_exception.dart';

/// {@template amplify_core.storage.path_validation_exception}
/// Exception thrown when the [StoragePath] is invalid.
/// {@endtemplate}
class StoragePathValidationException extends StorageException {
  /// {@macro amplify_core.storage.path_validation_exception}
  const StoragePathValidationException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'StoragePathValidationException';
}
