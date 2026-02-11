# Worker Bee Example App

A comprehensive example application demonstrating the features of the `worker_bee` and `worker_bee_builder` packages for cross-platform isolated worker runtime in Flutter.

## Overview

This example showcases an **Echo Worker** that processes messages in a separate thread/isolate, demonstrating all key features of the Worker Bee framework:

### Features Demonstrated

1. **Cross-Platform Workers**: Works on both VM (Isolates) and Web (Web Workers)
2. **Type-Safe Message Passing**: Using `built_value` for serialization
3. **Worker Lifecycle Management**: Start, stop, and monitor worker state
4. **Bidirectional Communication**: Send messages to worker and receive responses
5. **Worker Logging**: Real-time log streaming from worker threads
6. **Stateful Workers**: Worker maintains message count across invocations
7. **Async Processing**: Configurable processing delays
8. **Error Handling**: Robust error propagation and handling

## Project Structure

```
lib/
├── main.dart                    # Main entrypoint (exports workers.dart)
├── workers.dart                 # Worker hive with @WorkerHive annotation
├── models/
│   ├── echo_message.dart        # Message models with @BuiltValue
│   └── serializers.dart         # Serializers configuration
└── workers/
    └── echo_worker.dart         # Echo worker implementation
```

## The Echo Worker

The `EchoWorker` demonstrates a practical worker implementation that:

- Receives text messages from the main thread
- Processes each message with an optional delay
- Returns the original message plus:
  - Reversed version of the message
  - Message count
  - Processing timestamp
- Logs all operations for visibility

## How It Works

### 1. Message Models

Messages are defined using `built_value` for type-safe serialization:

```dart
@BuiltValue()
abstract class EchoMessage {
  String get message;
  int? get delayMs;
}

@BuiltValue()
abstract class EchoResponse {
  String get echoedMessage;
  DateTime get processedAt;
  int get messageCount;
  String get reversedMessage;
}
```

### 2. Worker Implementation

The worker extends `WorkerBeeBase` and implements the `run` method:

```dart
@WorkerBee('lib/workers.dart')
class EchoWorker extends WorkerBeeBase<EchoMessage, EchoResponse> {
  @override
  Future<EchoResponse?> run(
    Stream<EchoMessage> listen,
    StreamSink<EchoResponse> respond,
  ) async {
    // Process messages from the stream
    await for (final message in listen) {
      // Process and respond
      respond.add(response);
    }
  }
}
```

### 3. Worker Hive

The hive registers all workers and handles routing:

```dart
@WorkerHive([
  EchoWorker,
])
library;

void main() {
  runHive(workers, () {
    runApp(const WorkerBeeExampleApp());
  });
}
```

### 4. Using the Worker

From the main thread:

```dart
// Create and spawn the worker
final worker = EchoWorker();
await worker.spawn();

// Send messages
worker.add(EchoMessage((b) => b.message = 'Hello'));

// Listen to responses
worker.stream.listen((response) {
  print('Received: ${response.echoedMessage}');
});

// Listen to logs
worker.logs.listen((log) {
  print('[${log.level}] ${log.message}');
});

// Close when done
await worker.close();
```

## Running the Example

### Prerequisites

1. Flutter SDK (^3.10.1)
2. Dependencies installed:
   - `worker_bee`
   - `worker_bee_builder`
   - `built_value`

### Build and Run

1. Install dependencies:
   ```bash
   flutter pub get
   ```

2. Generate code:
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

3. Run the app:
   ```bash
   flutter run
   ```

### For Web Platform

When targeting web, you need to compile the worker:

```bash
dart compile js lib/workers.dart -o web/workers.js
```
