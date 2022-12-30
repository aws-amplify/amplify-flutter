// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

abstract class StorageResumableOperation {
  /// {@template amplify_core.storage.controllable_operation.pause}
  /// Pauses the operation that is in progress.
  /// {@endtemplate}
  Future<void> pause();

  /// {@template amplify_core.storage.controllable_operation.resume}
  /// Resumes the operation that is in a paused state.
  /// {@endtemplate}
  Future<void> resume();
}

abstract class StorageCancelableOperation {
  /// {@template amplify_core.storage.controllable_operation.cancel}
  /// Cancels the operation.
  ///
  /// A cancelled operation cannot be resumed.
  /// {@endtemplate}
  Future<void> cancel();
}
