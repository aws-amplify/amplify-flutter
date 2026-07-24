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
import 'package:amplify_event_enrichment/amplify_event_enrichment.dart';

final client = await EventEnrichmentClientFlutter.create(
  appId: 'my-app-id',
  sdkMetadata: SdkMetadata(name: 'amplify-flutter', version: '2.0.0'),
);

final result = client.record('button_clicked', attributes: {'screen': 'home'});
switch (result) {
  case Ok(:final value):
    print(value.toJson());
  case Error(:final error):
    print('Failed to record event: $error');
}
```

For richer device information (manufacturer, model), supply a custom
`DeviceMetadataProvider` to `EventEnrichmentClientFlutter.create`.

### Visit our [Web Site](https://docs.amplify.aws/) to learn more about AWS Amplify.
