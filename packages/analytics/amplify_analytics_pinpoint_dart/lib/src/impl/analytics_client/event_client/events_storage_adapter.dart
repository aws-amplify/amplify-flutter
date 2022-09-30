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

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/drift/drift_tables.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/common/serializers.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:built_value/serializer.dart';

/// Interface with underlying device storage using the [Drift] package
/// Present interface for saving/retrieving PinpointEvents
class EventStorageAdapter {
  /// Underlying drift database used to store Events
  late final DriftDatabaseJsonStrings _db;
  late final Serializers _serializers;

  /// Pinpoint max event size
  static const int _maxEventKbSize = 1000;

  /// Pinpoint max events per event flush batch
  static const int _maxEventsInBatch = 100;

  final CachedEventsPathProvider? _pathProvider;

  EventStorageAdapter(this._pathProvider) {
    _db = DriftDatabaseJsonStrings(_pathProvider);

    // Create Serializer
    // jsonDecode JsonString -> Map
    // Serializer Map -> Actual Class Instance
    final serializerBuilder = (Serializers().toBuilder()..addAll(serializers));
    for (final entry in builderFactories.entries) {
      serializerBuilder.addBuilderFactory(entry.key, entry.value);
    }
    _serializers = serializerBuilder.build();
  }

  /// Serialize and save Event to device storage
  Future<void> saveEvent(Event event) async {
    final jsonString = jsonEncode(_serializers.serialize(event));

    if (jsonString.length > _maxEventKbSize) {
      throw AnalyticsException(
          'Pinpoint event size limit exceeded.  Max size is: ${_maxEventKbSize} bytes');
    }

    await _db.addJsonString(jsonString);
  }

  /// Retrieve Events from device storage
  /// Return [StoredEvent] to allow for the item's DriftId to be returned
  /// That DriftId is used to identify that event when calling [deleteEvents]
  Future<List<StoredEvent>> retrieveEvents({
    int maxEvents = _maxEventsInBatch,
  }) async {
    // Raw objects read from Drift storage
    List<DriftJsonString> driftJsonStrings =
        await _db.getJsonStrings(maxEvents);

    // Convert raw objects to Event
    List<StoredEvent> storedEvents = <StoredEvent>[];
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
/// Includes DriftId to identify that event for deletion when calling [deleteEvents]
class StoredEvent {
  int id;
  Event event;

  /// Create StoredEvent from [DriftJsonString]
  factory StoredEvent(DriftJsonString data, Serializers serializers) {
    final event = serializers.deserialize(jsonDecode(data.jsonString)) as Event;
    return StoredEvent._internal(data.id, event);
  }

  StoredEvent._internal(this.id, this.event);
}
