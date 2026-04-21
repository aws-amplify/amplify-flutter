// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Shared record caching infrastructure for Amplify streaming clients.
///
/// This package is internal to the Amplify Flutter monorepo and is not
/// intended for direct use by customers.
library;

// Client
export 'src/client/auto_flush_scheduler.dart';
export 'src/client/record_client.dart';
// Database
export 'src/db/record_cache_database.dart' show RecordCacheDatabase;
// Exceptions
export 'src/exception/record_cache_exception.dart';
// Flush strategy
export 'src/flush_strategy/flush_strategy.dart';
// Models
export 'src/model/clear_cache_data.dart';
export 'src/model/flush_data.dart';
export 'src/model/record.dart';
export 'src/model/record_data.dart';
export 'src/model/record_input.dart';
// Sender
export 'src/sender/sender.dart';
// Storage
export 'src/storage/platform/record_storage_platform.dart';
export 'src/storage/record_storage.dart';
export 'src/storage/record_storage_memory.dart';
export 'src/storage/record_storage_sqlite.dart';
