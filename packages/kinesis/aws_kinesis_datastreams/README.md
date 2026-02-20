# AWS Kinesis Data Streams for Dart

A Dart-only implementation for streaming data to Amazon Kinesis Data Streams with offline support.

## Features

- **Offline Support**: Records are persisted locally in SQLite and automatically sent when connectivity is restored
- **Automatic Retry**: Failed records are retried with configurable retry limits
- **Efficient Batching**: Records are batched according to Kinesis service limits (500 records or 5MB per batch)
- **Flexible Credentials**: Compatible with Amplify Auth credential providers via the `AWSCredentialsProvider` interface
- **Configurable Flushing**: Automatic interval-based flushing with manual flush support

## Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  aws_kinesis_datastreams: ^0.1.0
```

## Usage

### Basic Setup

```dart
import 'dart:convert';
import 'dart:typed_data';

import 'package:aws_kinesis_datastreams/aws_kinesis_datastreams.dart';

// Using static credentials (for testing only)
final kinesis = KinesisDataStreams(
  region: 'us-east-1',
  credentialsProvider: AWSCredentialsProvider(
    AWSCredentials(
      'YOUR_ACCESS_KEY',
      'YOUR_SECRET_KEY',
      'YOUR_SESSION_TOKEN', // Optional
      DateTime.now().add(Duration(hours: 1)), // Optional expiration
    ),
  ),
);
```

### Using with Amplify Auth

For production applications, integrate with Amplify Auth for secure credential management:

```dart
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:aws_kinesis_datastreams/aws_kinesis_datastreams.dart';

// Create an adapter for Amplify Auth credentials
class AmplifyCredentialsAdapter implements AWSCredentialsProvider {
  final AmplifyAuthCognito _auth;
  
  AmplifyCredentialsAdapter(this._auth);
  
  @override
  Future<AWSCredentials> retrieve() async {
    final session = await _auth.fetchAuthSession();
    final credentials = session.credentialsResult.value;
    return AWSCredentials(
      credentials.accessKeyId,
      credentials.secretAccessKey,
      credentials.sessionToken,
      credentials.expiration,
    );
  }
  
  @override
  String get runtimeTypeName => 'AmplifyCredentialsAdapter';
}

// Initialize with Amplify Auth
final kinesis = KinesisDataStreams(
  region: 'us-east-1',
  credentialsProvider: AmplifyCredentialsAdapter(amplifyAuth),
);
```

### Custom Configuration

```dart
final kinesis = KinesisDataStreams(
  region: 'us-east-1',
  credentialsProvider: myCredentialsProvider,
  options: KinesisDataStreamsOptions(
    cacheMaxBytes: 10 * 1024 * 1024, // 10MB cache
    maxRetries: 3,
    flushStrategy: KinesisDataStreamsInterval(
      interval: Duration(seconds: 60), // Flush every 60 seconds
    ),
  ),
);
```

### Recording Data

```dart
// Record data to a stream
await kinesis.record(
  data: Uint8List.fromList(utf8.encode('{"event": "user_action"}')),
  partitionKey: 'user-123',
  streamName: 'my-kinesis-stream',
);
```

### Manual Flush

```dart
// Manually flush all cached records
await kinesis.flush();
```

### Enable/Disable Recording

```dart
// Disable recording (records will be silently ignored)
kinesis.disable();

// Enable recording
kinesis.enable();
```

### Clear Cache

```dart
// Clear all cached records
await kinesis.clearCache();
```

### Cleanup

```dart
// Close the client when done
await kinesis.close();
```

## Security Considerations

### Unencrypted Storage

Records are stored in an **unencrypted SQLite database** on the device. This means:

- **Do not store sensitive data** (PII, credentials, etc.) without additional encryption
- Consider encrypting data before calling `record()` if it contains sensitive information
- The database file is stored in the application's data directory

### Credential Handling

The library handles credentials securely:

- Credentials are **resolved on-demand** before each API request
- Credentials are **never persisted** to disk
- Credentials are **never logged** (even in debug mode)
- Error messages are **sanitized** to prevent credential exposure

### Best Practices

1. **Use temporary credentials**: Prefer IAM roles with temporary credentials over long-lived access keys
2. **Implement credential refresh**: Your `AWSCredentialsProvider` should handle credential expiration
3. **Encrypt sensitive data**: Encrypt any sensitive data before recording
4. **Use HTTPS**: All API calls use HTTPS (enforced by the AWS SDK)

## API Reference

### KinesisDataStreams

The main client class for recording and streaming data.

| Method | Description |
|--------|-------------|
| `record()` | Records data to be sent to a Kinesis stream |
| `flush()` | Manually flushes all cached records |
| `enable()` | Enables the client to accept records |
| `disable()` | Disables the client (records are ignored) |
| `clearCache()` | Removes all cached records |
| `close()` | Closes the client and releases resources |

### KinesisDataStreamsOptions

Configuration options for the client.

| Property | Default | Description |
|----------|---------|-------------|
| `cacheMaxBytes` | 5MB | Maximum size of the local cache |
| `maxRetries` | 5 | Maximum retry attempts for failed records |
| `flushStrategy` | 30s interval | Strategy for automatic flushing |

### Exceptions

| Exception | Description |
|-----------|-------------|
| `KinesisDataStreamsException` | Base exception for all errors |
| `CacheFullException` | Thrown when the cache is full |
| `CredentialsException` | Thrown when credentials cannot be resolved |
| `NetworkException` | Thrown when a network error occurs |

## License

Apache License 2.0
