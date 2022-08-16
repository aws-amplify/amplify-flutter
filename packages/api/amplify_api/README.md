# amplify_api

The Amplify Flutter API category plugin.

## Developer Preview

The Amplify Flutter libraries are being rewritten in Dart. This version is part of our developer preview for all platforms and is **not** intended for production usage. Please follow our [Web](https://github.com/aws-amplify/amplify-flutter/issues/234) and [Desktop](https://github.com/aws-amplify/amplify-flutter/issues/133) support tickets to monitor the status of supported categories. We will be releasing Web and Desktop support for all Amplify categories incrementally.

For production use cases please use the latest, non-tagged versions of amplify-flutter packages from `pub.dev`. They offer a stable, production-ready experience for Android and iOS.

## Getting Started

### Visit our [Web Site](https://docs.amplify.aws/) to learn more about AWS Amplify.

## Changes for version 0.3.0 and above

When creating subscriptions, now, a [`Stream`](https://api.dart.dev/stable/dart-async/Stream-class.html) object will be returned to you. This `Stream` will continue producing events until either the subscription encounters an error, or you cancel the subscription. In the case of [`await for`](https://dart.dev/tutorials/language/streams), this cancellation occurs when breaking out of the loop.

```dart
Future<void> subscribe() async {
  final graphQLDocument = '''subscription MySubscription {
    onCreateBlog {
      id
      name
      createdAt
    }
  }''';
  final Stream<GraphQLResponse<String>> operation = Amplify.API.subscribe(
    GraphQLRequest<String>(document: graphQLDocument),
    onEstablished: () => print('Subscription established'),
  );

  try {
    // Retrieve 5 events from the subscription
    var i = 0;
    await for (var event in operation) {
      i++;
      print('Subscription event data received: ${event.data}');
      if (i == 5) {
        break;
      }
    }
  } on Exception catch (e) {
    print('Error in subscription stream: $e');
  }
}
```

Alternatively, you can call [`Stream.listen`](https://api.dart.dev/stable/dart-async/Stream/listen.html) to create a [`StreamSubscription`](https://api.dart.dev/stable/dart-async/StreamSubscription-class.html) object which can be programmatically canceled.

```dart
Future<void> subscribe() async {
  final graphQLDocument = '''subscription MySubscription {
    onCreateBlog {
      id
      name
      createdAt
    }
  }''';
  final Stream<GraphQLResponse<String>> operation = Amplify.API.subscribe(
    GraphQLRequest<String>(document: graphQLDocument),
    onEstablished: () => print('Subscription established'),
  );
  final StreamSubscription<GraphQLResponse<String>> subscription =
      operation.listen(
    (event) {
      print('Subscription event data received: ${event.data}');
    },
    onError: (Object e) => print('Error in subscription stream: $e'),
  );

  // ...

  // Cancel the subscription and close the underlying stream.
  subscription.cancel();
}
```
