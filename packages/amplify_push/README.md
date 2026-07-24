# amplify_push

Standalone on-device push notification handling for Flutter. Manages token lifecycle, notification routing, permissions, background processing, and badge count — with no backend dependency.

## Features

- Device token lifecycle (FCM/APNs)
- Foreground notification routing
- Background notification processing
- Tap/open notification handling
- Launch notification detection
- Permission request and status
- Badge count (iOS)
- Optional `PushServiceProvider` for backend integration

## Usage

### Standalone (no backend)

```dart
import 'package:amplify_push/amplify_push.dart';

final result = await AmplifyPushClient.create(
  onBackgroundMessage: myBackgroundHandler,
);

switch (result) {
  case Ok(:final value):
    final push = value;
    push.onTokenReceived.listen((token) {
      // Send token to your own backend
    });
    push.onNotificationReceivedInForeground.listen((msg) {
      // Show in-app notification
    });
    push.onNotificationOpened.listen((msg) {
      // Navigate to deep link
    });
  case Error(:final error):
    print('Failed to initialize push: $error');
}
```

### With a service provider

```dart
final result = await AmplifyPushClient.create(
  provider: myServiceProvider,
  onBackgroundMessage: myBackgroundHandler,
);
```

When a `PushServiceProvider` is supplied:
- `onTokenReceived` is called on every token refresh
- `onPushEvent` is called for foreground, background, and opened notifications

### Background handler

```dart
@pragma('vm:entry-point')
Future<void> myBackgroundHandler(PushNotificationMessage message) async {
  // Process notification in background
}
```

The background handler must be a **top-level or static function**.

## PushServiceProvider

Implement `PushServiceProvider` to wire push events to any backend:

```dart
class MyProvider implements PushServiceProvider {
  @override
  Future<void> onTokenReceived(String deviceToken) async {
    await myBackend.registerDevice(deviceToken);
  }

  @override
  Future<void> onPushEvent(PushEvent event) async {
    await myBackend.recordPushEvent(event.type.name, event.notification.title);
  }
}
```

## Platform Setup

### Android

Add Firebase Cloud Messaging to your Android app following the [FCM setup guide](https://firebase.google.com/docs/cloud-messaging/android/client).

### iOS

Enable Push Notifications capability in Xcode and configure APNs certificates or keys.
