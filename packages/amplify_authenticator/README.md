# amplify_authenticator

The Amplify Flutter Authenticator simplifies the process of authenticating users by providing a fully-customizable flow which just works. Simply wrap your app's authenticated route in an Authenticator component and the process of authenticating users and managing login sessions is handled for you.

## Example

See the [example](https://github.com/aws-amplify/amplify-flutter/tree/release-candidate/packages/amplify_authenticator/example) which showcases many of the customizations available.

## Getting Started

To get started, add the Authenticator to a project which has the [Auth category](https://docs.amplify.aws/lib/auth/getting-started/q/platform/flutter/) configured.

```yaml
dependencies:
  amplify_auth_cognito: ^0.6.0
  amplify_authenticator: ^0.2.0
  amplify_flutter: ^0.6.0
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

## Setting up & Troubleshooting AutoFill

`Authenticator` provides built-in `AutoFill` features for the generated `Forms`. Some additional configurations could be necessary to provide the best user experience and ensure your app fully supports password autofill.

Please refer to the [official documentation](https://api.flutter.dev/flutter/material/TextField/autofillHints.html) for the configuration steps and how to troubleshoot this feature.

### AutoFillHints Platform Support

The following `AutoFillHints` have been implemented for the `Authenticator` package. 

| AutoFillHint | iOS | Android | Web |
| ------------ | :-: | :-----: | :-: |
| birthday | ❌ |	✅ |	✅ |
| countryName | ✅ |	✅ |	✅ |
| email | ✅ |	✅ |	✅ |
| familyName | ✅ |	✅ |	✅ |
| fullStreetAddress | ✅ |	✅ |	✅ |
| gender | ❌ |	✅ |	✅ |
| givenName | ✅ |	✅ |	✅ |
| middleName | ✅ |	✅ |	✅ |
| name | ✅ |	✅ |	✅ |
| newPassword | ✅ |	✅ |	✅ |
| newUsername | ❌ |	✅ |	❌ |
| nickname | ✅ |	❌ |	✅ |
| oneTimeCode | ✅ |	✅ |	✅ |
| password | ✅ |	✅ |	✅ |
| telephoneNumber | ✅ |	✅ |	✅ |
| username | ✅ |	✅ |	✅ |

Supported Hints are automatically translated to their platform-specific equivalent. Otherwise, the hint string will be used as-is.