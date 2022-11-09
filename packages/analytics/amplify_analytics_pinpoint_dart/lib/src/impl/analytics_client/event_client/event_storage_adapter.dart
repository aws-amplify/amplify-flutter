// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';
import 'dart:convert';

import 'package:amplify_analytics_pinpoint_dart/src/impl/drift/drift_tables.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/common/serializers.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_db_common_dart/amplify_db_common_dart.dart'
    as db_common;
import 'package:built_value/serializer.dart';
import 'package:drift/drift.dart';
import 'package:meta/meta.dart';

/// {@template amplify_analytics_pinpoint_dart.event_storage_adapter}
/// Present interface for saving/retrieving PinpointEvents.
///
/// Interacts with underlying device storage using the Drift package.
/// {@endtemplate}
class EventStorageAdapter {
  /// {@macro amplify_analytics_pinpoint_dart.event_storage_adapter}
  @visibleForTesting
  EventStorageAdapter(this._db, this._serializers);

  static EventStorageAdapter? _instance;

  /// {@macro amplify_analytics_pinpoint_dart.event_storage_adapter}
  static EventStorageAdapter getInstance(QueryExecutor driftQueryExecutor) {
    if (_instance != null) return _instance!;

    final db = DriftDatabaseJsonStrings.getInstance(driftQueryExecutor);

    // Create Serializer
    // jsonDecode JsonString -> Map
    // Serializer Map -> Actual Class Instance
    final serializerBuilder = (Serializers().toBuilder()..addAll(serializers));
    for (final entry in builderFactories.entries) {
      serializerBuilder.addBuilderFactory(entry.key, entry.value);
    }
    final builtSerializers = serializerBuilder.build();

    return _instance = EventStorageAdapter(db, builtSerializers);
  }

  /// Underlying drift database used to store Events
  final DriftDatabaseJsonStrings _db;
  final Serializers _serializers;

  /// Pinpoint max event size
  static const int _maxEventKbSize = 1000;

  /// Pinpoint max events per event flush batch
  static const int _maxEventsInBatch = 100;

  /// Serialize and save Event to device storage
  Future<void> saveEvent(Event event) async {
    final jsonString = jsonEncode(_serializers.serialize(event));

    if (jsonString.length > _maxEventKbSize) {
      throw const AnalyticsException(
        'Pinpoint event size limit exceeded.  Max size is: $_maxEventKbSize bytes',
      );
    }

    await _db.addJsonString(jsonString);
  }

  /// Retrieve Events from device storage.
  ///
  /// Returns up to [maxEventCount] [StoredEvent]s.
  Future<List<StoredEvent>> retrieveEvents({
    int maxEventCount = _maxEventsInBatch,
  }) async {
    // Raw objects read from Drift storage
    final driftJsonStrings = await _db.getJsonStrings(maxEventCount);

    // Convert raw objects to Event
    final storedEvents = <StoredEvent>[];
    for (final driftJsonString in driftJsonStrings) {
      final storedEvent = StoredEvent(driftJsonString, _serializers);
      storedEvents.add(storedEvent);
    }
    return storedEvents;
  }

  /// Delete Events by their DriftId in device storage
  Future<void> deleteEvents(Iterable<int> idsToDelete) async {
    await _db.deleteJsonStrings(idsToDelete);
  }
}

/// Wrapper class around [Event]
/// Includes DriftId to identify that event for deletion when calling deleteEvents()
class StoredEvent {
  /// Create StoredEvent from [DriftJsonString]
  factory StoredEvent(DriftJsonString data, Serializers serializers) {
    final event = serializers.deserialize(jsonDecode(data.jsonString)) as Event;
    return StoredEvent._(data.id, event);
  }

  StoredEvent._(this.id, this.event);

  /// The Drift ID
  final int id;

  /// Underlying Event object
  final Event event;
}
