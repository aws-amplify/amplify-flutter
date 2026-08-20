# amplify_event_enrichment

A Flutter implementation for on-device event enrichment with automatic session lifecycle tracking, device metadata collection, and a persistent client ID.

## Category / Platform Support

| Category         | Android | iOS | Web | Windows | MacOS | Linux |
| ---------------- | :-----: | :-: | :-: | :-----: | :---: | :---: |
| Event Enrichment |   ✅    | ✅  | ✅  |   ✅    |  ✅   |  ✅   |

## Getting Started

Create a client and record events. The client tracks session lifecycle
automatically, collects basic device metadata, and stamps a persistent client
ID on every event. `record` returns a `Result`, so failures surface through the
`Ok`/`Error` contract rather than as thrown exceptions.

```dart
import 'dart:convert';

import 'package:amplify_event_enrichment/amplify_event_enrichment.dart';

final client = await EventEnrichmentClientFlutter.create(
  appId: 'my-app-id',
  sdkMetadata: SdkMetadata(name: 'amplify-flutter', version: '2.0.0'),
);

final result = await client.record(
  'button_clicked',
  attributes: {'screen': 'home'},
);
switch (result) {
  case Ok(:final value):
    print(jsonEncode(value.toJson()));
  case Error(:final error):
    print('Failed to record event: $error');
}
```

For richer device information (manufacturer, model), supply a custom
`DeviceMetadataProvider` to `EventEnrichmentClientFlutter.create`. A custom
`ClientIdProvider` can be supplied the same way to source the client ID from
your own store.

## Sessions

Every event carries a session. Sessions follow app foreground/background
transitions by default, and a session that has been backgrounded longer than
`EventEnrichmentClientOptions.sessionTimeout` ends rather than resuming.

When a session ends, the client emits a `zSessionStopEventType`
(`_session.stop`) event through the configured `Sender`, carrying that
session's stop timestamp and duration alongside the same enrichment every other
event gets. This is the event type legacy Amplify Analytics used for the same
signal. It is emitted on an explicit `stopSession()`, on the session timeout
expiring, on `close()`, and when `startSession()` displaces a running session —
once per session in every case.

`stopSession()` and `close()` return a `Future` that completes once that event
has been handed to the sender, so awaiting them means the session's end has
been delivered. Sender failures on that path are logged, never thrown.

### Visit our [Web Site](https://docs.amplify.aws/) to learn more about AWS Amplify.
