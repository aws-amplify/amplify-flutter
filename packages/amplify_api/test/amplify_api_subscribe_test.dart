/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'dart:async';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api_plugin_interface/amplify_api_plugin_interface.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const methodChannel = MethodChannel('com.amazonaws.amplify/api');
  const eventChannel = 'com.amazonaws.amplify/api_observe_events';
  const standardCodec = StandardMethodCodec();

  AmplifyAPI api = AmplifyAPI();

  /// Fires an event on the event channel from the mock platform side.
  void emitValues(ByteData? event) {
    ServicesBinding.instance!.defaultBinaryMessenger.handlePlatformMessage(
      eventChannel,
      event,
      (ByteData? reply) {},
    );
  }

  /// Registers a set of values to be emitted by the event handler for each
  /// of the subscription IDs in the test. Events are emitted in order once
  /// a subscribe call is made for that subscription ID.
  void setupEventChannel(Map<String, Iterable> valuesBySubscriptionId) {
    Future<void> sendEvents(String subscriptionId) async {
      // Force an event loop cycle so that "subscribe" completes below
      // before we start sending events.
      await Future<void>.delayed(Duration.zero);

      for (var value in valuesBySubscriptionId[subscriptionId]!) {
        if (value is PlatformException) {
          emitValues(standardCodec.encodeErrorEnvelope(
            code: value.code,
            message: value.message,
            details: value.details,
          ));
        } else {
          emitValues(standardCodec.encodeSuccessEnvelope(value));
        }
      }
    }

    // Set the event channel handler which manages listeners on the event channel.
    // This is mostly a no-op in these tests, since a `subscribe` event on the
    // method channel is what initializes GraphQL subscriptions, not adding a listener
    // to the event channel.
    ServicesBinding.instance!.defaultBinaryMessenger.setMockMessageHandler(
      eventChannel,
      (ByteData? message) async {
        final methodCall = standardCodec.decodeMethodCall(message);

        switch (methodCall.method) {
          case 'listen':
            return standardCodec.encodeSuccessEnvelope(null);
          case 'cancel':
            return standardCodec.encodeSuccessEnvelope(null);
          default:
            fail('Unknown method: ${methodCall.method}');
        }
      },
    );

    // Set the method channel handler. Handles sending events for a subscription
    // when the subscription is registered.
    methodChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      switch (methodCall.method) {
        case 'subscribe':
          final arguments = methodCall.arguments as Map;
          final subscriptionId = arguments['cancelToken'] as String;
          sendEvents(subscriptionId);
          return;
        case 'cancel':
          return;
        default:
          fail('Unknown method: ${methodCall.method}');
      }
    });
  }

  group('GraphQL Subscription', () {
    const testData = 'test data';
    const exceptionDetails = {
      'message': 'Test error message',
      'recoverySuggestion': 'Test recovery suggestion',
      'underlyingException': 'Test underlying exception',
    };

    /// ApiException used to verify conversion from emitted PlatformExceptions.
    final apiException = ApiException.fromMap(exceptionDetails);

    /// Creates a platform exception to emit from the mock platform side.
    /// Mimics the current behavior on the platform.
    PlatformException createPlatformException(String subscriptionId) =>
        PlatformException(
          code: 'ApiException',
          message: subscriptionId,
          details: exceptionDetails,
        );

    test('emits data and done event', () async {
      final request = GraphQLRequest<String>(document: '');

      final dataEvent = {
        'id': request.id,
        'payload': {
          'errors': <Map>[],
          'data': testData,
        },
        'type': 'DATA'
      };
      final doneEvent = {'id': request.id, 'type': 'DONE'};

      setupEventChannel({
        request.id: <Map>[
          dataEvent,
          doneEvent,
        ],
      });
      final responseStream = api.subscribe(request);

      expect(
        responseStream,
        emitsInOrder(<Matcher>[
          allOf([
            isA<GraphQLResponse<String>>(),
            predicate<GraphQLResponse<String>>((response) {
              return response.data == testData;
            })
          ]),
          emitsDone,
        ]),
      );
    });

    test('emits error', () async {
      final request = GraphQLRequest<String>(document: '');

      final platformException = createPlatformException(request.id);
      final doneEvent = {'id': request.id, 'type': 'DONE'};

      setupEventChannel({
        request.id: <dynamic>[
          platformException,
          doneEvent,
        ],
      });
      final responseStream = api.subscribe(request);

      expect(
        responseStream,
        emitsInOrder(<Matcher>[
          emitsError(equals(apiException)),
          emitsDone,
        ]),
      );
    });

    test('multi-emits data and done event', () async {
      final request1 = GraphQLRequest<String>(document: '');
      final request2 = GraphQLRequest<String>(document: '');

      final dataEvent1 = {
        'id': request1.id,
        'payload': {
          'errors': <Map>[],
          'data': testData,
        },
        'type': 'DATA'
      };
      final doneEvent1 = {'id': request1.id, 'type': 'DONE'};
      final dataEvent2 = {
        'id': request2.id,
        'payload': {
          'errors': <Map>[],
          'data': testData,
        },
        'type': 'DATA'
      };
      final doneEvent2 = {'id': request2.id, 'type': 'DONE'};

      setupEventChannel({
        request1.id: <Map>[
          dataEvent1,
          doneEvent1,
        ],
        request2.id: <Map>[
          dataEvent2,
          doneEvent2,
        ],
      });
      final responseStream1 = api.subscribe(request1);
      final responseStream2 = api.subscribe(request2);

      expect(
        responseStream1,
        emitsInOrder(<Matcher>[
          allOf([
            isA<GraphQLResponse<String>>(),
            predicate<GraphQLResponse<String>>((response) {
              return response.data == testData;
            })
          ]),
          emitsDone,
        ]),
      );

      expect(
        responseStream2,
        emitsInOrder(<Matcher>[
          allOf([
            isA<GraphQLResponse<String>>(),
            predicate<GraphQLResponse<String>>((response) {
              return response.data == testData;
            })
          ]),
          emitsDone,
        ]),
      );
    });

    test('multi-emits error', () async {
      final request1 = GraphQLRequest<String>(document: '');
      final request2 = GraphQLRequest<String>(document: '');

      final platformException1 = createPlatformException(request1.id);
      final platformException2 = createPlatformException(request2.id);
      final doneEvent1 = {'id': request1.id, 'type': 'DONE'};
      final doneEvent2 = {'id': request2.id, 'type': 'DONE'};

      setupEventChannel({
        request1.id: <dynamic>[
          platformException1,
          doneEvent1,
        ],
        request2.id: <dynamic>[
          platformException2,
          doneEvent2,
        ],
      });
      final responseStream1 = api.subscribe(request1);
      final responseStream2 = api.subscribe(request2);

      expect(
        responseStream1,
        emitsInOrder(<Matcher>[
          emitsError(equals(apiException)),
          emitsDone,
        ]),
      );

      expect(
        responseStream2,
        emitsInOrder(<Matcher>[
          emitsError(equals(apiException)),
          emitsDone,
        ]),
      );
    });
  });
}
