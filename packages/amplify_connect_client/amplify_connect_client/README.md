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
create the client and call `identifyUser`. Device registration is expressed
through `IdentifyUserOptions` (there is no separate device method).

```dart
final client = AmplifyConnectClientFlutter.createFromAmplifyOutputs(
  amplifyOutputs: amplifyOutputs,
);

// Identify a user.
await client.identifyUser(
  userId: 'user-123',
  userProfile: const UserProfile(email: 'user@example.com'),
);

// Register a device by passing a channel type and push token in options.
await client.identifyUser(
  userId: 'user-123',
  userProfile: const UserProfile(),
  options: IdentifyUserOptions(
    address: fcmToken,
    channelType: ChannelType.gcm,
  ),
);
```

### Visit our [Web Site](https://docs.amplify.aws/) to learn more about AWS Amplify.
