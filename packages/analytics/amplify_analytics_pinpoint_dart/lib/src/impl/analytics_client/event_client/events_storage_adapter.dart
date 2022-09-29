import 'dart:async';
import 'dart:collection';
import 'dart:convert';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/common/serializers.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:built_value/serializer.dart';

import '../../drift/drift_tables.dart';

/// Interface with underlying native storage
/// Present generic interface for saving PinpointEvents
class EventStorageAdapter {
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
    // Serializer Map -> Class
    final serializerBuilder = (Serializers().toBuilder()..addAll(serializers));
    for (final entry in builderFactories.entries) {
      serializerBuilder.addBuilderFactory(entry.key, entry.value);
    }
    _serializers = serializerBuilder.build();
  }

  Future<void> saveEvent(Event event) async {
    final jsonString = jsonEncode(_serializers.serialize(event));

    if (jsonString.length > _maxEventKbSize) {
      throw AnalyticsException(
          'Pinpoint event size limit exceeded.  Max size is: ${_maxEventKbSize} bytes');
    }

    await _db.addJsonString(jsonString);
  }

  // TODO - just double check event send is within pinpoint limits
  Future<List<StoredEvent>> retrieveEvents(
      {int maxEvents = _maxEventsInBatch}) async {
    List<DriftJsonString> driftJsonStrings =
        await _db.getJsonStrings(maxEvents);
    List<StoredEvent> storedEvents = <StoredEvent>[];
    for (final driftJsonString in driftJsonStrings) {
      final storedEvent = StoredEvent(driftJsonString, _serializers);
      storedEvents.add(storedEvent);
    }
    return storedEvents;
  }

  Future<void> deleteEvents(Iterable<int> idsToDelete) async {
    await _db.deleteJsonStrings(idsToDelete);
  }
}

class StoredEvent {
  int id;
  Event event;

  factory StoredEvent(DriftJsonString data, Serializers serializers) {
    final event = serializers.deserialize(jsonDecode(data.jsonString)) as Event;
    return StoredEvent._internal(data.id, event);
  }

  StoredEvent._internal(this.id, this.event);
}
