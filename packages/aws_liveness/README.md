# aws_liveness

Amazon Rekognition Face Liveness for Flutter on Android and iOS. It wraps the
native Amplify UI Face Liveness components
([Android](https://github.com/aws-amplify/amplify-ui-android),
[iOS](https://github.com/aws-amplify/amplify-ui-swift-liveness)).

## How it works

1. Your backend creates a session with `CreateFaceLivenessSession` and returns
   its `SessionId` to the app.
2. The app calls `AwsLiveness.start`. The native UI guides the user and streams
   video to Rekognition, signing requests with credentials from the
   `AWSCredentialsProvider` you pass in.
3. When `start` completes, your backend calls `GetFaceLivenessSessionResults`
   to get the confidence score. The app is never told whether the user is
   live.

## Usage

```dart
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:aws_liveness/aws_liveness.dart';

final liveness = AwsLiveness(credentialsProvider: myCredentialsProvider);

try {
  await liveness.start(sessionId: sessionId, region: 'us-east-1');
  // Fetch the result on your backend.
} on FaceLivenessException catch (e) {
  switch (e.code) {
    case FaceLivenessErrorCode.userCancelled:
      break;
    default:
      print('${e.code.name}: ${e.message} ${e.recoverySuggestion}');
  }
}
```

The credentials provider is an `AWSCredentialsProvider` from
`amplify_foundation_dart`. With Amplify Auth (`amplify_auth_cognito`), resolve
it from the current session; guest credentials work if your identity pool
allows unauthenticated access:

```dart
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    as foundation;

class AmplifyAuthCredentialsProvider
    implements foundation.AWSCredentialsProvider {
  @override
  Future<foundation.TemporaryCredentials> resolve() async {
    final session = await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
    final credentials = session.credentialsResult.value;
    return foundation.TemporaryCredentials(
      credentials.accessKeyId,
      credentials.secretAccessKey,
      credentials.sessionToken!,
      credentials.expiration!,
    );
  }
}
```

The IAM role behind these credentials needs `rekognition:StartFaceLivenessSession`.
`CreateFaceLivenessSession` and `GetFaceLivenessSessionResults` belong on your
backend, not in the app's role.

Only one check can run at a time. Each session ID can only be used once, so
create a new session to retry after any error.

## Platform setup

### Android

- `minSdk` 24 or higher.
- Enable core library desugaring in `android/app/build.gradle.kts`, which
  Amplify Android requires:

  ```kotlin
  android {
      compileOptions {
          isCoreLibraryDesugaringEnabled = true
      }
  }

  dependencies {
      coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.5")
  }
  ```

The plugin declares the `CAMERA` permission and requests it at runtime.

### iOS

- iOS 15 or higher.
- Swift Package Manager must be enabled for your app (the default since
  Flutter 3.44). CocoaPods is not supported, because the iOS Face Liveness
  component and Amplify Swift are only distributed through Swift Package
  Manager. See
  [Swift Package Manager for app developers](https://docs.flutter.dev/packages-and-plugins/swift-package-manager/for-app-developers).
- Add a camera usage description to `ios/Runner/Info.plist`:

  ```xml
  <key>NSCameraUsageDescription</key>
  <string>The camera is used to verify that you are a live person.</string>
  ```

Face Liveness needs a real camera, so use a physical device.
`flutter build ios --simulator` currently fails for this plugin because of
[flutter/flutter#195155](https://github.com/flutter/flutter/issues/195155).

## Example

See [example](example/README.md).
