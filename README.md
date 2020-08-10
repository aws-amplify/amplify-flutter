<img src="https://s3.amazonaws.com/aws-mobile-hub-images/aws-amplify-logo.png" alt="AWS Amplify" width="550" >

## AWS-Amplify-Flutter is a library for Flutter developers building cloud-enabled applications

#### Visit our [Web Site](https://docs.amplify.aws/) to learn more about AWS Amplify.

## Local Development Guide

Amplify-Flutter is an open-source project and welcomes contributions from the Flutter community.


### Getting Started with Local Development

The following instuctions will help you:

* pull the Amplify-Flutter project;
* install it in a project for local development;
* add basic Amplify functionality to your project

1. Clone the Amplify-Flutter [GitHub repository](git@github.com:aws-amplify/amplify-flutter.git).

2. Open your Flutter project. If you do not have an active Flutter project, you can create one after installing the [Flutter development tooling](https://flutter.dev/docs/get-started/install) and running the `flutter create <project-name>` command.

3. Using the Amplify-CLI, run `amplify init` from the root of your project:

```bash
==> amplify-dev init
Note: It is recommended to run this command from the root of your app directory
? Enter a name for the project helloAmplify
? Enter a name for the environment dev
? Choose your default editor: Visual Studio Code
? Choose the type of app that you\'re building flutter
Please tell us about your project
⚠️  Flutter project support in the Amplify CLI is in DEVELOPER PREVIEW status.
Currently, the following resource types are supported:
 * Auth
 * Analytics
 * Storage
Other categories may not function as expected for Flutter projects.
? Where do you want to store your configuration file? ./lib/
```

4. Run `amplify analytics add`, follow the defaults and be sure indicate that you want to add authorization. Next, run `amplify push`. 

5. In your pubspec.yaml file, add the following:

```yaml
  amplify_core:
    path: /{path to your local amplify-flutter}/amplify-flutter/packages/amplify_core 
  amplify_analytics_pinpoint:
    path: /{path to your local amplify-flutter}/amplify-flutter/packages/amplify_analytics_pinpoint
  amplify_auth_cognito:
    path: /{path to your local amplify-flutter}/amplify-flutter/packages/amplify_auth_cognito
```

6. In your main.dart file, add:

```dart
import 'package:flutter/material.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_analytics_plugin_interface/analytics_plugin_interface.dart';
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

  // Instantiate Amplify
  Amplify amplifyInstance = new Amplify();

  @override
  void initState() {
    super.initState();
  }

  void _configureAmplify() async {
    if (!mounted) return;

    // Add Pinpoint and Cognito Plugins
    AmplifyAnalyticsPinpointPlugin analyticsPlugin = new AmplifyAnalyticsPinpointPlugin();
    AmplifyAuthCognito authPlugin = new AmplifyAuthCognito();
    amplifyInstance.addPlugin(authPlugins: [authPlugin]);
    amplifyInstance.addPlugin(analyticsPlugins: [analyticsPlugin]);

    // Once Plugins are added, configure Amplify
    await amplifyInstance.configure(amplifyconfig);
    try {
      setState(() {
        _amplifyConfigured = true;
      });
    } catch (e) {
      print(e);
    }

  }

  // Send an event to Pinpoint
  void _recordEvent() async {
    AnalyticsEvent event = AnalyticsEvent("test");
    event.properties.addBoolProperty("boolKey", true);
    event.properties.addDoubleProperty("doubleKey", 10.0);
    event.properties.addIntProperty("intKey", 10);
    event.properties.addStringProperty("stringKey", "stringValue");
    Amplify.Analytics.recordEvent(event: event);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Amplify Core example app'),
          ),
          body: ListView(padding: EdgeInsets.all(10.0), children: <Widget>[
            Center( 
              child: Column (
                children: [
                  const Padding(padding: EdgeInsets.all(5.0)),
                  RaisedButton(
                    onPressed: _amplifyConfigured ? null : _configureAmplify,
                    child: const Text('configure Amplify')
                  ),
                  RaisedButton(
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
7. From the root of your project, execute `flutter pub get` and `flutter run` from your terminal.  Make sure that an Android or iOS device are already running; you can do so from Android Studio.
