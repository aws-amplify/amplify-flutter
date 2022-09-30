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

import 'dart:collection';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/key_value_store.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:built_collection/built_collection.dart';
import 'package:smithy/smithy.dart';
import 'package:uuid/uuid.dart';

import 'events_storage_adapter.dart';

/// Manages storage and flush of analytics events
/// Uses [EventStorageAdapter] to cached analytics events
/// Uses [PinpointClient] to flush analytics events to AWS Pinpoint
/// For more details see Pinpoint Event online spec: https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-events.html
class EventClient {
  final EventStorageAdapter _storageAdapter;

  final String _appId;
  final PinpointClient _pinpointClient;
  final EndpointClient _endpointClient;
  final KeyValueStore _keyValueStore;

  final _uuid = const Uuid();

  EventClient(
    this._appId,
    this._keyValueStore,
    this._endpointClient,
    this._pinpointClient,
    CachedEventsPathProvider? _pathProvider,
  ) : _storageAdapter = EventStorageAdapter(_pathProvider);

  /// Received events are NEVER sent immediately but cached to be sent in a batch
  void recordEvent(Event event) {
    _storageAdapter.saveEvent(event);
  }

  /// Send cached events as a batch to Pinpoint
  /// Parse and response to Pinpoint response
  Future<void> flushEvents() async {
    List<StoredEvent> storedEvents = await _storageAdapter.retrieveEvents();

    final eventsMap = <String, Event>{};
    final eventIdsToDelete = HashMap<String, int>();

    for (final storedEvent in storedEvents) {
      final id = _uuid.v1();
      // Assign unique id to every event we will send
      eventsMap[id] = storedEvent.event;

      // Mapping EventId -> StoredEventId to help with deleting cached events
      // EventId identifies if event was sent to Pinpoint successfully
      // StoredEventId identifies cached event
      eventIdsToDelete[id] = storedEvent.id;
    }

    // The Event batch to be sent to Pinpoint
    EventsBatch batch = EventsBatch(
        endpoint: _endpointClient.getPublicEndpoint(),
        events: BuiltMap<String, Event>(eventsMap));

    final batchItems = BuiltMap<String, EventsBatch>(
        {_keyValueStore.getFixedEndpointId(): batch});

    try {
      final result = await _pinpointClient.putEvents(PutEventsRequest(
          applicationId: _appId,
          eventsRequest: EventsRequest(batchItem: batchItems)));

      // Parse the EndpointResponse portion of Result
      final endpointResponse =
          result.eventsResponse.results?[_keyValueStore.getFixedEndpointId()];

      if (endpointResponse == null) {
        safePrint(
            'putEvents - no EndpointResponse object received from Pinpoint');
      }

      // Parse the EndpointItemResponse portion of Result
      final endpointItemResponse = endpointResponse?.endpointItemResponse;

      if (endpointItemResponse == null) {
        safePrint(
            'putEvents - no PinpointEndpoint response received from Pinpoint');
      }
      if (endpointItemResponse?.statusCode != 202) {
        safePrint(
            'putEvents - issue with PinpointEndpoint response: ${endpointItemResponse?.toString()}');
      }

      // Parse the individual response for each Event in batch
      final eventsItemResponse = endpointResponse?.eventsItemResponse;

      if (eventsItemResponse == null) {
        safePrint(
            'putEvents - no EventsItemResponse response received from Pinpoint');
      }
      eventsItemResponse?.forEach((eventID, eventItemResponse) {
        if (!_equalsIgnoreCase(eventItemResponse.message ?? '', 'Accepted')) {
          safePrint(
              'putEvents - issue with eventId: ${eventID} \n ${eventItemResponse.toString()}');

          if (_isRetryable(eventItemResponse.message ?? '')) {
            safePrint(
                'putEvents - recoverable issue, will attempt to resend: ${eventID} in next FlushEvents');
            eventIdsToDelete.remove(eventID);
          }
        }
      });
    } on BadRequestException catch (e) {
      _handleRecoverableException(e, eventIdsToDelete);
    } on InternalServerErrorException catch (e) {
      _handleRecoverableException(e, eventIdsToDelete);
    } on NotFoundException catch (e) {
      _handleRecoverableException(e, eventIdsToDelete);
    } on TooManyRequestsException catch (e) {
      _handleRecoverableException(e, eventIdsToDelete);
    } on PayloadTooLargeException catch (e) {
      safePrint('putEvents - exception encountered: ${e.toString}');
      safePrint(
          'Pinpoint event batch limits exceeded: 100 events / 4 mb total size / 1 mb max size per event \n '
          'Reduce your event size or change number of events in a batch');
      eventIdsToDelete.clear();
    } catch (e) {
      safePrint('putEvents - exception encountered: ${e.toString()}');
      safePrint('Unrecoverable issue, deleting cache for local event batch');
    }
    // Always delete local store of events
    // Unless a retryable exception has been received (see above)
    finally {
      _storageAdapter.deleteEvents(eventIdsToDelete.values);
    }
  }

  // If exception is recoverable, do not delete eventIds from local cache
  void _handleRecoverableException(
      SmithyHttpException e, HashMap eventIdsToDelete) {
    safePrint('putEvents - exception encountered: ${e.toString}');
    safePrint('Recoverable issue, will attempt to resend event batch');
    eventIdsToDelete.clear();
  }

  bool _isRetryable(String? message) {
    return message != null &&
        !_equalsIgnoreCase(message, "ValidationException") &&
        !_equalsIgnoreCase(message, "SerializationException") &&
        !_equalsIgnoreCase(message, "BadRequestException");
  }

  bool _equalsIgnoreCase(String string1, String string2) {
    return string1.toLowerCase() == string2.toLowerCase();
  }
}
