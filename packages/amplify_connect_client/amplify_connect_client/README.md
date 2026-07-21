# amplify_connect_client

A Flutter client for Amazon Connect Customer Profiles. Identifies users and
registers device push tokens against the Customer Profiles identify endpoint.

## Category / Platform Support

| Category | Android | iOS | Web | Windows | MacOS | Linux |
| -------- | :-----: | :-: | :-: | :-----: | :---: | :---: |
| Connect  |   ✅    | ✅  | ✅  |   ✅    |  ✅   |  ✅   |

## Getting Started

Configure your app with the `amplify_outputs.json` from a deployed backend that
includes the `notifications.amazon_connect_customer_profiles` section, then
create the client. It exposes three methods: `identifyUser`, `registerDevice`,
and `removeDevice`.

```dart
final client = AmplifyConnectClientFlutter.createFromAmplifyOutputs(
  amplifyOutputs: amplifyOutputs,
);

// Create or update the user's profile.
await client.identifyUser(
  userProfile: const UserProfile(email: 'user@example.com'),
);

// Register this device's push token (channel/platform resolved internally).
await client.registerDevice(token: fcmToken);

// Remove this device.
await client.removeDevice();
```

### Visit our [Web Site](https://docs.amplify.aws/) to learn more about AWS Amplify.
