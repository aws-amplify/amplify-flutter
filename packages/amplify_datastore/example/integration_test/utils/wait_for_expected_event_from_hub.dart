// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_flutter/amplify_flutter.dart';

const DEFAULT_TIMEOUT = const Duration(seconds: 20);

class WaitForExpectedEventFromHub<T extends DataStoreHubEventPayload> {
  final Completer<T> _completer = Completer();
  late StreamSubscription<DataStoreHubEvent> hubSubscription;
  final bool Function(DataStoreHubEventPayload?) eventMatcher;
  final String eventName;
  Duration timeout;

  WaitForExpectedEventFromHub({
    required this.eventMatcher,
    required this.eventName,
    Duration timeout = DEFAULT_TIMEOUT,
  }) : this.timeout = timeout;

  Future<T> start() {
    hubSubscription = Amplify.Hub.listen(HubChannel.DataStore, (
      DataStoreHubEvent event,
    ) {
      if (event.eventName == this.eventName) {
        if (this.eventMatcher(event.payload)) {
          hubSubscription.cancel();
          _completer.complete(event.payload as T);
        }
      }
    });

    return _completer.future.timeout(timeout);
  }
}

Future<SubscriptionDataProcessedEvent>
getExpectedSubscriptionDataProcessedEvent({
  required bool Function(SubscriptionDataProcessedEvent) eventMatcher,
}) async {
  var getter = WaitForExpectedEventFromHub<SubscriptionDataProcessedEvent>(
    eventName: 'subscriptionDataProcessed',
    eventMatcher: (DataStoreHubEventPayload? eventPayload) {
      if (eventPayload is SubscriptionDataProcessedEvent) {
        return eventMatcher(eventPayload);
      }

      return false;
    },
  );
  return getter.start();
}
