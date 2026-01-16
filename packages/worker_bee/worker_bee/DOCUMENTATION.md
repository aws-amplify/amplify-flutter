# Worker Bee Documentation

## Overview

Worker Bee is a cross-platform isolated worker runtime for Dart that provides a unified API for spawning and managing background workers on both Web (using Web Workers) and VM (using Isolates). It enables true concurrency in Dart applications across different platforms with a consistent interface.

> **Note**: This project is an experimental multiplatform concurrency solution used internally in Amplify client libraries. There are currently no plans to support this for external use.

## Architecture

### Core Concepts

**Worker Bee**: A worker is a unit of concurrent computation that runs in isolation from the main thread. Workers communicate with the main thread through message passing.

**Worker Hive**: A collection of workers that can be spawned from a single entrypoint. The hive manages worker lifecycle and routing.

**Message Passing**: Workers communicate using typed messages through `StreamChannel`s, ensuring type-safe communication between threads.

### Platform Implementation

Worker Bee uses conditional imports to provide platform-specific implementations:

- **VM**: Uses Dart Isolates for true parallel execution
- **Web**: Uses Web Workers for concurrent execution in browsers

## Key Components

### 1. WorkerBee Annotation

The `@WorkerBee` annotation marks a class as a worker bee and specifies its hive location.

```dart
@WorkerBee('lib/workers.dart')
class MyWorker extends WorkerBeeBase<MyRequest, MyResponse> {
  @override
  Future<MyResponse?> run(
    Stream<MyRequest> listen, 
    StreamSink<MyResponse> respond
  ) async {
    await for (final request in listen) {
      // Process request
      final result = processRequest(request);
      respond.add(result);
    }
    return null;
  }
}
```

**Parameters:**
- `hivePath`: The path to the hive containing this worker, relative to the package root

### 2. WorkerHive Annotation

The `@WorkerHive` annotation marks the main entrypoint and declares which workers are available.

```dart
@WorkerHive([
  MyWorker,
  AnotherWorker,
])
void main() {
  runHive(workers, () {
    // Optional: Run your app if not in a worker
  });
}
```

**Parameters:**
- `workers`: List of worker bee types available in this hive

### 3. WorkerBeeBase<Request, Response>

The base class that all workers must extend. It provides the core functionality for worker lifecycle management.

**Type Parameters:**
- `Request`: The type of messages the worker receives (must extend `Object`)
- `Response`: The type of messages the worker sends back (can be `void`)

**Key Methods:**

#### `run(Stream<Request> listen, StreamSink<Response> respond)`
The main worker logic. This method is called when the worker starts and receives:
- `listen`: A stream of incoming requests from the main thread
- `respond`: A sink to send responses back to the main thread

#### `spawn({String? jsEntrypoint})`
Spawns the worker in a separate thread/WebWorker.

```dart
final worker = MyWorker();
await worker.spawn();
```

#### `connect({StreamChannel<LogEntry>? logsChannel})`
Connects to the spawning thread. Called automatically in workers.

#### Communication Methods

```dart
// Send a message to the worker
worker.add(MyRequest(data: 'hello'));

// Listen to responses from the worker
worker.stream.listen((response) {
  print('Received: ${response.data}');
});

// Wait for the final result
final result = await worker.result;
```

#### `close({bool force = false})`
Closes the worker and cleans up resources.

```dart
await worker.close();
```

**Properties:**
- `stream`: Stream of responses from the worker
- `sink`: Sink for sending requests to the worker
- `logs`: Stream of log entries from the worker
- `result`: Future that completes with the final result
- `isRemoteWorker`: Whether the worker is running in a separate thread
- `isCompleted`: Whether the worker has finished

### 4. Serialization

Worker Bee uses `built_value` for message serialization. You must provide serializers for your request and response types.

```dart
class MyWorker extends WorkerBeeBase<MyRequest, MyResponse> {
  MyWorker() : super(serializers: mySerializers);
  
  // ... implementation
}
```

The worker will validate that serializers exist for both request and response types at initialization.

### 5. Logging

Workers support integrated logging using AWS Common's logging infrastructure.

```dart
// In your worker
logger.info('Processing request');
logger.debug('Debug details');
logger.error('Error occurred', error, stackTrace);

// In main thread
worker.logs.listen((log) {
  print('[${log.level}] ${log.message}');
});
```

