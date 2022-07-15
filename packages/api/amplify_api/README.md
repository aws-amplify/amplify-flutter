# amplify_api

The Amplify Flutter API category plugin.

## Developer Preview

This package version is part of the the developer preview for the Amplify Auth category on mobile, web and desktop. It is not intended for production usage. 

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
