# amplify_push example

A runnable example app that exercises `amplify_push` end-to-end on a physical device.

## Setup

### Android

1. Create a Firebase project at https://console.firebase.google.com
2. Add an Android app with package name `com.amazonaws.amplify.amplify_push_example`
3. Download `google-services.json` and place it in `android/app/`
4. Run:
   ```bash
   cd packages/amplify_push/example
   flutter run
   ```

### iOS

1. Open `ios/Runner.xcworkspace` in Xcode
2. Set your development team and bundle identifier
3. Enable **Push Notifications** capability
4. Enable **Background Modes → Remote notifications**
5. Configure APNs key or certificate in your Apple Developer account and link it to Firebase (or use direct APNs)
6. Run on a physical device (push notifications don't work on simulator):
   ```bash
   cd packages/amplify_push/example
   flutter run
   ```

## What the app shows

| UI Element | What it does |
|------------|-------------|
| **Device Token** card | Shows the FCM/APNs token once received |
| **Request Permissions** button | Triggers the OS permission dialog |
| **Status** chip | Current permission state (granted/denied/shouldRequest) |
| **Badge** controls | Get/set/clear badge count (iOS only) |
| **Event Log** panel | Scrollable log of all push events with timestamps |

## Sending a test push

### Android (FCM v1 API)

Get your FCM server key from Firebase Console → Project Settings → Cloud Messaging → Server key.

```bash
# Replace YOUR_SERVER_KEY and YOUR_DEVICE_TOKEN
curl -X POST https://fcm.googleapis.com/fcm/send \
  -H "Authorization: key=YOUR_SERVER_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "to": "YOUR_DEVICE_TOKEN",
    "notification": {
      "title": "Test Push",
      "body": "Hello from FCM!"
    },
    "data": {
      "key1": "value1"
    }
  }'
```

Or use the Firebase Console: **Messaging → New campaign → Notifications → Send test message** and paste the device token shown in the app.

### iOS (APNs via curl)

```bash
# Replace with your values
curl -v \
  --header "apns-topic: YOUR_BUNDLE_ID" \
  --header "apns-push-type: alert" \
  --header "authorization: bearer YOUR_AUTH_TOKEN" \
  --data '{"aps":{"alert":{"title":"Test Push","body":"Hello from APNs!"},"sound":"default"}}' \
  --http2 \
  https://api.push.apple.com/3/device/YOUR_DEVICE_TOKEN
```

Or use a tool like [Pusher](https://github.com/noodlewerk/NWPusher) or the Firebase Console if your APNs key is linked to Firebase.

## Expected behavior

1. On launch: permission status is checked, initial token is requested
2. Token appears in the card (copy it for testing)
3. Tap "Request Permissions" → OS dialog appears → status updates
4. Send a push while app is **in foreground** → appears in Event Log as "📬 Foreground: ..."
5. Send a push while app is **in background**, then tap it → appears as "👆 Opened: ..."
6. Kill the app, send a push, tap it → app launches, "🚀 Launch notification: ..." appears in log
7. Badge controls work on iOS only (no-op on Android)
