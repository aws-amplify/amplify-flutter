# AWS Liveness

A Flutter plugin for AWS Face Liveness detection using AWS Amplify UI components. This plugin provides a simple, unified API to integrate Amazon Rekognition's Face Liveness feature into your Flutter applications for both Android and iOS platforms.

[![pub package](https://img.shields.io/pub/v/aws_liveness.svg)](https://pub.dev/packages/aws_liveness)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Features

- 🔒 **Face Liveness Detection** - Verify that a real person is in front of the camera
- 📱 **Cross-Platform** - Works on both Android and iOS
- 🎨 **Native UI** - Uses AWS Amplify's native Face Liveness UI components
- ⚡ **Simple API** - Just one method call to start liveness detection
- 🔄 **Event Streaming** - Listen to liveness detection events in real-time
- ⏱️ **Built-in Timeout** - 50-second timeout with visual countdown
- ❌ **Error Handling** - Comprehensive error codes and messages

## Prerequisites

Before using this plugin, you need:

1. **AWS Account** with access to:
   - Amazon Cognito (for Identity Pool)
   - Amazon Rekognition (for Face Liveness)

2. **Backend Service** - A backend that can:
   - Create Face Liveness sessions using AWS SDK
   - Return the `sessionId` to your Flutter app
   - Retrieve liveness results after the session completes

3. **AWS Configuration** - An `amplifyconfiguration.json` file with your Cognito Identity Pool configuration

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  aws_liveness: ^0.0.1
```

Or from Git:

```yaml
dependencies:
  aws_liveness:
    git:
      url: https://github.com/your-username/aws_liveness.git
      ref: main
```

Then run:

```bash
flutter pub get
```

## Platform-Specific Setup

### Android Setup

#### 1. Update `android/app/build.gradle`

```gradle
android {
    compileSdkVersion 34
    
    defaultConfig {
        minSdkVersion 24  // Minimum required for AWS Liveness
        targetSdkVersion 34
    }
    
    compileOptions {
        sourceCompatibility JavaVersion.VERSION_11
        targetCompatibility JavaVersion.VERSION_11
    }
    
    kotlinOptions {
        jvmTarget = "11"
    }
}
```

#### 2. Create `amplifyconfiguration.json`

Create the file at `android/app/src/main/res/raw/amplifyconfiguration.json`:

```json
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "auth": {
    "plugins": {
      "awsCognitoAuthPlugin": {
        "UserAgent": "aws-amplify-cli/0.1.0",
        "Version": "0.1.0",
        "IdentityManager": {
          "Default": {}
        },
        "CredentialsProvider": {
          "CognitoIdentity": {
            "Default": {
              "PoolId": "YOUR_COGNITO_IDENTITY_POOL_ID",
              "Region": "YOUR_AWS_REGION"
            }
          }
        }
      }
    }
  },
  "predictions": {
    "plugins": {
      "awsRekognitionPlugin": {
        "identifyEntities": {
          "maxEntities": 50,
          "celebrityDetectionEnabled": true,
          "region": "YOUR_AWS_REGION"
        },
        "identifyLabels": {
          "type": "LABELS",
          "region": "YOUR_AWS_REGION"
        },
        "interpretText": {
          "region": "YOUR_AWS_REGION",
          "type": "ALL"
        }
      }
    }
  }
}
```

**Replace:**
- `YOUR_COGNITO_IDENTITY_POOL_ID` with your Cognito Identity Pool ID 
- `YOUR_AWS_REGION` with your AWS region

#### 3. Add Camera Permission

In `android/app/src/main/AndroidManifest.xml`, add:

```xml
<uses-permission android:name="android.permission.CAMERA" />
<uses-feature android:name="android.hardware.camera" android:required="true" />
<uses-feature android:name="android.hardware.camera.front" android:required="true" />
```

---

### iOS Setup

#### 1. Update Podfile

In `ios/Podfile`, set the platform version:

```ruby
platform :ios, '14.0'
```

#### 2. Add Swift Package Manager Dependencies

Open your iOS project in Xcode:

```bash
open ios/Runner.xcworkspace
```

Add the following packages via **File → Add Package Dependencies...**:

1. **Amplify UI Swift Liveness**:
   - URL: `https://github.com/aws-amplify/amplify-ui-swift-liveness`
   - Version Rule: Up to Next Major Version
   - Select Product: `FaceLiveness`

2. **Amplify Swift**:
   - URL: `https://github.com/aws-amplify/amplify-swift`
   - Version Rule: Up to Next Major Version
   - Select Products: `Amplify`, `AWSCognitoAuthPlugin`

#### 3. Create `amplifyconfiguration.json`

Create the file in your iOS app's root directory (same as `Info.plist`):

```json
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "auth": {
    "plugins": {
      "awsCognitoAuthPlugin": {
        "UserAgent": "aws-amplify-cli/0.1.0",
        "Version": "0.1.0",
        "IdentityManager": {
          "Default": {}
        },
        "CredentialsProvider": {
          "CognitoIdentity": {
            "Default": {
              "PoolId": "YOUR_COGNITO_IDENTITY_POOL_ID",
              "Region": "YOUR_AWS_REGION"
            }
          }
        }
      }
    }
  }
}
```

**Important:** Add this file to your Xcode project:
1. Right-click on the Runner folder in Xcode
2. Select "Add Files to Runner..."
3. Check "Copy items if needed"
4. Check "Add to targets: Runner"

#### 4. Add Camera Permission

In `ios/Runner/Info.plist`, add:

```xml
<key>NSCameraUsageDescription</key>
<string>This app needs camera access for face liveness detection</string>
```

#### 5. Initialize Amplify in AppDelegate

In `ios/Runner/AppDelegate.swift`:

```swift
import UIKit
import Flutter
import Amplify
import AWSCognitoAuthPlugin

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        // Initialize Amplify
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.configure()
            print("✅ Amplify configured successfully")
        } catch {
            print("❌ Failed to initialize Amplify: \(error)")
        }
        
        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
```

---

## AWS IAM Configuration

Your Cognito Identity Pool's IAM role needs permissions to access Amazon Rekognition.

### Add IAM Policy

Add this inline policy to your Identity Pool's **unauthenticated role** (or authenticated role if using user login):

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "rekognition:StartFaceLivenessSession",
                "rekognition:CreateFaceLivenessSession"
            ],
            "Resource": "*"
        }
    ]
}
```

---

## Usage

### Basic Usage

```dart
import 'package:aws_liveness/aws_liveness.dart';

