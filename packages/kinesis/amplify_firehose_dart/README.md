# Amplify Firehose Dart

A Dart-only implementation for streaming data to Amazon Data Firehose with offline support, automatic retry, and configurable batching.

This is the Dart-only core package. For Flutter apps, use the `amplify_firehose` package which resolves the storage path automatically via `path_provider`.

## Features

- **Offline Support**: Records are persisted to SQLite and sent when connectivity is restored
- **Automatic Retry**: Failed records are automatically retried with configurable limits
- **Batching**: Records are batched efficiently (up to 500 records or 4MB per batch)
- **Configurable Flush Strategy**: Automatic interval-based flushing (default: 30 seconds)

## Usage

```dart
import 'package:amplify_firehose_dart/amplify_firehose_dart.dart';

final client = AmplifyFirehoseClient(
  region: 'us-east-1',
  credentialsProvider: StaticCredentials('accessKeyId', 'secretAccessKey'),
);

// Record data
await client.record(
  data: Uint8List.fromList(utf8.encode('{"event": "click"}')),
  deliveryStreamName: 'my-delivery-stream',
);

// Flush and close when done
await client.flush();
await client.close();
```

## Security Considerations

**Unencrypted Storage**: Records are stored in an unencrypted SQLite database on the device. Do not store sensitive data (PII, credentials, etc.) without additional encryption.

## License

Apache-2.0
