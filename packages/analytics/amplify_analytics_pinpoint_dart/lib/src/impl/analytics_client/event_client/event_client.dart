// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/event_storage_adapter.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/index_db/in_memory_queued_item_store.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/queued_item_store.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_creator/event_creator.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:smithy/smithy.dart';

/// {@template amplify_analytics_pinpoint_dart.event_client}
/// Manages storage and flush of analytics events.
///
/// - Uses [EventStorageAdapter] to cache analytics events
/// - Uses [PinpointClient] to flush analytics events to AWS Pinpoint
///
/// The events sent conform to the [Pinpoint Event](https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-events.html) online spec.
/// {@endtemplate}
class EventClient implements Closeable {
  /// {@macro amplify_analytics_pinpoint_dart.event_client}
  EventClient({
    required String pinpointAppId,
    required PinpointClient pinpointClient,
    required EndpointClient endpointClient,
    QueuedItemStore? eventStore,
    DeviceContextInfo? deviceContextInfo,
  })  : _pinpointAppId = pinpointAppId,
        _fixedEndpointId = endpointClient.fixedEndpointId,
        _pinpointClient = pinpointClient,
        _endpointClient = endpointClient,
        _eventStorage =
            EventStorageAdapter(eventStore ?? InMemoryQueuedItemStore()),
        _eventCreator = EventCreator(
          deviceContextInfo: deviceContextInfo,
        ) {
    _listenForFlushEvents();
  }

  final EventStorageAdapter _eventStorage;
  final String _pinpointAppId;
  final String _fixedEndpointId;
  final PinpointClient _pinpointClient;
  final EndpointClient _endpointClient;
  final EventCreator _eventCreator;

  /// Controller to queue requests to [flushEvents] so that there is only one
  /// concurrent request to the database and Pinpoint backend at a time.
  final StreamController<Completer<void>> _flushEventsController =
      StreamController();

  Future<void>? _pendingFlushEvent;
  Future<void> _listenForFlushEvents() async {
    await for (final completer in _flushEventsController.stream) {
      try {
        _pendingFlushEvent = completer.future;
        await _flushEvents();
        completer.complete();
      } on Object catch (e, st) {
        completer.completeError(e, st);
      } finally {
        _pendingFlushEvent = null;
      }
    }
  }

  static final AmplifyLogger _logger =
      AmplifyLogger.category(Category.analytics).createChild('EventClient');

  /// Record event to be sent in the next event batch on [flushEvents].
  Future<void> recordEvent({
    required String eventType,
    Session? session,
    AnalyticsProperties? properties,
  }) async {
    final pinpointEvent = _eventCreator.createPinpointEvent(
      eventType,
      session,
      properties,
    );
    await _eventStorage.saveEvent(pinpointEvent);
  }

  /// Register [AnalyticsProperties] to be sent with all future events.
  void registerGlobalProperties(
    AnalyticsProperties globalProperties,
  ) {
    return _eventCreator.registerGlobalProperties(globalProperties);
  }

  /// Unregister [AnalyticsProperties] to not be sent with all future events.
  void unregisterGlobalProperties(
    List<String> propertyNames,
  ) {
    return _eventCreator.unregisterGlobalProperties(propertyNames);
  }

  /// Send cached events as a batch to Pinpoint.
  /// Delete cached events that have been successfully sent.
  Future<void> flushEvents() {
    final completer = Completer<void>.sync();
    _flushEventsController.add(completer);
    return completer.future;
  }

  Future<void> _flushEvents() async {
    final storedEvents = await _eventStorage.retrieveEvents();

    if (storedEvents.isEmpty) {
      return;
    }

    final eventsToSend = <String, Event>{};
    final eventsToDelete = <String, StoredEvent>{};

    for (final storedEvent in storedEvents) {
      final id = storedEvent.data.id.toString();
      eventsToSend[id] = storedEvent.event;
      eventsToDelete[id] = storedEvent;
    }

    // The Event batch to be sent to Pinpoint
    final batch = EventsBatch(
      endpoint: _endpointClient.getPublicEndpoint(),
      events: eventsToSend,
    );

    final batchItems = {_fixedEndpointId: batch};

    try {
      final result = await _pinpointClient
          .putEvents(
            PutEventsRequest(
              applicationId: _pinpointAppId,
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
            eventsToDelete.remove(eventID);
          }
        }
      });
    } on BadRequestException catch (e) {
      _handleRecoverableException(e, eventsToDelete);
    } on InternalServerErrorException catch (e) {
      _handleRecoverableException(e, eventsToDelete);
    } on NotFoundException catch (e) {
      _handleRecoverableException(e, eventsToDelete);
    } on TooManyRequestsException catch (e) {
      _handleRecoverableException(e, eventsToDelete);
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
      if (eventsToDelete.isNotEmpty) {
        await _eventStorage.deleteEvents(eventsToDelete.values);
      }
    }
  }

  // If exception is recoverable, do not delete eventIds from local cache
  void _handleRecoverableException(
    SmithyHttpException e,
    Map<String, StoredEvent> eventIdsToDelete,
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

  @override
  Future<void> close() async {
    await _eventStorage.close();
    await _flushEventsController.close();
    await _pendingFlushEvent;
  }
}
