# Worker Bee Builder Documentation

## Overview

Worker Bee Builder is a build-time code generation package for the `worker_bee` package. It automatically generates the necessary boilerplate code to support cross-platform workers, including platform-specific implementations for both VM (Isolates) and Web (Web Workers).

## Purpose

The builder eliminates manual boilerplate by automatically generating:
- Platform-specific worker implementations
- Worker hive entrypoints
- Message serialization and deserialization code
- Worker spawning and lifecycle management code

## How It Works

Worker Bee Builder uses Dart's `build_runner` and `source_gen` to analyze annotated classes and generate code at build time. It runs as part of your project's build process and creates multiple files for each worker.

## Setup

### 1. Add Dependencies

Add to your `pubspec.yaml`:

```yaml
dependencies:
  worker_bee: ^0.3.9
  built_value: ^8.10.1

dev_dependencies:
  worker_bee_builder: ^0.3.8
  build_runner: ^2.4.15
  built_value_generator: ^8.10.1
```

### 2. Configure Build

Create a `build.yaml` in your package root:

```yaml
targets:
  $default:
    builders:
      worker_bee_builder:worker_bee_builder:
        enabled: true
```

### 3. Run Code Generation

```bash
dart run build_runner build
# Or for watch mode during development:
dart run build_runner watch
```

## Generated Files

For each worker, the builder generates multiple files:

### Worker Files

**Input:** `lib/my_worker.dart` with `@WorkerBee` annotation

**Generated:**
- `lib/my_worker.worker.dart` - Platform-agnostic wrapper (exports platform-specific impl)
- `lib/my_worker.worker.vm.dart` - VM/Isolate implementation
- `lib/my_worker.worker.js.dart` - Web Worker implementation

### Hive Files

**Input:** `lib/workers.dart` with `@WorkerHive` annotation

**Generated:**
- `lib/workers.debug.dart` - Debug mode entrypoint
- `lib/workers.release.dart` - Release mode entrypoint

## Core Generators

### 1. WorkerBeeGenerator

Generates worker implementations based on `@WorkerBee` annotation.

**What it generates:**

#### VM Implementation (`*.worker.vm.dart`)
- Isolate spawning logic
- SendPort/ReceivePort communication
- Message serialization/deserialization
- Error handling and propagation

#### JS Implementation (`*.worker.js.dart`)
- Web Worker spawning with multiple fallback URLs
- MessagePort communication
- Structured clone serialization
- CORS and security handling

**Key Features:**
- Automatic type inference from generic parameters
- Serializer validation
- Custom entrypoint support
- Fallback URL handling for CDN scenarios

### 2. WorkerHiveGenerator

Generates hive entrypoints based on `@WorkerHive` annotation.

**What it generates:**
- Worker registry map
- Main function that calls `runHive()`
- Worker factory functions
- Separate debug and release builds

**Purpose:**
The hive generator creates the entry point that:
1. Registers all available workers
2. Detects if running in a worker context
3. Routes to the appropriate worker based on assignment
4. Falls back to running the app on the main thread

### 3. CopyBuilder

Copies worker hive entrypoints to appropriate output locations for different build modes.

**Purpose:**
Ensures worker entrypoints are available in both debug and release builds with proper paths.

### 4. HiveGenerator

Internal generator that creates the worker registry and routing logic.

## Architecture Components

### TypeVisitor

**Purpose:** Analyzes Dart type annotations and converts them to code_builder representations.

**Key Functions:**
- Resolves generic type parameters
- Handles nullable types
- Preserves type arguments
- Validates type compatibility

### Platform Implementations

#### VM Implementation (`src/impl/vm.dart`)

Generates code for:
- `Isolate.spawn()` calls
- `ReceivePort` and `SendPort` setup
- Binary message passing
- Error serialization

**Key Generated Methods:**
- `spawn()` - Launches isolate
- `connect()` - Connects from isolate
- `_serialize()` - Converts to bytes
- `_deserialize()` - Converts from bytes

#### JS Implementation (`src/impl/js.dart`)

Generates code for:
- `Worker()` constructor calls
- `MessagePort` communication
- `postMessage()` and `onmessage` handlers
- Multiple worker script URLs with fallbacks

**Key Generated Methods:**
- `spawn()` - Launches Web Worker
- `connect()` - Connects from worker
- `_tryLoadWorker()` - Attempts to load from URLs
- JavaScript interop code

### Common Utilities (`src/impl/common.dart`)

Shared code generation utilities:
- Type reference creation
- Import management
- Method builders
- Documentation generation

## Usage Examples

### Basic Worker

