# AWS Liveness Example

A complete example demonstrating how to use the `aws_liveness` Flutter plugin for face liveness detection.

## Prerequisites

Before running this example, you need to complete the setup for both Android and iOS platforms as described in the [main package README](../README.md).

### Quick Setup Checklist

1. **AWS Account Setup**
   - Create an Amazon Cognito Identity Pool
   - Add IAM permissions for Amazon Rekognition

2. **Android Setup**
   - Create `android/app/src/main/res/raw/amplifyconfiguration.json` with your Cognito Identity Pool ID.
   - Ensure `minSdkVersion` is 24 or higher

3. **iOS Setup**
   - Add Swift Package Manager dependencies via Xcode:
     - `FaceLiveness` from `https://github.com/aws-amplify/amplify-ui-swift-liveness`
     - `Amplify` and `AWSCognitoAuthPlugin` from `https://github.com/aws-amplify/amplify-swift`
   - Create `amplifyconfiguration.json` in the iOS app bundle
   - Initialize Amplify in `AppDelegate.swift`

4. **Backend Service**
   - Create a backend that calls AWS Rekognition's `CreateFaceLivenessSession` API
   - Update the `sessionId` in `lib/main.dart` with your real session ID

## Running the Example

1. **Get dependencies:**
   ```bash
   cd example
   flutter pub get
   ```

2. **For iOS, install CocoaPods and add SPM dependencies:**
   ```bash
   cd ios
   pod install
   # Then open Runner.xcworkspace in Xcode and add SPM dependencies
   ```

3. **Run the app:**
   ```bash
   flutter run
   ```

> **Note:** Face liveness detection requires a **physical device**. The camera features do not work on iOS Simulator or Android Emulator.

## Example Code

The main example (`lib/main.dart`) demonstrates:

- Starting a face liveness detection session
- Handling success, cancellation, and error results
- Listening to liveness detection events
- Proper error handling with user-friendly messages
- UI state management during the liveness flow

### Basic Usage

```dart
import 'package:aws_liveness/aws_liveness.dart';

// Start liveness detection
final result = await AwsLiveness.start(
  sessionId: 'your-session-id-from-backend',
  region: 'us-east-1',
);

if (result['status'] == 'success') {
  final isLive = result['isLive'] as bool;
  print('Is Live: $isLive');
}
```

### Event Listening

```dart
AwsLiveness.events.listen((event) {
  switch (event['type']) {
    case 'started':
      print('Liveness detection started');
      break;
    case 'complete':
      print('Completed: ${event['data']}');
      break;
    case 'error':
      print('Error: ${event['data']}');
      break;
    case 'cancelled':
      print('User cancelled');
      break;
  }
});
```

## Troubleshooting

### "Session ID is required"
Make sure you're passing a valid session ID obtained from your backend's `CreateFaceLivenessSession` API call.

### Camera not working
Face liveness requires a physical device. Run on a real iPhone or Android phone.

### "Amplify not configured" on iOS
Ensure you've:
1. Added the SPM dependencies in Xcode
2. Added `amplifyconfiguration.json` to your Xcode project
3. Initialized Amplify in `AppDelegate.swift`

### Build errors on Android
Ensure your `android/app/build.gradle` has:
- `minSdkVersion 24` or higher
- `compileSdkVersion 34`

## Learn More

- [Main Package README](../README.md)
- [iOS Setup Guide](../ios/SETUP_GUIDE.md)
- [AWS Rekognition Face Liveness Documentation](https://docs.aws.amazon.com/rekognition/latest/dg/face-liveness.html)
