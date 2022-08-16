# amplify_authenticator

The Amplify Flutter Authenticator simplifies the process of authenticating users by providing a fully-customizable flow which just works. Simply wrap your app's authenticated route in an Authenticator component and the process of authenticating users and managing login sessions is handled for you.

## Developer Preview

The Amplify Flutter libraries are being rewritten in Dart. This version is part of our developer preview for all platforms and is **not** intended for production usage. Please follow our [Web](https://github.com/aws-amplify/amplify-flutter/issues/234) and [Desktop](https://github.com/aws-amplify/amplify-flutter/issues/133) support tickets to monitor the status of supported categories. We will be releasing Web and Desktop support for all Amplify categories incrementally.

For production use cases please use the latest, non-tagged versions of amplify-flutter packages from `pub.dev`. They offer a stable, production-ready experience for Android and iOS.

## Example

See the [example](https://github.com/aws-amplify/amplify-flutter/tree/release-candidate/packages/amplify_authenticator/example) which showcases many of the customizations available.

## Getting Started

To get started, add the Authenticator to a project which has the [Auth category](https://docs.amplify.aws/lib/auth/getting-started/q/platform/flutter/) configured.

```yaml
dependencies:
  amplify_auth_cognito: ^0.4.2
  amplify_authenticator: ^0.1.0
  amplify_flutter: ^0.4.2
```

Then, wrap your app's logged in component with an `Authenticator` widget, and you're good to go. You can use the `SignOutButton` to sign out the user from anywhere in your app.

> Remember to call `Amplify.configure` with your configuration - the Authenticator will not load until you call this method.

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
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
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
    } on Exception catch (e) {
      print('Could not configure Amplify: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        builder: Authenticator.builder(),
        home: const LoggedInScreen(),
      ),
    );
  }
}

class LoggedInScreen extends StatelessWidget {
  const LoggedInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            Text('Logged In'),
            SignOutButton(),
          ],
        ),
      ),
    );
  }
}
```