```dart
// lib/calculator_worker.dart
import 'package:worker_bee/worker_bee.dart';
import 'package:built_value/built_value.dart';

part 'calculator_worker.g.dart'; // built_value
part 'calculator_worker.worker.dart'; // worker_bee_builder

@BuiltValue()
abstract class CalculateRequest 
    implements Built<CalculateRequest, CalculateRequestBuilder> {
  int get a;
  int get b;
  
  CalculateRequest._();
  factory CalculateRequest([void Function(CalculateRequestBuilder) updates]) 
      = _$CalculateRequest;
}

@WorkerBee('lib/workers.dart')
class CalculatorWorker extends WorkerBeeBase<CalculateRequest, int> {
  CalculatorWorker() : super(serializers: calculatorSerializers);
  
  @override
  Future<int?> run(
    Stream<CalculateRequest> listen,
    StreamSink<int> respond,
  ) async {
    await for (final request in listen) {
      respond.add(request.a + request.b);
    }
    return null;
  }
}
```

**Generated `calculator_worker.worker.vm.dart`:**
```dart
// Generated by worker_bee_builder.

import 'dart:async';
import 'dart:isolate';
import 'package:worker_bee/worker_bee.dart';
import 'calculator_worker.dart';

mixin CalculatorWorkerImpl on WorkerBeeCommon<CalculateRequest, int> {
  static CalculatorWorker create() => CalculatorWorker();
  
  @override
  Future<void> spawn({String? jsEntrypoint}) async {
    final receivePort = ReceivePort();
    await Isolate.spawn(_isolateEntry, receivePort.sendPort);
    // ... setup communication
  }
  
  static void _isolateEntry(SendPort sendPort) async {
    final worker = CalculatorWorker();
    await worker.connect();
    // ... handle messages
  }
  
  // ... serialization methods
}
```

### Worker Hive

```dart
// lib/workers.dart
import 'package:worker_bee/worker_bee.dart';
import 'calculator_worker.dart';
import 'data_processor.dart';

part 'workers.worker.dart'; // Generated

@WorkerHive([
  CalculatorWorker,
  DataProcessor,
])
void main() {
  runHive(workers, () {
    print('Running on main thread');
  });
}
```

**Generated `workers.debug.dart`:**
```dart
// Generated by worker_bee_builder.

import 'package:worker_bee/worker_bee.dart';
import 'calculator_worker.dart';
import 'data_processor.dart';

final _workers = <String, WorkerBeeBuilder>{
  'CalculatorWorker': CalculatorWorker.create,
  'DataProcessor': DataProcessor.create,
};

void main() {
  runHive(_workers, () {
    print('Running on main thread');
  });
}
```

### Custom Entrypoints

```dart
@WorkerBee('lib/workers.dart')
class MyWorker extends WorkerBeeBase<Request, Response> {
  MyWorker() : super(serializers: mySerializers);
  
  // Custom JS worker URL
  @override
  String get jsEntrypoint => 'custom/path/worker.js';
  
  // Fallback URLs for CDN
  @override
  List<String> get fallbackUrls => [
    'https://cdn1.example.com/worker.js',
    'https://cdn2.example.com/worker.js',
  ];
  
  @override
  Future<Response?> run(
    Stream<Request> listen,
    StreamSink<Response> respond,
  ) async {
    // Implementation
  }
}
```

The builder will detect these overrides and skip generating default entrypoint code.

## Build Configuration

### Custom Build Settings

```yaml
# build.yaml
targets:
  $default:
    builders:
      worker_bee_builder:worker_bee_builder:
        enabled: true
        generate_for:
          - lib/**_worker.dart
        options:
          # Builder-specific options (if any)
```

### Excluding Files

```yaml
targets:
  $default:
    builders:
      worker_bee_builder:worker_bee_builder:
        generate_for:
          - lib/**
          exclude:
            - lib/generated/**
            - lib/**_test.dart
```

## Advanced Features

### Type Inference

The builder automatically infers types from generic parameters:

```dart
@WorkerBee('lib/workers.dart')
class TypedWorker extends WorkerBeeBase<MyRequest, MyResponse> {
  // Builder knows Request = MyRequest, Response = MyResponse
}
```

### Serializer Validation

The builder validates that serializers exist for your types:

```dart
// This will fail at generation time if serializer is missing
@WorkerBee('lib/workers.dart')
class InvalidWorker extends WorkerBeeBase<UnserializableType, Response> {
  // Error: No serializer found for UnserializableType
}
```

### Multiple Workers per File

You can define multiple workers in a single file:

```dart
@WorkerBee('lib/workers.dart')
class Worker1 extends WorkerBeeBase<Request1, Response1> { }

@WorkerBee('lib/workers.dart')
class Worker2 extends WorkerBeeBase<Request2, Response2> { }
```

Each will get its own set of generated files.

## Troubleshooting

### Generation Fails

**Issue:** `build_runner build` fails with errors.

**Solutions:**
- Ensure all dependencies are installed
- Check that `@WorkerBee` is applied to classes extending `WorkerBeeBase`
- Verify `@WorkerHive` is applied to library declarations (not functions)
- Run `dart pub get` to update dependencies

### Missing Generated Files

**Issue:** Expected `.worker.dart` files aren't created.

**Solutions:**
- Check `build.yaml` configuration
- Ensure annotations are properly imported
- Run `dart run build_runner clean` then rebuild
- Verify file paths match `generate_for` patterns

### Type Errors in Generated Code

**Issue:** Generated code has type errors.

