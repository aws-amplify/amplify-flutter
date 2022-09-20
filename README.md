![AWS Amplify](https://s3.amazonaws.com/aws-mobile-hub-images/aws-amplify-logo.png)

[![discord](https://img.shields.io/discord/308323056592486420?logo=discord)](https://discord.gg/jWVbPfC)
[![CircleCI](https://circleci.com/gh/aws-amplify/amplify-flutter/tree/main.svg?style=shield)](https://circleci.com/gh/aws-amplify/amplify-flutter/tree/main)

## Amplify Flutter

AWS Amplify provides a declarative and easy-to-use interface across different categories of cloud operations. Our default implementation works with Amazon Web Services (AWS), but AWS Amplify is designed to be open and pluggable for any custom backend or service. See [AWS Amplify](https://docs.amplify.aws) for further details about the Amplify Framework.

We are iterating and looking for feedback and collaboration, so please [**let us know your feedback**](https://github.com/aws-amplify/amplify-flutter/issues/5) on our direction and roadmap.

- [Getting Started Guide](https://docs.amplify.aws/start/getting-started/setup/q/integration/flutter)
- [Example Application](https://github.com/aws-amplify/amplify-flutter/tree/main/example)
- [Roadmap/Provide Feedback](https://github.com/aws-amplify/amplify-flutter/issues/5)

⚠️ **For breaking changes from the developer preview versions please refer to this [issue](https://github.com/aws-amplify/amplify-flutter/issues/274) for migration details.**

## Supported Amplify Categories

- [x] [**Authentication**](https://docs.amplify.aws/lib/auth/getting-started/q/platform/flutter): APIs and building blocks for developers who want to create user authentication experiences with Amazon Cognito.

<a href="https://pub.dev/packages/amplify_auth_cognito" target="_blank">
  <img src="https://img.shields.io/pub/v/amplify_auth_cognito.svg">
</a>

- [x] [**Analytics**](https://docs.amplify.aws/lib/analytics/getting-started/q/platform/flutter): Easily collect analytics data for your app with Pinpoint. Analytics data includes user sessions and other custom events that you want to track in your app.

<a href="https://pub.dev/packages/amplify_analytics_pinpoint" target="_blank">
  <img src="https://img.shields.io/pub/v/amplify_analytics_pinpoint.svg">
</a>

- [x] [**Storage**](https://docs.amplify.aws/lib/storage/getting-started/q/platform/flutter): Provides a simple mechanism for managing user content for your app in public, protected or private storage buckets with Amazon S3.

<a href="https://pub.dev/packages/amplify_storage_s3" target="_blank">
  <img src="https://img.shields.io/pub/v/amplify_storage_s3.svg">
</a>

- [x] [**DataStore**](https://docs.amplify.aws/lib/datastore/getting-started/q/platform/flutter): A programming model for leveraging shared and distributed data without writing additional code for offline and online scenarios, which makes working with distributed, cross-user data just as simple as working with local-only data.

<a href="https://pub.dev/packages/amplify_datastore" target="_blank">
  <img src="https://img.shields.io/pub/v/amplify_datastore.svg">
</a>

- [x] [**API (Rest)**](https://docs.amplify.aws/lib/restapi/getting-started/q/platform/flutter): Provides a simple solution when making HTTP requests. It provides an automatic, lightweight signing process which complies with AWS Signature Version 4.

<a href="https://pub.dev/packages/amplify_api" target="_blank">
  <img src="https://img.shields.io/pub/v/amplify_api.svg">
</a>

- [x] [**API (GraphQL)**](https://docs.amplify.aws/lib/graphqlapi/getting-started/q/platform/flutter): Interact with your GraphQL server or AWS AppSync API with an easy-to-use & configured GraphQL client.

<a href="https://pub.dev/packages/amplify_api" target="_blank">
  <img src="https://img.shields.io/pub/v/amplify_api.svg">
</a>

## Category / Platform Support (Developer Preview)

| Category       | Android | iOS | Web | Windows | MacOS | Linux |
| -------------- | :-----: | :-: | :-: | :-----: | :---: | :---: |
| Analytics      |   🔴    | ✅  | 🔴  |   🔴    |  🔴   |  🔴   |
| API (REST)     |   ✅    | ✅  | 🔴  |   🔴    |  🔴   |  🔴   |
| API (GraphQL)  |   ✅    | ✅  | 🔴  |   🔴    |  🔴   |  🔴   |
| Authentication |   ✅    | ✅  | ✅  |   ✅    |  ✅   |  ✅   |
| DataStore      |   ✅    | ✅  | 🔴  |   🔴    |  🔴   |  🔴   |
| Storage        |   ✅    | ✅  | 🔴  |   🔴    |  🔴   |  🔴   |

### To Be Implemented

- [ ] Predictions
- [ ] Geo
- [ ] Storage Hub Events (Listening to the Amplify Storage events)

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

#### Getting Started with Flutter app development and Amplify

- Clone this repository
- Install Amplify in a Flutter project
- Add basic Amplify functionality to your project using one of the supported categories

1. `git clone git@github.com:aws-amplify/amplify-flutter.git`

2. Open your Flutter project. If you do not have an active Flutter project, you can create one after installing the [Flutter development tooling](https://flutter.dev/docs/get-started/install) and running `flutter create <project-name>` in your terminal.

3. Using the Amplify CLI, run `amplify init` from the root of your project:

See [Amplify CLI Installation](https://docs.amplify.aws/lib/project-setup/prereq/q/platform/flutter#install-and-configure-the-amplify-cli)

```bash
==> amplify init
Note: It is recommended to run this command from the root of your app directory
? Enter a name for the project helloAmplify
? Enter a name for the environment dev
? Choose your default editor: Visual Studio Code
? Choose the type of app that you\'re building flutter
Please tell us about your project
Only the following resource types are supported:
 * Auth
 * Analytics
 * Storage
 * API
? Where do you want to store your configuration file? ./lib/
```

4. Add Amplify categories (choose defaults for this example):

   ```bash
   $ amplify add auth
   $ amplify add analytics
   ```

5. Push changes to the cloud to provision the backend resources:

   ```bash
   $ amplify push
   ```

6. In your pubspec.yaml file, add the following to `dependencies`:

> Note: Do not include dependencies in your `pubspec` file that you are not using in your app. This can cause a configuration error in the underlying SDK.

```yaml
dependencies:
  flutter:
    sdk: flutter
  amplify_flutter:
    path: /{path to your local amplify-flutter}/amplify-flutter/packages/amplify_flutter
  amplify_analytics_pinpoint:
    path: /{path to your local amplify-flutter}/amplify-flutter/packages/amplify_analytics_pinpoint
  amplify_auth_cognito:
    path: /{path to your local amplify-flutter}/amplify-flutter/packages/amplify_auth_cognito
```

7. From the terminal run

```bash
flutter pub get
```

8. In your main.dart file, add:

```dart
import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

import 'amplifyconfiguration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _amplifyConfigured = false;

  @override
  void initState() {
    super.initState();
  }

  void _configureAmplify() async {
    if (!mounted) return;

    // Add Pinpoint and Cognito Plugins
    Amplify.addPlugin(AmplifyAuthCognito());
    Amplify.addPlugin(AmplifyAnalyticsPinpoint());

    // Once Plugins are added, configure Amplify
    try {
      await Amplify.configure(amplifyconfig);
      setState(() {
        _amplifyConfigured = true;
      });
    } on AmplifyAlreadyConfiguredException {
      print(
          "Amplify was already configured. Looks like app restarted on android.");
    }

  }

  // Send an event to Pinpoint
  void _recordEvent() async {
    AnalyticsEvent event = AnalyticsEvent('test');
    event.properties.addBoolProperty('boolKey', true);
    event.properties.addDoubleProperty('doubleKey', 10.0);
    event.properties.addIntProperty('intKey', 10);
    event.properties.addStringProperty('stringKey', 'stringValue');
    Amplify.Analytics.recordEvent(event: event);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Amplify example app'),
          ),
          body: ListView(padding: EdgeInsets.all(10.0), children: <Widget>[
            Center(
              child: Column (
                children: [
                  const Padding(padding: EdgeInsets.all(5.0)),
                  ElevatedButton(
                    onPressed: _amplifyConfigured ? null : _configureAmplify,
                    child: const Text('configure Amplify')
                  ),
                  ElevatedButton(
                    onPressed: _amplifyConfigured ? _recordEvent : null,
                    child: const Text('record event')
                  )
                ]
              ),
            )
          ])
      )
    );
  }
}
```

For iOS builds complete the following steps (from the root of your project):

- `rm ios/Podfile`
- `flutter build ios`
- Modify the `ios/Podfile` and replace the second line with: `platform :ios, '11.0'`.

This ensures that your Flutter project is running the same ios version that the Amplify plugins are built on.

9. From the root of your project, execute `flutter run` in the terminal.

> Make sure that an Android or iOS device is already running; this can be a virtual device started from Android Studio.

Click **Configure Amplify**, then **Record Event**. From the terminal (in the root of your project) run `amplify console analytics`. This will open the Amazon Pinpoint console for your project in your default web browser. Within about a minute you should start seeing the events populating in the Events section of then Pinpoint console.

For further documentation and Amplify Category API usage, see the [documentation](https://docs.amplify.aws/lib/q/platform/flutter).

---

Flutter and the related logo are trademarks of Google LLC. We are not endorsed by or affiliated with Google LLC.
