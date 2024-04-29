// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_datastore.datastore_plugin_options}
/// The plugin options for the Amplify DataStore plugin.
/// {@endtemplate}
class DataStorePluginOptions {
  /// {@macro amplify_datastore.datastore_plugin_options}
  const DataStorePluginOptions({
    this.errorHandler,
    this.conflictHandler,
    this.syncExpressions = const [],
    this.syncInterval,
    this.syncMaxRecords,
    this.syncPageSize,
    this.authModeStrategy = AuthModeStrategy.defaultStrategy,
  });

  /// The custom error handler function that receives an [AmplifyException]
  /// object when DataStore encounters an unhandled error.
  final Function(AmplifyException)? errorHandler;

  /// The custom conflict handler function that receives an [ConflictData]
  /// object when DataStore encounters a data conflict.
  final DataStoreConflictHandler? conflictHandler;

  /// The list of sync expressions to filter datastore sync.
  final List<DataStoreSyncExpression> syncExpressions;

  /// The syncing interval in seconds.
  final int? syncInterval;

  /// The max number of records to sync.
  final int? syncMaxRecords;

  /// The page size to sync.
  final int? syncPageSize;

  /// The strategy for authorizing an API call.
  final AuthModeStrategy authModeStrategy;
}