// Start face liveness detection
try {
  final result = await AwsLiveness.start(
    sessionId: 'your-session-id-from-backend',
    region: 'us-east-1',
  );
  
  if (result['status'] == 'success') {
    print('✅ Liveness check passed!');
    print('Session ID: ${result['sessionId']}');
    print('Is Live: ${result['isLive']}');
  } else if (result['status'] == 'cancelled') {
    print('⚠️ User cancelled the liveness check');
  }
} catch (e) {
  print('❌ Error: $e');
}
```

### Listening to Events

```dart
import 'package:aws_liveness/aws_liveness.dart';

// Subscribe to liveness events
AwsLiveness.events.listen((event) {
  switch (event['type']) {
    case 'started':
      print('Liveness detection started');
      break;
    case 'complete':
      print('Liveness detection completed: ${event['data']}');
      break;
    case 'error':
      print('Error occurred: ${event['data']}');
      break;
    case 'cancelled':
      print('User cancelled');
      break;
  }
});
```

### Complete Example with Error Handling

```dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:aws_liveness/aws_liveness.dart';

class LivenessScreen extends StatefulWidget {
  @override
  _LivenessScreenState createState() => _LivenessScreenState();
}

class _LivenessScreenState extends State<LivenessScreen> {
  bool _isLoading = false;
  String? _result;

