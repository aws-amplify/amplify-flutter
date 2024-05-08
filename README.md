![AWS Amplify](https://s3.amazonaws.com/aws-mobile-hub-images/aws-amplify-logo.png)

[![discord](https://img.shields.io/discord/308323056592486420?logo=discord)](https://discord.gg/jWVbPfC)

## Amplify Flutter

AWS Amplify provides a declarative and easy-to-use interface across different categories of cloud operations. Our default implementation works with Amazon Web Services (AWS), but AWS Amplify is designed to be open and pluggable for any custom backend or service. See [AWS Amplify](https://docs.amplify.aws) for further details about the Amplify Framework.

We are iterating and looking for feedback and collaboration, so please [**let us know your feedback**](https://github.com/aws-amplify/amplify-flutter/issues/5) on our direction and roadmap.

[Getting Started Guide](https://docs.amplify.aws/start/getting-started/setup/q/integration/flutter)

⚠️ **Amplify Flutter v1 is now in Maintenance Mode until April 30th, 2025. This means that we will continue to include updates to ensure compatibility with backend services and security. No new features will be introduced in v1.**

Please use the latest version (v2) of Amplify Flutter. If you are currently using v1, follow [these instructions](https://docs.amplify.aws/lib/project-setup/upgrade-guide/q/platform/flutter/) to upgrade to v2.

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

- [Getting Started with Amplify Flutter](https://docs.amplify.aws/start/q/integration/flutter)
- [Amplify Framework](https://docs.amplify.aws/)
- [Install the Amplify CLI](https://docs.amplify.aws/lib/project-setup/prereq/q/platform/flutter#install-and-configure-the-amplify-cli)
- [Contributing to Amplify Flutter](CONTRIBUTING.md)

## Flutter Development Guide

Amplify for Flutter is an open-source project and welcomes contributions from the Flutter community, see [Contributing](CONTRIBUTING.md).

#### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install)
- [Amplify CLI](https://docs.amplify.aws/lib/project-setup/prereq/q/platform/flutter#option-1-watch-the-video-guide)

#### Getting Started Amplify Flutter

1. Open your Flutter project. If you do not have an active Flutter project, you can create one after installing the [Flutter development tooling](https://flutter.dev/docs/get-started/install) and running `flutter create <project-name>` in your terminal.

2. Using the Amplify CLI, run `amplify init` from the root of your project:

If you have not configured the Amplify CLI, check out our documentation at [Amplify CLI Installation](https://docs.amplify.aws/lib/project-setup/prereq/q/platform/flutter#install-and-configure-the-amplify-cli).

```bash
==> amplify init
Note: It is recommended to run this command from the root of your app directory
? Enter a name for the project <project-name>
The following configuration will be applied:

Project information
| Name: <project-name>
| Environment: dev
| Default editor: Visual Studio Code
| App type: flutter
| Configuration file location: ./lib/

? Initialize the project with the above configuration? Yes
Using default provider  awscloudformation
? Select the authentication method you want to use: AWS profile

For more information on AWS Profiles, see:
https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html

? Please choose the profile you want to use default
```

4. Add Amplify categories (choose defaults for this example):

   ```bash
   $ amplify add auth  # Choose default configuration after entering this command in your terminal.
   ```

5. Push changes to the cloud to provision the backend resources:

   ```bash
   $ amplify push
   ```

6. In your pubspec.yaml file, add the following to `dependencies`:

> Note: Do not include dependencies in your `pubspec` file that you are not using in your app. This can cause a configuration error in the underlying SDK.

```yaml
dependencies:
  amplify_auth_cognito: ^2.0.0
  amplify_authenticator: ^2.0.0
  amplify_flutter: ^2.0.0
  flutter:
    sdk: flutter
```

7. From the terminal run

```bash
flutter pub get
```

8. In your main.dart file, add:

```dart
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

import 'amplifyconfiguration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {
    try {
      await Amplify.addPlugin(AmplifyAuthCognito());
      await Amplify.configure(amplifyconfig);
      safePrint('Successfully configured');
    } on Exception catch (e) {
      safePrint('Error configuring Amplify: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
        builder: Authenticator.builder(),
        home: const Scaffold(
          body: Center(
            child: Text('You are logged in!'),
          ),
        ),
      ),
    );
  }
}
```

9. Since Amplify Flutter supports 6 platforms with Flutter including iOS, Android, Web, and Desktop, some extra configuration may be required for each platform. Check out the [Platform Setup](https://docs.amplify.aws/lib/project-setup/platform-setup/q/platform/flutter/) guide to make sure you've completed the necessary steps.

10. Run `flutter run` to launch your app on the connected device.

11. Once the app is loaded, tap on **Configure Amplify**, then on **Record Event** a few times.

12. To see the events you recoded, run `amplify console analytics`. This will open the Amazon Pinpoint console for your project in your default web browser. Within about a minute you should start seeing the events populating in the Events section of then Pinpoint console.

Congratulations, you've built your first Amplify app! 🎉

For further documentation and Amplify Category usage, see the [documentation](https://docs.amplify.aws/lib/q/platform/flutter).

---

Flutter and the related logo are trademarks of Google LLC. We are not endorsed by or affiliated with Google LLC.
