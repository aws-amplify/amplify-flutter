# Amplify Firehose

A Flutter implementation for streaming data to Amazon Data Firehose with offline support.

This package wraps `amplify_firehose_dart` and automatically resolves the storage path via `path_provider`.

## Features

- **Offline Support**: Records are persisted locally and sent when connectivity is restored
- **Automatic Retry**: Failed records are automatically retried with configurable limits
- **Batching**: Records are batched efficiently (up to 500 records or 4MB per batch)
- **Configurable Flush Strategy**: Automatic interval-based flushing (default: 30 seconds)

## Usage

```dart
import 'package:amplify_firehose/amplify_firehose.dart';

final client = await AmplifyFirehoseClient.create(
  region: 'us-east-1',
  credentialsProvider: myCredentialsProvider,
);

await client.record(
  data: Uint8List.fromList(utf8.encode('{"event": "click"}')),
  deliveryStreamName: 'my-delivery-stream',
);

final result = await client.flush();
print('Flushed ${result.recordsFlushed} records');

await client.close();
```

## License

Apache-2.0
