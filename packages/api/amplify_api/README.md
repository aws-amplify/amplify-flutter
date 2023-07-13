# amplify_api

The Amplify Flutter API category plugin.

## Getting Started

### Visit our [Web Site](https://docs.amplify.aws/) to learn more about AWS Amplify.

⚠️ **Amplify Flutter v0 is now in Maintenance Mode until July 19th, 2024. This means that we will continue to include updates to ensure compatibility with backend services and security. No new features will be introduced in v0.**

Please use the latest version (v1) of Amplify Flutter. If you are currently using v0, follow [these instructions](https://docs.amplify.aws/lib/project-setup/upgrade-guide/q/platform/flutter/) to upgrade to v1.


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
