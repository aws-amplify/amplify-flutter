// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/queued_item_store.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/common/serializers.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:built_value/serializer.dart';

/// {@template amplify_analytics_pinpoint_dart.event_storage_adapter}
/// Present interface for saving/retrieving PinpointEvents.
/// {@endtemplate}
class EventStorageAdapter implements Closeable {
  /// {@macro amplify_analytics_pinpoint_dart.event_storage_adapter}
  EventStorageAdapter(this._db);

  /// Underlying database used to store Events.
  final QueuedItemStore _db;
  late final Serializers _serializers = () {
    // Create Serializer
    // jsonDecode JsonString -> Map
    // Serializer Map -> Actual Class Instance
    final serializerBuilder = (Serializers().toBuilder()..addAll(serializers));
    for (final entry in builderFactories.entries) {
      serializerBuilder.addBuilderFactory(entry.key, entry.value);
    }
    final builtSerializers = serializerBuilder.build();
    return builtSerializers;
  }();

  /// Pinpoint max event size.
  static const int _maxEventKbSize = 1000;

  /// Pinpoint max events per event flush batch.
  static const int _maxEventsInBatch = 100;

  /// Serialize and save Event to device storage.
  Future<void> saveEvent(Event event) async {
    final jsonString = jsonEncode(_serializers.serialize(event));

    if (jsonString.length > _maxEventKbSize) {
      throw const AnalyticsException(
        'Pinpoint event size limit exceeded.  Max size is: $_maxEventKbSize bytes',
      );
    }

    await _db.addItem(jsonString);
  }

  /// Retrieve Events from device storage.
  ///
  /// Returns up to [maxEventCount] [StoredEvent]s.
  Future<List<StoredEvent>> retrieveEvents({
    int maxEventCount = _maxEventsInBatch,
  }) async {
    // Raw objects read from storage
    final queuedItems = await _db.getCount(maxEventCount);

    // Convert raw objects to Event
    final storedEvents = <StoredEvent>[];
    for (final item in queuedItems) {
      final storedEvent = StoredEvent(item, _serializers);
      storedEvents.add(storedEvent);
    }
    return storedEvents;
  }

  /// Delete Events from device storage.
  Future<void> deleteEvents(Iterable<StoredEvent> items) async {
    final queuedItems = items.map((item) => item.data);
    return _db.deleteItems(queuedItems);
  }

  @override
  Future<void> close() async {
    return _db.close();
  }
}

/// Wrapper class around [Event].
/// Includes DriftId to identify that event for deletion when calling deleteEvents().
class StoredEvent {
  /// Create StoredEvent from [QueuedItem].
  factory StoredEvent(QueuedItem data, Serializers serializers) {
    final event = serializers.deserialize(jsonDecode(data.value)) as Event;
    return StoredEvent._(data, event);
  }

  StoredEvent._(this.data, this.event);

  /// Underlying [QueuedItem].
  final QueuedItem data;

  /// Underlying Event object.
  final Event event;
}