  Future<void> _startLivenessCheck() async {
    setState(() {
      _isLoading = true;
      _result = null;
    });

    try {
      // Get session ID from your backend
      final sessionId = await _getSessionIdFromBackend();
      
      final result = await AwsLiveness.start(
        sessionId: sessionId,
        region: 'YOUR REGION',
      );

      setState(() {
        if (result['status'] == 'success') {
          _result = 'Liveness verified! Is Live: ${result['isLive']}';
        } else if (result['status'] == 'cancelled') {
          _result = 'User cancelled';
        }
      });
    } on PlatformException catch (e) {
      setState(() {
        _result = 'Error: ${e.message}';
      });
      
      // Handle specific error codes
      switch (e.code) {
        case 'TIMEOUT':
          _showErrorDialog('Timeout', 'Face verification timed out. Please try again.');
          break;
        case 'CAMERA_PERMISSION_DENIED':
          _showErrorDialog('Permission Denied', 'Camera access is required.');
          break;
        case 'USER_CANCELLED':
          // User cancelled, no error dialog needed
          break;
        default:
          _showErrorDialog('Error', e.message ?? 'An error occurred');
      }
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _showErrorDialog(String title, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Face Liveness')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isLoading)
              CircularProgressIndicator()
            else
              ElevatedButton(
                onPressed: _startLivenessCheck,
                child: Text('Start Face Verification'),
              ),
            if (_result != null) ...[
              SizedBox(height: 20),
              Text(_result!),
            ],
          ],
        ),
      ),
    );
  }
}
```

---

## API Reference

### AwsLiveness.start()

Starts the AWS Face Liveness detection flow.

```dart
static Future<Map<String, dynamic>> start({
  required String sessionId,
  required String region,
})
```

**Parameters:**
| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| `sessionId` | `String` | Yes | Session ID obtained from your backend |
| `region` | `String` | Yes | AWS region (e.g., "us-east-1") |

**Returns:** `Future<Map<String, dynamic>>`

| Key | Type | Description |
|-----|------|-------------|
| `status` | `String` | "success" or "cancelled" |
| `sessionId` | `String` | The session ID (on success) |
| `isLive` | `bool` | Whether the face was detected as live |

**Throws:** `PlatformException` with error codes:

| Error Code | Description |
|------------|-------------|
| `INVALID_ARGUMENTS` | Missing or invalid sessionId/region |
| `NO_ACTIVITY` | Android activity not attached |
| `PERMISSION_DENIED` | Camera permission denied |
| `TIMEOUT` | 50-second timeout exceeded |
| `USER_CANCELLED` | User cancelled the flow |
| `LIVENESS_ERROR` | Generic liveness detection error |
| `SESSION_NOT_FOUND` | Invalid session ID |
| `ACCESS_DENIED` | AWS access denied |

### AwsLiveness.events

A stream of events from the liveness detection flow.

```dart
static Stream<Map<dynamic, dynamic>> get events
```

**Event Types:**
| Type | Description |
|------|-------------|
| `started` | Flow has started |
| `complete` | Flow completed successfully |
| `error` | An error occurred |
| `cancelled` | User cancelled the flow |

---

## Backend Integration

Your backend needs to:

1. **Create a liveness session** using AWS SDK:

```python
# Python example
import boto3

rekognition = boto3.client('rekognition', region_name='us-east-1')

response = rekognition.create_face_liveness_session(
    Settings={
        'OutputConfig': {
            'S3Bucket': 'your-bucket-name'  # Optional
        }
    }
)

session_id = response['SessionId']
```

2. **Return the session ID** to your Flutter app

3. **Get liveness results** after the session completes:

```python
response = rekognition.get_face_liveness_session_results(
    SessionId=session_id
)

confidence = response['Confidence']
is_live = response['Status'] == 'SUCCEEDED'
```

---

## Troubleshooting

### Android Issues

#### "No Activity attached"
Make sure you're calling the plugin after the app is fully initialized, typically in response to a user action.

#### "amplifyconfiguration.json not found"
Ensure the file is placed at `android/app/src/main/res/raw/amplifyconfiguration.json`.

#### Build errors
- Ensure `minSdkVersion` is at least 24
- Ensure `compileSdkVersion` is 34

### iOS Issues

#### "No such module 'FaceLiveness'"
1. Clean build folder: **Product → Clean Build Folder** (⌘ + Shift + K)
2. Reset package caches: **File → Packages → Reset Package Caches**
3. Rebuild the project

#### "Amplify has already been configured"
This is normal if Amplify is initialized multiple times. The plugin handles this gracefully.

#### Camera not working on Simulator
Face Liveness requires a **physical iOS device**. The camera and face detection features do not work on the iOS Simulator.

### Common Issues

#### Session ID Errors
- Ensure you're creating a new session ID for each liveness check
- Session IDs expire after a short time

#### Permission Issues
- Camera permission must be granted before starting liveness
- Handle permission denial gracefully in your app

---

## Package Versions

| Dependency | Android Version | iOS Version |
|------------|----------------|-------------|
| Amplify UI Liveness | 1.6.0 | 1.4.4+ |
| Amplify Core | 2.15.0 | 2.51.5+ |
| Amplify Auth Cognito | 2.15.0 | 2.51.5+ |

---

## Contributing

Contributions are welcome! Please read our contributing guidelines before submitting a pull request.

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Resources

- [Amazon Rekognition Face Liveness Guide](https://docs.aws.amazon.com/rekognition/latest/dg/face-liveness.html)
- [Amplify UI Face Liveness (Android)](https://ui.docs.amplify.aws/android/connected-components/liveness)
- [Amplify UI Face Liveness (iOS/Swift)](https://ui.docs.amplify.aws/swift/connected-components/liveness)
- [AWS Amplify Swift GitHub](https://github.com/aws-amplify/amplify-swift)
- [AWS Amplify UI Swift Liveness GitHub](https://github.com/aws-amplify/amplify-ui-swift-liveness)
