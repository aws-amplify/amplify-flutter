# Worker Bee

- [Worker Bee](#worker-bee)
  - [Getting Started](#getting-started)
  - [Running the Worker](#running-the-worker)
  - [How It Works](#how-it-works)

Worker bees are isolated units of computation which can be offloaded from the main thread. In Dart, this must be accomplished via different mechanisms depending on the targeted platform (Isolates for VM, and Web Workers for Web). Managing an abstraction between these mechanisms can be difficult, introducing an added layer of complexity in your code and build pipeline.

Worker bees provide an opinionated solution to these problems, allowing a single worker definition to be the source of truth for both VM and Web targets. Futher, web workers can be bundled in a single `.js` file to minimize the amount of code which needs to be shipped to the user's browser.

### Caveats
- Request and response types must be serializable via [`built_value`](https://pub.dev/packages/built_value)

## Getting Started

To get started, create an abstract class extending `WorkerBeeBase`. This will be where your worker's business logic lives. Workers communicate via message passing and optionally, complete with a result. `WorkerBeeBase` requires both of these types to be specified, and additionally requires that the types be serializable via `built_value`.

```dart
/// A worker bee which communicates via passing strings.
abstract class MyWorker extends WorkerBeeBase<String, String>
```

Next, create the required constructors:
1. A default constructor, which optionally calls `super` with `built_value` serializers if using a custom type for the request or response.
2. A factory constructor called `create` which redirects to a to-be-created implementation class called `<WorkerName>Impl`.

```dart
abstract class MyWorker extends WorkerBeeBase<String, String> {
  MyWorker();
  factory MyWorker.create() = MyWorkerImpl;
}
```

Now, add the business logic by overriding the `run` method.

```dart
abstract class MyWorker extends WorkerBeeBase<String, String> {
  MyWorker();
  factory MyWorker.create() = MyWorkerImpl;
  
  @override
  Future<String?> run(
    Stream<String> listen,
    StreamSink<String> respond,
  ) async {
    await for (final message in listen) {
      if (message == 'ping') {
        respond.add('pong');
      }
    }
  }
}
```

And annotate the class as a `WorkerBee` and import the to-be-generated worker definition file, called `<filename>.worker.dart`.

```dart
import 'my_worker.worker.dart';

@WorkerBee()
abstract class MyWorker extends WorkerBeeBase<String, String> {
  // ...
}
```

Make sure you have a dev dependency on `build_runner` and `worker_bee_builder` and run `dart run build_runner build`. This should generate three files:
- `my_worker.worker.js.dart`: The worker implementation used on Web.
- `my_worker.worker.vm.dart`: The worker implementation used on desktop and mobile.
- `my_worker.worker.dart`: The conditional import file for picking the correct platform file to import.

## Running the Worker

To run the worker, wrap your `main` function with the `runHive` command. The first parameter is a variable called workers which is not yet generated. The second paramter is your main function.

```dart
void main() {
  runHive(workers, () {
    print('Hello, world');
  });
}
```

Annotate your main function with all your worker bee class types and add a `part` directive for the generated file.

```dart
part 'main.g.dart';

@WorkerHive([
  MyWorker,
])
void main() {
  runHive(workers, () {
    print('Hello, world');
  });
}
```

Again, run `dart run build_runner build`.

At this point, your app should compile, although you haven't interacted with your worker at all. To do so, you must create a worker using `MyWorker.create()` and start sending messages to it.

```dart
void main() {
  runHive(workers, () async {
    final worker = MyWorker.create();
    await worker.spawn();
    worker.stream.listen((msg) {
      print('Got message from worker: $msg');
    });
    worker.sink.add('ping');
  });
}

// Got message from worker: pong
```

## How It Works

On desktop & mobile, an [Isolate](https://api.dart.dev/stable/dart-isolate/Isolate-class.html) is used. The `worker_bee_builder` package generates a top-level function which is safe to pass to [Isolate.spawn](https://api.dart.dev/stable/dart-isolate/Isolate/spawn.html).

On Web, the following protocol is used to spawn and communicate with a dedicated [Web Worker](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API).

![Web Worker Protocol diagram](/docs/worker.png)

1. Instantiate a worker and call `.spawn` on it.
2. This creates a Web worker which spawns the worker's entrypoint script on another thread.
3. The worker sees that it's running in a Web worker and waits for its assignment (since it potentially contains code for multiple workers). The main thread posts its assignment.
4. The worker thread creates an instance of the worker and calls `.connect` on it. Some setup happens and the worker tells the main thread it's ready. This is when the `await worker.spawn()` call returns.
5. The worker thread calls `.run`. Any number of messages of the worker's message type can be sent back and forth.
6. When the `run` method completes, the worker sends back the return value as the result. The main thread can await this value using `worker.result`.
