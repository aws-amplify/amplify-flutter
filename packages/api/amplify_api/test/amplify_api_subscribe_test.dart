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
import 'package:amplify_api/src/method_channel_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';
import 'package:async/async.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'graphql_helpers_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const methodChannel = MethodChannel('com.amazonaws.amplify/api');
  const eventChannel = 'com.amazonaws.amplify/api_observe_events';
  const standardCodec = StandardMethodCodec();
  const timeout = Timeout(Duration(seconds: 1));

  late AmplifyAPI api;

  setUpAll(() async {
    api = MockAmplifyAPI(
      modelProvider: ModelProvider.instance,
    );
    await Amplify.addPlugin(api);
  });

  /// Fires an event on the event channel from the mock platform side.
  void emitValues(ByteData? event) {
    ambiguate(ServicesBinding.instance)!
        .defaultBinaryMessenger
        .handlePlatformMessage(
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
    bool failOnCancel = false,
  }) {
    void sendEvents(String subscriptionId) {
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
    ambiguate(ServicesBinding.instance)!
        .defaultBinaryMessenger
        .setMockMessageHandler(
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

          // Schedule for the next event loop cycle so that "subscribe" completes
          // before we start sending events.
          scheduleMicrotask(() => sendEvents(subscriptionId));

          subscribeCalls++;
          return;
        case 'cancel':
          cancelCalls++;
          if (failOnCancel) {
            throw PlatformException(code: '');
          }
          return;
        default:
          fail('Unknown method: ${methodCall.method}');
      }
    });
  }

  // Test data
  const testData = 'test data';
  const exceptionDetails = {
    'message': 'Test error message',
    'recoverySuggestion': 'Test recovery suggestion',
    'underlyingException': 'Test underlying exception',
  };

  /// Matches a data event.
  final emitsData = allOf([
    isA<GraphQLResponse<String>>(),
    predicate<GraphQLResponse<String>>((response) {
      return response.data == testData;
    })
  ]);

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

  /// Matches a platform exception event.
  final emitsApiException = emitsError(equals(apiException));

  /// Creates a platform exception to emit from the mock platform side.
  /// Mimics the current behavior on the platform.
  PlatformException buildErrorEvent(GraphQLRequest<String> request) =>
      PlatformException(
        code: 'ApiException',
        message: request.id,
        details: exceptionDetails,
      );

  /// Creates a platform exception which cannot be deserialized or tied to
  /// an individual subscription.
  PlatformException buildUnknownErrorEvent(GraphQLRequest<String> _) =>
      PlatformException(code: 'UNKNOWN');

  /// Runs a test called [name] for the given number of subscriptions and subscribers.
  /// Each subscription will emit the events created by [eventBuilders] from the
  /// mock platform side and the resultant values will be matched against [matchers].
  void runTest({
    required String name,
    required int numSubscriptions,
    required int numSubscribers,
    required Iterable<Object Function(GraphQLRequest<String>)> eventBuilders,
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
            eventBuilders.map<Object>((build) => build(request));
      }

      // Monitor calls to onEstablished
      var onEstablishedCalls = 0;
      void onEstablished() => onEstablishedCalls++;

      setupEventChannel(values);
      final streams = List.generate(
        numSubscriptions * numSubscribers,
        (i) => StreamQueue(
          api.subscribe(
            requests[i % numSubscriptions],
            onEstablished: onEstablished,
          ),
        ),
      );

      for (var stream in streams) {
        await expectLater(stream, emitsInOrder(matchers));

        // Expect all events to have been consumed.
        // Do not await, since it will not be true until `cancel` is called.
        expectLater(stream.hasNext, completion(isFalse));
      }

      // Cancel the StreamQueue explicitly so they close their underlying
      // subscriptions.
      await Future.wait<void>(streams.map(
        (s) => s.cancel(immediate: true) ?? Future.value(),
      ));

      // Expects that subscribe and cancel are only called once on the
      // method channel for each subscription.
      expect(subscribeCalls, equals(numSubscriptions));
      expect(cancelCalls, equals(numSubscriptions));

      // Expect that onEstablished is called once for every call to `subscribe`.
      expect(onEstablishedCalls, equals(numSubscribers * numSubscriptions));
    }, timeout: timeout);
  }

  void runAll() {
    const subscriptions = [1, 5];
    const subscribers = [1, 5];

    setUp(() {
      // Reset calls to the method channel.
      subscribeCalls = 0;
      cancelCalls = 0;
    });

    for (var numSubscriptions in subscriptions) {
      for (var numSubscribers in subscribers) {
        // Tests that data events are correctly decoded by the stream transformer.
        runTest(
          name: 'data, done',
          numSubscriptions: numSubscriptions,
          numSubscribers: numSubscribers,
          eventBuilders: [buildDataEvent, buildDoneEvent],
          matchers: <Matcher>[
            emitsData,
            emitsDone,
          ],
        );

        // Tests that ApiExceptions are correctly decoded by the stream transformer.
        runTest(
          name: 'platform error, explicit done',
          numSubscriptions: numSubscriptions,
          numSubscribers: numSubscribers,
          eventBuilders: [buildErrorEvent, buildDoneEvent],
          matchers: <Matcher>[
            emitsApiException,
            emitsDone,
          ],
        );

        // Tests that an unhandled exception on the EventChannel implicitly
        // closes all subscriptions.
        runTest(
          name: 'unknown error, implicit done',
          numSubscriptions: numSubscriptions,
          numSubscribers: numSubscribers,
          eventBuilders: [buildUnknownErrorEvent],
          matchers: <Matcher>[
            emitsError(anything),
            emitsDone,
          ],
        );

        // Tests that a PlatformException which can be parsed and relayed to
        // a subscription does not cause the underlying Stream to close.
        runTest(
          name: 'data, platform error, data',
          numSubscriptions: numSubscriptions,
          numSubscribers: numSubscribers,
          eventBuilders: [
            buildDataEvent,
            buildErrorEvent,
            buildDataEvent,
          ],
          matchers: <Matcher>[
            emitsData,
            emitsApiException,
            emitsData,
          ],
        );
      }
    }

    // Tests that subscribing to the same GraphQLRequest object twice
    // returns the same subscription if it hasn't been cancelled or a new
    // one if it has.
    test('1 request multiple subscriptions', () async {
      final request = GraphQLRequest<String>(document: '');

      setupEventChannel({
        request.id: <Object>[
          buildDataEvent(request),
          buildDoneEvent(request),
        ],
      });
      final stream1 = StreamQueue(api.subscribe(request));

      await expectLater(
        stream1,
        emitsInOrder(<Matcher>[
          emitsData,
          emitsDone,
        ]),
      );
      await stream1.cancel();

      expect(subscribeCalls, equals(1));
      expect(cancelCalls, equals(1));

      setupEventChannel({
        request.id: <Object>[
          buildUnknownErrorEvent(request),
        ],
      });
      final stream2 = StreamQueue(api.subscribe(request));

      await expectLater(
        stream2,
        emitsInOrder(<Matcher>[
          emitsError(anything),
          emitsDone,
        ]),
      );
      await stream2.cancel();

      expect(subscribeCalls, equals(2));
      expect(cancelCalls, equals(2));

      setupEventChannel({
        request.id: <Object>[
          buildDataEvent(request),
          buildDoneEvent(request),
        ],
      });
      final stream3 = StreamQueue(api.subscribe(request));

      await expectLater(
        stream3,
        emitsInOrder(<Matcher>[
          emitsData,
          emitsDone,
        ]),
      );
      await stream3.cancel();

      expect(subscribeCalls, equals(3));
      expect(cancelCalls, equals(3));
    });

    test('fail on cancel', () async {
      final request = GraphQLRequest<String>(document: '');

      setupEventChannel(
        {
          request.id: <Object>[
            buildDataEvent(request),
            buildDoneEvent(request),
          ],
        },
        failOnCancel: true,
      );
      final stream1 = StreamQueue(api.subscribe(request));

      await expectLater(
        stream1,
        emitsInOrder(<Matcher>[
          emitsData,
          emitsDone,
        ]),
      );
      await stream1.cancel();

      expect(subscribeCalls, equals(1));
      expect(cancelCalls, equals(1));

      setupEventChannel({
        request.id: <Object>[
          buildDataEvent(request),
          buildDoneEvent(request),
        ],
      });
      final stream2 = StreamQueue(api.subscribe(request));

      await expectLater(
        stream2,
        emitsInOrder(<Matcher>[
          emitsData,
          emitsDone,
        ]),
      );
      await stream2.cancel();

      expect(subscribeCalls, equals(2));
      expect(cancelCalls, equals(2));
    });

    test(
        'subscription event data decoded to a model instance for model request',
        () async {
      final request = ModelSubscriptions.onCreate(Blog.classType);
      const blogId = 'abc123';

      setupEventChannel({
        request.id: <Object>[
          {
            'id': request.id,
            'payload': {
              'errors': <Map>[],
              'data': '{"onCreateBlog": {"id": "$blogId", "name": "foo"}}',
            },
            'type': 'DATA'
          },
        ],
      });
      final stream = StreamQueue(api.subscribe(request));

      StreamMatcher emitsBlogData = emits(allOf([
        isA<GraphQLResponse<Blog>>(),
        predicate<GraphQLResponse<Blog>>((response) {
          return response.data?.id == blogId;
        })
      ]));
      await expectLater(stream, emitsBlogData);
      await stream.cancel();
    });
  }

  group('GraphQL Subscription', runAll);
}