**Log Properties:**
- Automatic serialization of log entries between threads
- Support for all log levels (verbose, debug, info, warning, error)
- Preservation of stack traces

### 6. Error Handling

Worker Bee provides structured error handling with `WorkerBeeException`.

```dart
try {
  await worker.result;
} on WorkerBeeException catch (e, st) {
  print('Worker error: ${e.message}');
  print('Stack trace: ${e.stackTrace}');
}
```

Unhandled errors in workers are automatically:
- Serialized with stack traces
- Propagated to the main thread
- Wrapped in `WorkerBeeException`

## Usage Patterns

### Basic Worker

```dart
// Define your message types
@BuiltValue()
abstract class CalculateRequest 
    implements Built<CalculateRequest, CalculateRequestBuilder> {
  int get number;
  
  CalculateRequest._();
  factory CalculateRequest([void Function(CalculateRequestBuilder) updates]) 
      = _$CalculateRequest;
}

// Create worker
@WorkerBee('lib/workers.dart')
class CalculatorWorker extends WorkerBeeBase<CalculateRequest, int> {
  CalculatorWorker() : super(serializers: mySerializers);
  
  @override
  Future<int?> run(
    Stream<CalculateRequest> listen,
    StreamSink<int> respond,
  ) async {
    await for (final request in listen) {
      final result = request.number * request.number;
      respond.add(result);
    }
    return null;
  }
}

// Use the worker
final worker = CalculatorWorker();
await worker.spawn();

worker.add(CalculateRequest((b) => b.number = 5));

worker.stream.listen((result) {
  print('Result: $result'); // Output: Result: 25
});

await worker.close();
```

### Worker with Final Result

```dart
@WorkerBee('lib/workers.dart')
class DataProcessor extends WorkerBeeBase<Data, void> {
  DataProcessor() : super(serializers: mySerializers);
  
  @override
  Future<void> run(
    Stream<Data> listen,
    StreamSink<void> respond,
  ) async {
    final allData = <Data>[];
    await for (final data in listen) {
      allData.add(data);
    }
    
    // Process all data and return final result
    final summary = processAll(allData);
    return summary;
  }
}

// Usage
final processor = DataProcessor();
await processor.spawn();

processor.add(data1);
processor.add(data2);
await processor.sink.close(); // Signal end of input

final result = await processor.result; // Wait for final result
```

### Worker Hive Setup

```dart
// workers.dart
import 'package:worker_bee/worker_bee.dart';

part 'workers.worker.dart'; // Generated file

@WorkerHive([
  CalculatorWorker,
  DataProcessor,
  ImageProcessor,
])
void main() {
  runHive(workers, () {
    // This runs only on the main thread, not in workers
    runApp(MyApp());
  });
}
```

### Long-Running Workers

```dart
@WorkerBee('lib/workers.dart')
class BackgroundService extends WorkerBeeBase<Command, Status> {
  @override
  Future<Status?> run(
    Stream<Command> listen,
    StreamSink<Status> respond,
  ) async {
    // Continuously process commands
    await for (final command in listen) {
      try {
        respond.add(Status.processing);
        await handleCommand(command);
        respond.add(Status.completed);
      } catch (e, st) {
        logger.error('Command failed', e, st);
        respond.add(Status.error);
      }
    }
    return Status.shutdown;
  }
}
```

## Advanced Features

### Pending Operations

Track operations that must complete before closing:

```dart
@override
Future<void> run(
  Stream<Request> listen,
  StreamSink<Response> respond,
) async {
  await for (final request in listen) {
    final operation = CancelableOperation.fromFuture(
      processRequest(request),
    );
    addPendingOperation(operation);
    
    final result = await operation.value;
    respond.add(result);
  }
}
```

### Parameter Validation

```dart
@override
Future<void> run(
  Stream<Request> listen,
  StreamSink<Response> respond,
) async {
  await for (final request in listen) {
    // Throws WorkerBeeException if null
    final value = unwrapParameter('userId', request.userId);
    
    // Process with non-null value
    final result = await fetchUser(value);
    respond.add(result);
  }
}
```

### Custom Entrypoints

