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
  // Applied before the launch session starts, so its start event can carry
  // them. See Sessions below.
  initialUserId: 'user-1',
  initialGlobalAttributes: const {'env': 'prod'},
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
`EventEnrichmentClientOptions.sessionTimeout` ends rather than resuming. The
timeout is measured from the moment the app was backgrounded, so it holds on
platforms that suspend timers while the app is in the background. The ended
session is stamped as stopped when the app was backgrounded, so its duration
leaves out that final background stretch. Events recorded during that stretch
still belong to the session, so their timestamps can be later than its stop.

When a `sender` is configured and `EventEnrichmentClientOptions.emitSessionEvents`
is `true` (the default), session boundaries are sent through it as events, using
the event types legacy Amplify Analytics used for the same signals:

- `zSessionStartEventType` (`_session.start`) when a session starts, carrying
  its id and start timestamp
- `zSessionStopEventType` (`_session.stop`) when it ends, carrying its stop
  timestamp and duration as well

Both get the same enrichment every other event gets. A start is emitted when the
client is constructed with `autoSessionTracking` on, on an explicit
`startSession()`, on a `record()` that has no live session to use, and when a
resume follows a session timeout. A stop is emitted on an explicit
`stopSession()`, on the session timeout expiring (noticed at the next resume or
`record()` if the platform suspended the timer), on `close()`, and when
`startSession()` displaces a running session. A displacement emits the stop
before the start, and backgrounding and foregrounding inside the timeout window
emits nothing, since it is the same session throughout. With session events
enabled, each session produces exactly one start and at most one stop.

Because the launch session starts as soon as the client is created, `setUserId`
and `addGlobalAttribute` cannot reach its `_session.start`. Pass `initialUserId`,
`initialGlobalAttributes` and `initialGlobalMetrics` to `create()` for values
that first event should carry:

```dart
final client = await EventEnrichmentClientFlutter.create(
  appId: 'my-app-id',
  sdkMetadata: SdkMetadata(name: 'amplify-flutter', version: '2.0.0'),
  initialUserId: 'user-1',
  initialGlobalAttributes: const {'env': 'prod'},
);
```

`startSession()`, `stopSession()` and `close()` return a `Future` that completes
once the sender's `send` has completed for the session events they emit. Sender
failures on these paths are logged, never thrown.

### Visit our [Web Site](https://docs.amplify.aws/) to learn more about AWS Amplify.
