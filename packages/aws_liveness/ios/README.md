# iOS Setup for AWS Liveness Plugin

## 📖 Complete Setup Guide

**For detailed step-by-step instructions with screenshots and troubleshooting, see [SETUP_GUIDE.md](./SETUP_GUIDE.md)**

## Quick Start

### Dependencies

This plugin requires the following Amplify dependencies to be added to your iOS app:

1. **FaceLiveness** - Amplify UI Face Liveness component (from `amplify-ui-swift-liveness`)
2. **Amplify** - Core Amplify framework (from `amplify-swift`)
3. **AWSCognitoAuthPlugin** - For authentication (from `amplify-swift`)

### Installation via Swift Package Manager

1. **Open your iOS project in Xcode**:
   ```bash
   open ios/Runner.xcworkspace
   ```

2. **Add Amplify UI Swift Liveness**:
   - Go to **File** → **Add Package Dependencies...**
   - Enter: `https://github.com/aws-amplify/amplify-ui-swift-liveness`
   - Select **"Up to Next Major Version"**
   - Select product: **`FaceLiveness`**
   - Click **"Add Package"**

3. **Add Amplify Swift**:
   - Go to **File** → **Add Package Dependencies...** again
   - Enter: `https://github.com/aws-amplify/amplify-swift`
   - Select **"Up to Next Major Version"**
   - Select products: **`Amplify`** and **`AWSCognitoAuthPlugin`**
   - Click **"Add Package"**

**Note**: The Face Liveness package is only available via Swift Package Manager (SPM), not CocoaPods. You must use SPM for this dependency.

## Amplify Configuration

1. Create `amplifyconfiguration.json` in your iOS app's root directory (same location as `Info.plist`)
2. Configure it with your Identity Pool ID and region:

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
              "PoolId": "YOUR_IDENTITY_POOL_ID",
              "Region": "YOUR REGION HERE"
            }
          }
        }
      }
    }
  }
}
```

3. Initialize Amplify in your `AppDelegate.swift` or `SceneDelegate.swift`:

```swift
import Amplify
import AWSCognitoAuthPlugin

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    do {
        try Amplify.add(plugin: AWSCognitoAuthPlugin())
        try Amplify.configure()
        print("✅ Amplify configured successfully")
    } catch {
        print("❌ Failed to initialize Amplify: \(error)")
    }
    return true
}
```

## Permissions

Add camera permission to your `Info.plist`:

```xml
<key>NSCameraUsageDescription</key>
<string>This app needs camera access for face liveness detection</string>
```

## Usage

The plugin API is the same for both Android and iOS:

```dart
final result = await AwsLiveness.start(
  sessionId: "your-session-id",
  region: "us-east-1",
);
```

## Troubleshooting

1. **"No root view controller available"**: Make sure your app has a proper window hierarchy set up
2. **Amplify not configured**: Ensure Amplify is initialized in AppDelegate before using the plugin
3. **Camera permission denied**: Check that `NSCameraUsageDescription` is set in Info.plist
4. **Build errors**: Make sure all Amplify dependencies are properly added via SPM or CocoaPods

