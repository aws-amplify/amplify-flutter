// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

void main() {
  late StreamController<AuthHubEvent> controller;
  late StreamController<AuthHubEvent> additionalController;

  group('Hub', () {
    setUp(() async {
      Amplify.Hub.close();
      controller = StreamController.broadcast();
      additionalController = StreamController.broadcast();
    });

    tearDown(() async {
      await controller.close();
      await additionalController.close();
    });

    group('listen', () {
      test('single channel, single subscription', () {
        Amplify.Hub.addChannel(HubChannel.Auth, controller.stream);

        final Completer<AuthHubEvent> subscriber = Completer();
        Amplify.Hub.listen(HubChannel.Auth, subscriber.complete);

        expect(
          subscriber.future,
          completes,
          reason: 'The subscriber should receive the event',
        );

        controller.add(AuthHubEvent.sessionExpired());
      });

      test('can listen before channel registered', () {
        final Completer<AuthHubEvent> subscriber = Completer();
        expect(
          () => Amplify.Hub.listen(HubChannel.Auth, subscriber.complete),
          returnsNormally,
          reason: 'Listen before add should not throw',
        );

        Amplify.Hub.addChannel(HubChannel.Auth, controller.stream);

        expect(
          subscriber.future,
          completes,
          reason: 'The subscriber should receive the event even though it '
              'subscribed before the stream was added',
        );

        controller.add(AuthHubEvent.sessionExpired());
      });

      test('single channel, multiple subscriptions', () {
        Amplify.Hub.addChannel(HubChannel.Auth, controller.stream);

        final Completer<AuthHubEvent> subscriber1 = Completer();
        Amplify.Hub.listen(HubChannel.Auth, subscriber1.complete);

        final Completer<AuthHubEvent> subscriber2 = Completer();
        Amplify.Hub.listen(HubChannel.Auth, subscriber2.complete);

        expect(
          subscriber1.future,
          completes,
          reason: 'Both subscribers should receive the event',
        );
        expect(
          subscriber2.future,
          completes,
          reason: 'Both subscribers should receive the event',
        );

        controller.add(AuthHubEvent.sessionExpired());
      });

      test('multiple channel, single subscription', () {
        Amplify.Hub.addChannel(HubChannel.Auth, controller.stream);
        Amplify.Hub.addChannel(HubChannel.Auth, additionalController.stream);

        var events = 0;
        final Completer<void> subscriber = Completer();
        Amplify.Hub.listen(HubChannel.Auth, (AuthHubEvent event) {
          if (++events == 2) {
            subscriber.complete();
          }
        });

        expect(
          subscriber.future,
          completes,
          reason: 'The subscriber should receive the events of both streams',
        );

        controller.add(AuthHubEvent.sessionExpired());
        additionalController.add(AuthHubEvent.sessionExpired());
      });

      test('multiple channel, multiple subscriptions', () {
        Amplify.Hub.addChannel(HubChannel.Auth, controller.stream);
        Amplify.Hub.addChannel(HubChannel.Auth, additionalController.stream);

        var subscriber1Events = 0;
        final Completer<void> subscriber1 = Completer();
        Amplify.Hub.listen(HubChannel.Auth, (AuthHubEvent event) {
          if (++subscriber1Events == 2) {
            subscriber1.complete();
          }
        });

        var subscriber2Events = 0;
        final Completer<void> subscriber2 = Completer();
        Amplify.Hub.listen(HubChannel.Auth, (AuthHubEvent event) {
          if (++subscriber2Events == 2) {
            subscriber2.complete();
          }
        });

        controller.add(AuthHubEvent.sessionExpired());
        additionalController.add(AuthHubEvent.sessionExpired());

        expect(
          subscriber1.future,
          completes,
          reason: 'Both subscribers should receive the events of both streams',
        );
        expect(
          subscriber1.future,
          completes,
          reason: 'Both subscribers should receive the events of both streams',
        );
      });

      test('single subscriber error', () {
        Amplify.Hub.addChannel(HubChannel.Auth, controller.stream);

        final Completer<void> finished = Completer();
        Amplify.Hub.listen(
          HubChannel.Auth,
          (_) {},
          onError: finished.complete,
        );

        controller.addError(Exception());

        expect(
          finished.future,
          completes,
          reason: 'Subscriptions should be able to capture errors',
        );
      });

      test('multiple subscriber error', () {
        Amplify.Hub.addChannel(HubChannel.Auth, controller.stream);

        final Completer<void> finished1 = Completer();
        Amplify.Hub.listen(
          HubChannel.Auth,
          (_) {},
          onError: finished1.complete,
        );

        final Completer<void> finished2 = Completer();
        Amplify.Hub.listen(
          HubChannel.Auth,
          (_) {},
          onError: finished2.complete,
        );

        controller.addError(Exception());

        expect(
          finished1.future,
          completes,
          reason: 'Errors should be forwarded to all subscribers',
        );
        expect(
          finished2.future,
          completes,
          reason: 'Errors should be forwarded to all subscribers',
        );
      });
    });

    group('availableStreams', () {
      test('can listen to channel before plugin registration', () {
        final stream = Amplify.Hub.availableStreams[HubChannel.Auth];
        expect(stream, isNotNull);

        final Completer<void> gotEvent = Completer();
        stream!.listen((_) => gotEvent.complete());

        Amplify.Hub.addChannel(HubChannel.Auth, controller.stream);
        controller.add(AuthHubEvent.sessionExpired());

        expect(gotEvent.future, completes);
      });
    });
  });
}
