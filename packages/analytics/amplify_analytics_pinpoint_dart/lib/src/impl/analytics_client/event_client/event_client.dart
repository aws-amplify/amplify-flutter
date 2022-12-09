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

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/event_storage_adapter.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:drift/drift.dart';
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart';
import 'package:uuid/uuid.dart';

/// {@template amplify_analytics_pinpoint_dart.event_client}
/// Manages storage and flush of analytics events
///
/// - Uses [EventStorageAdapter] to cache analytics events
/// - Uses [PinpointClient] to flush analytics events to AWS Pinpoint
///
/// The events sent conform to the [Pinpoint Event](https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-events.html) online spec.
/// {@endtemplate}
class EventClient {
  /// {@macro amplify_analytics_pinpoint_dart.event_client}
  @visibleForTesting
  EventClient({
    required String appId,
    required String fixedEndpointId,
    required PinpointClient pinpointClient,
    required EndpointClient endpointClient,
    required EventStorageAdapter storageAdapter,
  })  : _appId = appId,
        _fixedEndpointId = fixedEndpointId,
        _pinpointClient = pinpointClient,
        _endpointClient = endpointClient,
        _storageAdapter = storageAdapter;

  static EventClient? _instance;

  /// {@macro amplify_analytics_pinpoint_dart.event_client}
  static EventClient getInstance({
    required String appId,
    required String fixedEndpointId,
    required PinpointClient pinpointClient,
    required EndpointClient endpointClient,
    required QueryExecutor driftQueryExecutor,
  }) {
    return _instance ??= EventClient(
      appId: appId,
      fixedEndpointId: fixedEndpointId,
      pinpointClient: pinpointClient,
      endpointClient: endpointClient,
      storageAdapter: EventStorageAdapter.getInstance(driftQueryExecutor),
    );
  }

  final EventStorageAdapter _storageAdapter;
  final String _appId;
  final String _fixedEndpointId;
  final PinpointClient _pinpointClient;
  final EndpointClient _endpointClient;

  final _uuid = const Uuid();

  static final AmplifyLogger _logger =
      AmplifyLogger.category(Category.analytics).createChild('EventClient');

  /// Received events are NEVER sent immediately but cached to be sent in a batch
  Future<void> recordEvent(Event event) async {
    await _storageAdapter.saveEvent(event);
  }

  /// Send cached events as a batch to Pinpoint
  /// Parse and response to Pinpoint response
  Future<void> flushEvents() async {
    final storedEvents = await _storageAdapter.retrieveEvents();

    final eventsMap = <String, Event>{};
    final eventIdsToDelete = <String, int>{};

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
    final batch = EventsBatch(
      endpoint: _endpointClient.getPublicEndpoint(),
      events: eventsMap,
    );

    final batchItems = {_fixedEndpointId: batch};

    try {
      final result = await _pinpointClient
          .putEvents(
            PutEventsRequest(
              applicationId: _appId,
              eventsRequest: EventsRequest(batchItem: batchItems),
            ),
          )
          .result;

      // Parse the EndpointResponse portion of Result
      final endpointResponse = result.eventsResponse.results?[_fixedEndpointId];

      if (endpointResponse == null) {
        _logger.warn(
          'putEvents - no EndpointResponse object received from Pinpoint',
        );
      }

      // Parse the EndpointItemResponse portion of Result
      final endpointItemResponse = endpointResponse?.endpointItemResponse;

      if (endpointItemResponse == null) {
        _logger.warn(
          'putEvents - no PinpointEndpoint response received from Pinpoint',
        );
      }
      if (endpointItemResponse?.statusCode != 202) {
        _logger.warn(
          'putEvents - issue with PinpointEndpoint response: $endpointItemResponse',
        );
      }

      // Parse the individual response for each Event in batch
      final eventsItemResponse = endpointResponse?.eventsItemResponse;

      if (eventsItemResponse == null) {
        _logger.warn(
          'putEvents - no EventsItemResponse response received from Pinpoint',
        );
      }
      eventsItemResponse?.forEach((eventID, eventItemResponse) {
        if (!_equalsIgnoreCase(eventItemResponse.message ?? '', 'Accepted')) {
          _logger.warn(
            'putEvents - issue with eventId: $eventID \n $eventItemResponse',
          );

          if (_isRetryable(eventItemResponse.message ?? '')) {
            _logger.warn(
              'putEvents - recoverable issue, will attempt to resend: $eventID in next FlushEvents',
            );
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
      _logger
        ..warn('putEvents - exception encountered: ', e)
        ..warn(
            'Pinpoint event batch limits exceeded: 100 events / 4 mb total size / 1 mb max size per event \n '
            'Reduce your event size or change number of events in a batch')
        ..warn('Unrecoverable issue, deleting cache for local event batch');
    } on Exception catch (e) {
      _logger
        ..warn('putEvents - exception encountered: ', e)
        ..warn('Unrecoverable issue, deleting cache for local event batch');
    } finally {
      // Always delete local store of events
      // Unless a retryable exception has been received (see above)
      await _storageAdapter.deleteEvents(eventIdsToDelete.values);
    }
  }

  // If exception is recoverable, do not delete eventIds from local cache
  void _handleRecoverableException(
    SmithyHttpException e,
    Map<String, int> eventIdsToDelete,
  ) {
    _logger
      ..warn('putEvents - exception encountered: ', e)
      ..warn('Recoverable issue, will attempt to resend event batch');
    eventIdsToDelete.clear();
  }

  bool _isRetryable(String? message) {
    return message != null &&
        !_equalsIgnoreCase(message, 'ValidationException') &&
        !_equalsIgnoreCase(message, 'SerializationException') &&
        !_equalsIgnoreCase(message, 'BadRequestException');
  }

  bool _equalsIgnoreCase(String string1, String string2) {
    return string1.toLowerCase() == string2.toLowerCase();
  }
}
