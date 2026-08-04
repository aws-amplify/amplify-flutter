# amplify_firehose

A Flutter implementation for streaming data to Amazon Data Firehose with offline support.

This package wraps `amplify_firehose_dart` and automatically resolves the storage path using `path_provider`.

## Getting Started

```dart
import 'package:amplify_firehose/amplify_firehose.dart';

final client = await AmplifyFirehoseClient.create(
  region: 'us-east-1',
  credentialsProvider: myCredentialsProvider,
);

await client.record(
  data: Uint8List.fromList(utf8.encode('{"event": "click"}')),
  streamName: 'my-delivery-stream',
);

final result = await client.flush();
```
