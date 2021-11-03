import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'amplifyconfiguration.dart';
import 'localized_button_resolver.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  /// When using the Authenticator, configuration of Amplify is still the
  /// responsibility of the developer. This allows you the opportunity to
  /// customize plugin options and add/remove them as needed.
  void _configureAmplify() async {
    try {
      await Amplify.addPlugin(AmplifyAuthCognito());
      await Amplify.configure(amplifyconfig);
      print('Successfully configured');
    } on Exception catch (e) {
      print('Error configuring Amplify: $e');
    }
  }

  /// Our custom username validator, which ensures that all usernames contain
  /// the word "amplify".
  String? _validateUsername(String? username) {
    if (username == null || username.isEmpty) {
      return 'Username cannot be empty';
    }

    bool containsAmplify = username.contains('amplify');
    if (!containsAmplify) {
      return 'Username needs to include amplify';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    // First, we set up the custom localizations for Authenticator buttons by
    // creating a custom resolver which conforms to the `ButtonResolver` class
    // from the Authenticator library.
    //
    // In addition to ButtonResolver, which handles the labels for buttons, there
    // are also resolvers for input fields, screen titles, and navigation-related
    // items, all of which can be customized as well. To keep this demo simple,
    // we only specify a custom button resolver, which automatically configures
    // the default for the others.
    const stringResolver = AuthStringResolver(
      buttons: LocalizedButtonResolver(),
    );

    // We wrap our application in an Authenticator component. This component
    // handles all the screens and logic whenever the user is signed out. Once
    // the user is signed in, the Authenticator will show whichever Widget we
    // provide as `child`.
    final authenticator = Authenticator(
      stringResolver: stringResolver,

      // Next, we create a custom Sign Up form which uses our custom username
      // validator.
      // signUpForm: SignUpForm.custom(
      //   fields: [
      //     SignUpFormField.username(
      //       validator: _validateUsername,
      //     ),
      //     SignUpFormField.password(),
      //     SignUpFormField.passwordConfirmation(),
      //   ],
      // ),

      // Finally, we specify the widget to use once the user is signed in.
      child: const SignedInScreen(),
    );

    return MaterialApp(
      title: 'Authenticator Demo',
      theme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,

      // These lines enable our custom localizations specified in the lib/l10n
      // directory, which will be used later to customize the values displayed
      // in the Authenticator component.
      localizationsDelegates: const [
        AppLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('es'), // Spanish
      ],

      // The Authenticator component should be a descendant of your MaterialApp.
      home: authenticator,
    );
  }
}

/// The screen which is shown once the user is logged in. We can use [SignOutButton]
/// from the Authenticator library anywhere in our app to provide a pre-configured
/// sign out experience. Alternatively, we can call [Amplify.Auth.signOut] which
/// will also notify the Authenticator.
class SignedInScreen extends StatelessWidget {
  const SignedInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signed In'),
      ),
      body: const Center(child: SignOutButton()),
    );
  }
}
