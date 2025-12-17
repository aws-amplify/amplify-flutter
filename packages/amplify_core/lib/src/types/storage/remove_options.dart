// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.remove_options}
/// Configurable options for `Amplify.Storage.remove`.
/// {@endtemplate}
class StorageRemoveOptions
    with
        AWSEquatable<StorageRemoveOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.remove_options}
  const StorageRemoveOptions({
    this.pluginOptions, 
    this.bucket,
    this.recursive,
    this.batchSize,
    this.batchStrategy,
    this.delayBetweenBatchesMs,
    this.maxConcurrency,
    this.errorHandling,
    this.onProgress,
  });

  /// {@macro amplify_core.storage.remove_plugin_options}
  final StorageRemovePluginOptions? pluginOptions;

  /// Optionally specify which bucket to target
  final StorageBucket? bucket;

  /// Enable recursive folder deletion. When true, deletes all contents within the folder.
  final bool? recursive;

  /// Number of files to process per batch. Default: 1000 (S3 maximum).
  final int? batchSize;

  /// Strategy for processing batches.
  final StorageBatchStrategy? batchStrategy;

  /// Delay in milliseconds between batch operations.
  final int? delayBetweenBatchesMs;

  /// Maximum number of concurrent batch operations when using 'parallel' strategy.
  final int? maxConcurrency;

  /// Error handling strategy.
  final StorageErrorHandling? errorHandling;

  /// Callback function invoked after each batch completes.
  final void Function(StorageRemoveProgressInfo)? onProgress;

  @override
  List<Object?> get props => [
    pluginOptions, 
    bucket, 
    recursive, 
    batchSize, 
    batchStrategy, 
    delayBetweenBatchesMs, 
    maxConcurrency, 
    errorHandling,
  ];

  @override
  String get runtimeTypeName => 'StorageRemoveOptions';

  @override
  Map<String, Object?> toJson() => {
    'pluginOptions': pluginOptions?.toJson(),
    'bucket': bucket?.toJson(),
    'recursive': recursive,
    'batchSize': batchSize,
    'batchStrategy': batchStrategy?.name,
    'delayBetweenBatchesMs': delayBetweenBatchesMs,
    'maxConcurrency': maxConcurrency,
    'errorHandling': errorHandling?.name,
  };
}

/// Strategy for processing batches.
enum StorageBatchStrategy {
  /// Process one batch at a time
  sequential,
  /// Process multiple batches concurrently
  parallel,
}

/// Error handling strategy.
enum StorageErrorHandling {
  /// Stop on first error
  failEarly,
  /// Process all batches regardless of errors
  continueOnError,
}

/// Progress information for remove operations.
class StorageRemoveProgressInfo
    with AWSEquatable<StorageRemoveProgressInfo>, AWSDebuggable {
  const StorageRemoveProgressInfo({
    required this.totalFiles,
    required this.deletedFiles,
    required this.failedFiles,
    required this.currentBatch,
    required this.totalBatches,
    this.errors = const [],
  });

  /// Total number of files to delete
  final int totalFiles;

  /// Number of files successfully deleted
  final int deletedFiles;

  /// Number of files that failed to delete
  final int failedFiles;

  /// Current batch being processed
  final int currentBatch;

  /// Total number of batches
  final int totalBatches;

  /// List of errors encountered
  final List<StorageException> errors;

  @override
  List<Object?> get props => [
    totalFiles,
    deletedFiles,
    failedFiles,
    currentBatch,
    totalBatches,
    errors,
  ];

  @override
  String get runtimeTypeName => 'StorageRemoveProgressInfo';
}

/// {@template amplify_core.storage.remove_plugin_options}
/// Plugin-specific options for `Amplify.Storage.remove`.
/// {@endtemplate}
abstract class StorageRemovePluginOptions
    with
        AWSEquatable<StorageRemovePluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.remove_plugin_options}
  const StorageRemovePluginOptions();
}
