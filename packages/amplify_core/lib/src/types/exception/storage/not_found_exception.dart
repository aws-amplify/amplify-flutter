// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../amplify_exception.dart';

/// {@template amplify_core.storage.not_found_exception}
/// Exception thrown when the item is not found in the storage service.
/// {@endtemplate}
class StorageNotFoundException extends StorageException {
  /// {@macro amplify_core.storage.not_found_exception}
  const StorageNotFoundException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'StorageNotFoundException';
}