Override default entrypoints for special deployment scenarios:

```dart
class MyWorker extends WorkerBeeBase<Request, Response> {
  @override
  String get jsEntrypoint => 'assets/my_worker.js';
  
  @override
  List<String> get fallbackUrls => [
    'https://cdn.example.com/my_worker.js',
  ];
}
```

## Platform-Specific Considerations

### Web (JavaScript)

- Workers run in Web Workers with separate JavaScript contexts
- Must compile worker code separately with `dart compile js`
- Entry points are JavaScript files loaded from URLs
- Limited to structured cloneable types for message passing

### VM (Dart Native)

- Workers run in Dart Isolates with separate memory heaps
- Entry points are Dart functions
- Can pass any type that implements `SendPort` protocol
- Better performance for compute-intensive tasks

## Best Practices

### 1. Keep Workers Focused
Each worker should have a single, well-defined responsibility.

### 2. Use Proper Serialization
Always provide serializers for your message types and validate them.

### 3. Handle Errors Gracefully
Use try-catch blocks in your worker logic and log errors properly.

### 4. Close Workers
Always close workers when done to free resources:

```dart
try {
  // Use worker
} finally {
  await worker.close();
}
```

### 5. Avoid Shared State
Workers are isolated - they cannot share mutable state with the main thread or other workers.

### 6. Use Streaming for Large Data
Instead of sending one large message, stream data in chunks:

```dart
for (final chunk in dataChunks) {
  worker.add(chunk);
}
```

### 7. Monitor Worker Health
Listen to logs to detect issues:

```dart
worker.logs.listen((log) {
  if (log.level == LogLevel.error) {
    // Handle worker errors
  }
});
```

## Troubleshooting

### Worker Fails to Spawn

**Issue**: Worker doesn't start or throws exception on spawn.

**Solutions:**
- Verify the hive path is correct
- Ensure worker is included in `@WorkerHive` annotation
- Check that serializers are properly configured

### Serialization Errors

**Issue**: `StateError: Worker did not include serializer for request/response type`

**Solutions:**
- Add serializer for your types to `built_value`
- Pass serializers to worker constructor
- Verify types are built with `built_value`

### Messages Not Received

**Issue**: Worker doesn't receive messages or responses aren't received on main thread.

**Solutions:**
- Ensure worker is spawned before sending messages
- Check that `run` method is properly listening to the stream
- Verify response types match expected types

### Worker Hangs

**Issue**: Worker doesn't complete or respond.

**Solutions:**
- Check for blocking operations in worker
- Ensure streams are properly closed
- Look for infinite loops or deadlocks
- Check worker logs for errors

### Memory Leaks

**Issue**: Memory usage grows over time.

**Solutions:**
- Close workers when no longer needed
- Cancel pending operations
- Avoid accumulating data in worker
- Use streaming for large datasets

## API Reference

### Classes

- `WorkerBee` - Annotation for worker classes
- `WorkerHive` - Annotation for hive entrypoints
- `WorkerBeeBase<Request, Response>` - Base class for workers
- `WorkerBeeException` - Exception type for worker errors
- `WorkerLogEntry` - Log entry from worker
- `WorkerAssignment` - Assignment information for workers

### Functions

- `runHive(Map<String, WorkerBeeBuilder> workers, [Function? runApp])` - Initialize worker hive

### Extensions

- `CastStreamSink<I>` - Cast stream sinks between types

## Dependencies

- `async` - Async utilities
- `aws_common` - AWS common utilities and logging
- `built_value` - Serialization framework
- `stream_channel` - Bidirectional communication
- `stream_transform` - Stream transformations
- `stack_trace` - Stack trace utilities

## Generated Files

Worker Bee Builder generates several files:

- `*.worker.dart` - Platform-agnostic worker wrapper
- `*.worker.vm.dart` - VM-specific implementation
- `*.worker.js.dart` - Web-specific implementation
- `*.debug.dart` - Debug mode hive entrypoint
- `*.release.dart` - Release mode hive entrypoint

## See Also

- [worker_bee_builder](../worker_bee_builder/DOCUMENTATION.md) - Code generation package
- [AWS Amplify Flutter](https://github.com/aws-amplify/amplify-flutter) - Main repository
