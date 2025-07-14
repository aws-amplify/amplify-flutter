![AWS Amplify](https://s3.amazonaws.com/aws-mobile-hub-images/aws-amplify-logo.png)

[![discord](https://img.shields.io/discord/308323056592486420?logo=discord)](https://discord.gg/jWVbPfC)

## Amplify Flutter

AWS Amplify provides a declarative and easy-to-use interface across different categories of cloud operations. Our default implementation works with Amazon Web Services (AWS), but AWS Amplify is designed to be open and pluggable for any custom backend or service. See [AWS Amplify](https://docs.amplify.aws) for further details about the Amplify Framework.

We are iterating and looking for feedback and collaboration, so please [**let us know your feedback**](https://github.com/aws-amplify/amplify-flutter/issues/5) on our direction and roadmap.

[Getting Started Guide](https://docs.amplify.aws/start/getting-started/setup/q/integration/flutter)

⚠️ **Amplify Flutter v1 is deprecated as of April 30th, 2025. No new features or bug fixes will be added. Dependencies may become outdated and potentially introduce compatibility issues.**

Please use the latest version (Gen 2) of Amplify Flutter. If you are currently using v1, follow [these instructions](https://docs.amplify.aws/lib/project-setup/upgrade-guide/q/platform/flutter/) to upgrade to v2.

## Supported Amplify Libraries

| Library                                                                                                 | pub.dev package                                                                                                                                                                               | Description                                                                                                                                                                                                                                                                                                |
| :------------------------------------------------------------------------------------------------------ | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [**Authentication**](https://docs.amplify.aws/lib/auth/getting-started/q/platform/flutter)              | <a href="https://pub.dev/packages/amplify_auth_cognito" target="_blank"> <img src="https://img.shields.io/pub/v/amplify_auth_cognito.svg"> </a>                                               | APIs and building blocks for developers who want to create user authentication experiences with Amazon Cognito.                                                                                                                                                                                            |
| [**Analytics**](https://docs.amplify.aws/lib/analytics/getting-started/q/platform/flutter)              | <a href="https://pub.dev/packages/amplify_analytics_pinpoint" target="_blank"> <img src="https://img.shields.io/pub/v/amplify_analytics_pinpoint.svg"></a>                                    | Easily collect analytics data for your app with Pinpoint. Analytics data includes user sessions and other custom events that you want to track in your app.                                                                                                                                                |
| [**Storage**](https://docs.amplify.aws/lib/storage/getting-started/q/platform/flutter)                  | <a href="https://pub.dev/packages/amplify_storage_s3" target="_blank"> <img src="https://img.shields.io/pub/v/amplify_storage_s3.svg"> </a>                                                   | Provides a simple mechanism for managing user content for your app in public, protected or private storage buckets with Amazon S3.                                                                                                                                                                         |
| [**DataStore**](https://docs.amplify.aws/lib/datastore/getting-started/q/platform/flutter)              | <a href="https://pub.dev/packages/amplify_datastore/versions/1.1.0-supports-only-mobile" target="_blank"> <img src="https://img.shields.io/pub/v/amplify_datastore?include_prereleases"> </a> | A programming model for leveraging shared and distributed data without writing additional code for offline and online scenarios, which makes working with distributed, cross-user data just as simple as working with local-only data.                                                                     |
| [**API (REST)**](https://docs.amplify.aws/lib/restapi/getting-started/q/platform/flutter)               | <a href="https://pub.dev/packages/amplify_api" target="_blank"> <img src="https://img.shields.io/pub/v/amplify_api.svg"> </a>                                                                 | Provides a simple solution when making HTTP requests. It provides an automatic, lightweight signing process which complies with AWS Signature Version 4.                                                                                                                                                   |
| [**API (GraphQL)**](https://docs.amplify.aws/lib/graphqlapi/getting-started/q/platform/flutter)         | <a href="https://pub.dev/packages/amplify_api" target="_blank"> <img src="https://img.shields.io/pub/v/amplify_api.svg"> </a>                                                                 | Interact with your GraphQL server or AWS AppSync API with an easy-to-use & configured GraphQL client.                                                                                                                                                                                                      |
| [**Notifications**](https://docs.amplify.aws/lib/push-notifications/getting-started/q/platform/flutter) | <a href="https://pub.dev/packages/amplify_push_notifications_pinpoint" target="_blank"> <img src="https://img.shields.io/pub/v/amplify_push_notifications_pinpoint.svg"> </a>                 | Trigger push notifications to your app and record metrics in Pinpoint when users receive or open notifications.                                                                                                                                                                                            |
| [**Authenticator**](https://ui.docs.amplify.aws/flutter/connected-components/authenticator)             | <a href="https://pub.dev/packages/amplify_authenticator" target="_blank"> <img src="https://img.shields.io/pub/v/amplify_authenticator.svg"> </a>                                             | The Amplify Flutter Authenticator simplifies the process of authenticating users by providing a fully-customizable flow which just works. Simply wrap your app's authenticated route in an Authenticator component and the process of authenticating users and managing login sessions is handled for you. |

### Semantic versioning

We follow [semantic versioning](https://dart.dev/tools/pub/versioning#semantic-versions) for our releases.

#### Semantic versioning and enumeration cases

When Amplify adds a new enumeration entry or sealed class subtype, we will publish a new **minor** version of the library.

Applications that use a `switch` statement to evaluate all members of an enumerated type can add a `default` clause to prevent
new cases from causing compile warnings or errors.

#### Semantic versioning and dependencies update

We follow [semantic versioning for updating our dependencies](https://semver.org/#what-should-i-do-if-i-update-my-own-dependencies-without-changing-the-public-api). This includes updating the dart and flutter SDK version.

## Category / Platform Support

| Category       | Android | iOS | Web | Windows | MacOS | Linux |
| -------------- | :-----: | :-: | :-: | :-----: | :---: | :---: |
| Analytics      |   ✅    | ✅  | ✅  |   ✅    |  ✅   |  ✅   |
| API (REST)     |   ✅    | ✅  | ✅  |   ✅    |  ✅   |  ✅   |
| API (GraphQL)  |   ✅    | ✅  | ✅  |   ✅    |  ✅   |  ✅   |
| Authentication |   ✅    | ✅  | ✅  |   ✅    |  ✅   |  ✅   |
| DataStore      |   ✅    | ✅  | 🔴  |   🔴    |  🔴   |  🔴   |
| Storage        |   ✅    | ✅  | ✅  |   ✅    |  ✅   |  ✅   |
| Notifications  |   ✅    | ✅  | 🔴  |   🔴    |  🔴   |  🔴   |

## Documentation

- [Getting Started with Amplify Flutter](https://docs.amplify.aws/flutter/start/quickstart/)
- [Amplify Framework](https://docs.amplify.aws/)
- [Contributing to Amplify Flutter](CONTRIBUTING.md)

## Flutter Development Guide

Amplify for Flutter is an open-source project and welcomes contributions from the Flutter community, see [Contributing](CONTRIBUTING.md).

#### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install)
- Node.js v18.17 or later
- npm v9 or later

#### Getting Started With Amplify Flutter

1. Open your Flutter project. If you do not have an active Flutter project, you can create one after installing the [Flutter development tooling](https://flutter.dev/docs/get-started/install) and running `flutter create <project-name>` in your terminal.

2. Run the following to create an amplify project:

    `npm create amplify@latest -y`

4. To use the Authenticator, you need to add the following dependencies to your project:

    ```yaml
    dependencies:
      amplify_auth_cognito: ^2.0.0
      amplify_authenticator: ^2.0.0
      amplify_flutter: ^2.0.0
      flutter:
        sdk: flutter
    ```

5. run `flutter pub get`

6. Update your main.dart file to the following:

```dart
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

import 'amplify_outputs.dart';

Future<void> main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await _configureAmplify();
    runApp(const MyApp());
  } on AmplifyException catch (e) {
    runApp(Text("Error configuring Amplify: ${e.message}"));
  }
}

Future<void> _configureAmplify() async {
  try {
    await Amplify.addPlugin(AmplifyAuthCognito());
    await Amplify.configure(amplifyConfig);
    safePrint('Successfully configured');
  } on Exception catch (e) {
    safePrint('Error configuring Amplify: $e');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
        builder: Authenticator.builder(),
        home: const Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SignOutButton(),
                Text('TODO Application'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

7. Deploy your backend use Amplify's per-developer cloud sandbox. This feature provides a separate backend environment for every developer on a team, ideal for local development and testing. To run your application with a sandbox environment, you can run the following command:

    `npx ampx sandbox --outputs-format dart --outputs-out-dir lib`

8. Since Amplify Flutter supports 6 platforms with Flutter including iOS, Android, Web, and Desktop, some extra configuration may be required for each platform. Check out the [Platform Setup](https://docs.amplify.aws/flutter/start/platform-setup/) guide to make sure you've completed the necessary steps.

9. Run `flutter run` to launch your app on the connected device.

Congratulations, you've built your first Amplify app! 🎉

For further documentation and Amplify Category usage, see the [documentation](https://docs.amplify.aws/flutter/).

---

Flutter and the related logo are trademarks of Google LLC. We are not endorsed by or affiliated with Google LLC.