**Solutions:**
- Ensure request/response types are properly defined with `built_value`
- Check that generic parameters are correctly specified
- Verify all imports are available in generated files
- Update worker_bee_builder to latest version

### Hive Entrypoint Not Found

**Issue:** Workers can't find their assigned role.

**Solutions:**
- Ensure worker class name matches the key in the registry
- Verify worker is included in `@WorkerHive` annotation
- Check that generated hive files are properly imported

### Web Worker Loading Fails

**Issue:** Web Workers fail to load on Web platform.

**Solutions:**
- Verify worker JavaScript is compiled: `dart compile js`
- Check that `jsEntrypoint` path is correct
- Ensure files are served from the correct location
- Configure CORS headers if loading from CDN
- Check browser console for detailed errors

## Build Process Details

### Generation Phases

1. **Analysis Phase**
   - Scans for `@WorkerBee` and `@WorkerHive` annotations
   - Parses class definitions and type parameters
   - Validates that classes extend `WorkerBeeBase`

2. **Code Generation Phase**
   - Creates VM implementation with Isolate code
   - Creates JS implementation with Web Worker code
   - Generates platform-agnostic wrapper
   - Creates hive entrypoints

3. **Output Phase**
   - Writes generated files to disk
   - Applies formatting with `dart_style`
   - Creates part directives for integration

### File Naming Convention

- `*.worker.dart` - Main export file
- `*.worker.vm.dart` - VM/Isolate implementation
- `*.worker.js.dart` - Web Worker implementation
- `*.debug.dart` - Debug hive entrypoint
- `*.release.dart` - Release hive entrypoint

## Best Practices

### 1. Keep Workers in Dedicated Files

```dart
// ✅ Good: One worker per file
// lib/calculator_worker.dart
@WorkerBee('lib/workers.dart')
class CalculatorWorker extends WorkerBeeBase<Request, Response> { }

// ⚠️ Acceptable: Multiple related workers
// lib/math_workers.dart
@WorkerBee('lib/workers.dart')
class AddWorker extends WorkerBeeBase<AddRequest, int> { }

@WorkerBee('lib/workers.dart')
class MultiplyWorker extends WorkerBeeBase<MultiplyRequest, int> { }
```

### 2. Use Consistent Hive Paths

All workers should reference the same hive:

```dart
@WorkerBee('lib/workers.dart')  // ✅ Same hive
class Worker1 extends WorkerBeeBase<R1, S1> { }

@WorkerBee('lib/workers.dart')  // ✅ Same hive
class Worker2 extends WorkerBeeBase<R2, S2> { }
```

### 3. Version Control Generated Files

**Option 1:** Commit generated files (recommended)
- Faster CI/CD builds
- No build step required for consumers
- Add to git: `*.worker.dart`, `*.worker.*.dart`

**Option 2:** Ignore generated files
- Cleaner git history
- Requires build step for all developers
- Add to `.gitignore`: `*.worker.dart`, `*.worker.*.dart`

### 4. Run Generation in CI/CD

```yaml
# .github/workflows/test.yml
- name: Generate code
  run: dart run build_runner build --delete-conflicting-outputs
  
- name: Verify no uncommitted changes
  run: git diff --exit-code
```

### 5. Clean Before Major Changes

```bash
# Clean generated files before major refactoring
dart run build_runner clean
dart run build_runner build --delete-conflicting-outputs
```

## API Reference

### Annotations

#### `@WorkerBee(String hivePath)`
Marks a class as a worker bee and specifies its hive location.

**Parameters:**
- `hivePath`: Path to hive file relative to package root

#### `@WorkerHive(List<Type> workers)`
Marks the main entrypoint and declares available workers.

**Parameters:**
- `workers`: List of worker bee class types

### Generators

#### `WorkerBeeGenerator`
Generates platform-specific implementations for worker classes.

#### `WorkerHiveGenerator`
Generates hive entrypoints with worker registry.

#### `CopyBuilder`
Copies worker hive files to output locations.

## Dependencies

- `analyzer` - Dart code analysis
- `build` - Build system foundation
- `code_builder` - Code generation utilities
- `source_gen` - Annotation-based code generation
- `dart_style` - Code formatting
- `path` - Path manipulation

## Compilation for Web

To use workers on Web, compile them to JavaScript:

```bash
# Compile worker hive
dart compile js lib/workers.dart -o web/workers.js

# Or use dart2js for production
dart2js lib/workers.dart -o web/workers.js -m -O4
```

Then reference in your worker:

```dart
@WorkerBee('lib/workers.dart')
class MyWorker extends WorkerBeeBase<Request, Response> {
  @override
  String get jsEntrypoint => 'workers.js';
}
```

## See Also

- [worker_bee](../worker_bee/DOCUMENTATION.md) - Runtime package documentation
- [build_runner](https://pub.dev/packages/build_runner) - Build system
- [source_gen](https://pub.dev/packages/source_gen) - Code generation framework
- [built_value](https://pub.dev/packages/built_value) - Serialization framework
- [AWS Amplify Flutter](https://github.com/aws-amplify/amplify-flutter) - Main repository
