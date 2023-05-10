// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../amplify_exception.dart';

/// {@template amplify_core.storage.operation_canceled_exception}
/// Exception thrown when a storage operation is canceled.
/// {@endtemplate}
class StorageOperationCanceledException extends StorageException {
  /// {@macro amplify_core.storage.operation_canceled_exception}
  const StorageOperationCanceledException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'StorageOperationCanceledException';
}
