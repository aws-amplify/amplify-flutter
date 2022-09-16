import 'dart:async';
import 'dart:convert';

import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/common/serializers.dart';
import 'package:built_value/serializer.dart';

import '../../drift/drift_tables.dart';

/// Interface with underlying native storage
/// Present generic interface for saving PinpointEvents
class EventStorageAdapter {
  static final _db = DriftDatabaseJsonStrings();
  late final Serializers _serializer;

  EventStorageAdapter() {
    // Create Serializer
    final serializerBuilder = (Serializers().toBuilder()..addAll(serializers));
    for (final entry in builderFactories.entries) {
      serializerBuilder.addBuilderFactory(entry.key, entry.value);
    }
    _serializer = serializerBuilder.build();
  }

  Future<void> saveEvent(Event event) async {
    final jsonString = jsonEncode(_serializer.serialize(event));
    await _db.addJsonString(jsonString);
  }

  /// Android
  /// DEFAULT_MAX_SUBMISSION_SIZE = 1024 * 100; - size determine by java org.json.jsonobject.lenght field
  /// SERVICE_DEFINED_MAX_EVENTS_PER_BATCH = 100;

  // TODO - define max kb send size ?
  Future<List<Event>> retrieveEvents({int maxEvents = 100}) async {
    List<DriftJsonString> driftJsonStrings =
        await _db.getJsonStrings(maxEvents);
    List<Event> events = <Event>[];
    for (var driftJsonString in driftJsonStrings) {
      events.add(_serializer.deserialize(jsonDecode(driftJsonString.jsonString))
          as Event);
    }
    return events;
  }
}
