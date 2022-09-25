import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:built_collection/built_collection.dart';
import 'package:uuid/uuid.dart';

import '../../../sdk/pinpoint.dart';
import '../endpoint_client/endpoint_client.dart';
import '../key_value_store.dart';
import 'events_storage_adapter.dart';

/// Manage sending of AnalyticsEvent with PinpointClient
class EventClient {
  late final EventStorageAdapter _storageAdapter;

  final String _appId;
  final PinpointClient _pinpointClient;
  final EndpointClient _endpointClient;
  final KeyValueStore _keyValueStore;
  final PathProvider? _pathProvider;

  final _uuid = const Uuid();

  EventClient(this._appId, this._keyValueStore, this._endpointClient,
      this._pinpointClient, this._pathProvider) {
    _storageAdapter = EventStorageAdapter(_pathProvider);
  }

  void recordEvent(Event event) {
    _storageAdapter.saveEvent(event);
  }

  Future<void> flushEvents() async {
    List<Event> eventsToFlush = await _storageAdapter.retrieveEvents();

    var eventsMap = <String, Event>{};
    for (var event in eventsToFlush) {
      eventsMap[_uuid.v1()] = event;
    }

    EventsBatch batch = EventsBatch(
        endpoint: _endpointClient.getPublicEndpoint(),
        events: BuiltMap<String, Event>(eventsMap));

    var batchItems = BuiltMap<String, EventsBatch>(
        {_keyValueStore.getFixedEndpointId(): batch});

    try {
      final result = await _pinpointClient.putEvents(PutEventsRequest(
          applicationId: _appId,
          eventsRequest: EventsRequest(batchItem: batchItems)));

      final endpointResponse =
          result.eventsResponse.results?[_keyValueStore.getFixedEndpointId()];

      if (endpointResponse == null) {
        return;
      }

      final endpointItemResponse = endpointResponse.endpointItemResponse;

      if (endpointItemResponse == null) {
        safePrint(
            'putEvents - no PinpointEndpoint response received from Pinpoint');
      }
      if (endpointItemResponse?.statusCode != 202) {
        safePrint(
            'putEvents - issue with PinpointEndpoint response: ${endpointItemResponse?.toString()}');
      }

      final eventsItemResponse = endpointResponse.eventsItemResponse;

      if (eventsItemResponse == null) {
        safePrint(
            'putEvents - no EventsItemResponse response received from Pinpoint');
      }
      eventsItemResponse?.forEach((eventID, eventItemResponse) {
        if (!equalsIgnoreCase(eventItemResponse.message ?? '', 'Accepted')) {
          safePrint(
              'putEvents - issue with eventId: ${eventID} \n ${eventItemResponse.toString()}');

          if (isRetryable(eventItemResponse.message ?? '')) {
            safePrint(
                'putEvents - recoverable issue, will attempt to resend: ${eventID} in next FlushEvents');
            // TODO: AVOID DELETING EVENTS THAT NEED TO BE RESENT
          }
        }
      });
    } catch (error) {
      safePrint('putEvents - exception encountered: ${error.toString()}');
    }
  }

  bool equalsIgnoreCase(String string1, String string2) {
    return string1.toLowerCase() == string2.toLowerCase();
  }

  bool isRetryable(String? message) {
    return message != null &&
        !equalsIgnoreCase(message, "ValidationException") &&
        !equalsIgnoreCase(message, "SerializationException") &&
        !equalsIgnoreCase(message, "BadRequestException");
  }
}
