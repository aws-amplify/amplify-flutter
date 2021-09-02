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
import 'package:async/async.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const methodChannel = MethodChannel('com.amazonaws.amplify/api');
  const eventChannel = 'com.amazonaws.amplify/api_observe_events';
  const standardCodec = StandardMethodCodec();
  const timeout = Timeout(Duration(seconds: 1));

  AmplifyAPI api = AmplifyAPI();

  /// Fires an event on the event channel from the mock platform side.
  void emitValues(ByteData? event) {
    ServicesBinding.instance!.defaultBinaryMessenger.handlePlatformMessage(
      eventChannel,
      event,
      (ByteData? reply) {},
    );
  }

  // Monitors calls to subscribe and cancel on the method channel.

  var subscribeCalls = 0;
  var cancelCalls = 0;

  /// Registers a set of values to be emitted by the event handler for each
  /// of the subscription IDs in the test. Events are emitted in order once
  /// a subscribe call is made for that subscription ID.
  ///
  /// If [eventSendTrigger] is not specified, events are sent immediately.
  void setupEventChannel(
    Map<String, Iterable> valuesBySubscriptionId, {
    Future<void>? eventSendTrigger,
  }) {
    // Reset calls to the method channel.
    subscribeCalls = 0;
    cancelCalls = 0;

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
          if (eventSendTrigger != null) {
            eventSendTrigger.then((_) => sendEvents(subscriptionId));
          } else {
            sendEvents(subscriptionId);
          }
          subscribeCalls++;
          return;
        case 'cancel':
          cancelCalls++;
          return;
        default:
          fail('Unknown method: ${methodCall.method}');
      }
    });
  }

  // Ensures that subscribe and cancel are only called once on the
  // method channel for each subscription.
  Future<void> expectPlatformCalls(dynamic matcher) async {
    await Future<void>.delayed(Duration.zero);

    expect(subscribeCalls, matcher);
    expect(cancelCalls, matcher);
  }

  // Test data

  const testData = 'test data';
  const exceptionDetails = {
    'message': 'Test error message',
    'recoverySuggestion': 'Test recovery suggestion',
    'underlyingException': 'Test underlying exception',
  };

  /// Creates a platform data event.
  Map buildDataEvent(GraphQLRequest<String> request) => <String, dynamic>{
        'id': request.id,
        'payload': {
          'errors': <Map>[],
          'data': testData,
        },
        'type': 'DATA'
      };

  /// Creates a platform done event.
  Map buildDoneEvent(GraphQLRequest<String> request) => <String, dynamic>{
        'id': request.id,
        'type': 'DONE',
      };

  /// ApiException used to verify conversion from emitted PlatformExceptions.
  final apiException = ApiException.fromMap(exceptionDetails);

  /// Creates a platform exception to emit from the mock platform side.
  /// Mimics the current behavior on the platform.
  PlatformException buildPlatformException(GraphQLRequest<String> request) =>
      PlatformException(
        code: 'ApiException',
        message: request.id,
        details: exceptionDetails,
      );

  // Simulates a data + a done event.

  final dataEventBuilders = [buildDataEvent, buildDoneEvent];
  final dataMatchers = <Matcher>[
    allOf([
      isA<GraphQLResponse<String>>(),
      predicate<GraphQLResponse<String>>((response) {
        return response.data == testData;
      })
    ]),
    emitsDone,
  ];

  // Simulates an error + a done event.

  final errorEventBuilders = [buildPlatformException, buildDoneEvent];
  final errorMatchers = <Matcher>[
    emitsError(equals(apiException)),
    emitsDone,
  ];

  /// Runs a test called [name] for the given number of subscriptions and subscribers.
  /// Each subscription will emit the events created by [eventBuilders] from the
  /// mock platform side and the resultant values will be matched against [matchers].
  void runTest({
    required String name,
    required int numSubscriptions,
    required int numSubscribers,
    required Iterable<Object? Function(GraphQLRequest<String>)> eventBuilders,
    required Iterable<Matcher> matchers,
  }) {
    test('$numSubscriptions subscriptions $numSubscribers subscribers $name',
        () async {
      final requests = <GraphQLRequest<String>>[];
      final values = <String, Iterable>{};
      for (var i = 0; i < numSubscriptions; i++) {
        final request = GraphQLRequest<String>(document: '');
        requests.add(request);

        values[request.id] =
            eventBuilders.map<Object?>((build) => build(request));
      }

      final trigger = Completer<void>();
      setupEventChannel(
        values,
        eventSendTrigger: trigger.future,
      );
      final streams = List.generate(
        numSubscriptions * numSubscribers,
        (i) => StreamQueue(
          api.subscribe(requests[i % numSubscriptions]),
        ),
      );
      trigger.complete();

      for (var stream in streams) {
        expect(stream, emitsInOrder(matchers));
      }

      await Future.wait<void>(streams.map(
        (s) => s.cancel() ?? Future.value(),
      ));
      await expectPlatformCalls(equals(numSubscriptions));
    }, timeout: timeout);
  }

  void runAll() {
    const subscriptions = [1, 5];

    for (var numSubscriptions in subscriptions) {
      for (var numSubscribers in subscriptions) {
        runTest(
          name: 'data done',
          numSubscriptions: numSubscriptions,
          numSubscribers: numSubscribers,
          eventBuilders: dataEventBuilders,
          matchers: dataMatchers,
        );

        runTest(
          name: 'error done',
          numSubscriptions: numSubscriptions,
          numSubscribers: numSubscribers,
          eventBuilders: errorEventBuilders,
          matchers: errorMatchers,
        );
      }
    }
  }

  group('GraphQL Subscription', runAll);
}
