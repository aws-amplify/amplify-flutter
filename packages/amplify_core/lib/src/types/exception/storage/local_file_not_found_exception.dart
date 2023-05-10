// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../amplify_exception.dart';

/// {@template amplify_core.storage.local_file_not_found_exception}
/// Exception thrown when a file in the local file system is not found.
/// {@endtemplate}
class StorageLocalFileNotFoundException extends StorageException {
  /// {@macro amplify_core.storage.local_file_not_found_exception}
  const StorageLocalFileNotFoundException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'StorageLocalFileNotFoundException';
}
