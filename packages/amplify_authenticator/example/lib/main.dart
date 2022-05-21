import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator_example/resolvers/localized_button_resolver.dart';
import 'package:amplify_authenticator_example/resolvers/localized_country_resolver.dart';
import 'package:amplify_authenticator_example/resolvers/localized_input_resolver.dart';
import 'package:amplify_authenticator_example/resolvers/localized_title_resolver.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
  String? _validateUsername(UsernameInput? input) {
    final username = input?.username;
    if (username == null || username.isEmpty) {
      return 'Username cannot be empty';
    }

    final bool containsAmplify = username.contains('amplify');
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
    // In addition to ButtonResolver, which handles the labels for buttons,
    // there are also resolvers for input fields, screen titles, and
    // navigation-related items, all of which can be customized as well. To keep
    // this demo simple, we only specify a custom button resolver, which
    // automatically configures the default for the others.
    const stringResolver = AuthStringResolver(
      buttons: LocalizedButtonResolver(),
      countries: LocalizedCountryResolver(),
      titles: LocalizedTitleResolver(),
      inputs: LocalizedInputResolver(),
    );

    // We wrap our MaterialApp in an Authenticator component. This component
    // handles all the screens and logic whenever the user is signed out. Once
    // the user is signed in, the Authenticator will use your MaterialApp's
    // navigator to show the correct screen.
    return Authenticator(
      stringResolver: stringResolver,
      onException: (exception) {
        print('[ERROR]: $exception');
      },

      // Next, we create a custom Sign Up form which uses our custom username
      // validator.
      //
      // Providing a custom SignUpForm allows for simple customizations such as
      // adding a sign up attribute or adding a custom validator. More complex
      // customizations can be achieved by providing a custom builder method to
      // Authenticator.builder()
      signUpForm: SignUpForm.custom(
        fields: [
          SignUpFormField.username(
            validator: _validateUsername,
          ),
          SignUpFormField.email(required: true),
          SignUpFormField.password(),
          SignUpFormField.passwordConfirmation(),
          SignUpFormField.address(),
          SignUpFormField.custom(
            title: 'Bio',
            attributeKey: const CognitoUserAttributeKey.custom('bio'),
          ),
          SignUpFormField.custom(
            title: 'Age',
            attributeKey: const CognitoUserAttributeKey.custom('age'),
          )
        ],
      ),

      // Your MaterialApp should be the child of the Authenticator.
      child: MaterialApp(
        title: 'Authenticator Demo',
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
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

        // The Authenticator component must wrap your Navigator component which
        // can be done using the `builder` method.
        builder: Authenticator.builder(),

        initialRoute: '/routeA',
        routes: {
          '/routeA': (BuildContext context) => const RouteA(),
          '/routeB': (BuildContext context) => const RouteB(),
        },
      ),
    );
  }

  // Some routes in your application may not require authentication.
  // To handle this use case, instead of providing Authenticator.builder(),
  // simply wrap the routes that require authentication in an
  // AuthenticatedView widget.
  //
  // uncomment the build method below to try this out

  // @override
  // Widget build(BuildContext context) {
  //   return Authenticator(
  //     child: MaterialApp(
  //       theme: ThemeData.light(),
  //       darkTheme: ThemeData.dark(),
  //       themeMode: ThemeMode.system,
  //       debugShowCheckedModeBanner: false,
  //       initialRoute: '/routeA',
  //       routes: {
  //         '/routeA': (BuildContext context) => const RouteA(),
  //         '/routeB': (BuildContext context) {
  //           return const AuthenticatedView(
  //             child: RouteB(),
  //           );
  //         },
  //       },
  //     ),
  //   );
  // }

  // Providing a `builder` argument to Authenticator.builder allows you to
  // build a custom UI for the authenticator composed of a mix of
  // prebuilt widgets from the amplify_authenticator package, and widgets
  // you build yourself.
  //
  // See authenticator_with_custom_layout.dart for more info
  //
  // Uncomment the build method below (and comment out the one above) to
  // see a simple example of this

  // @override
  // Widget build(BuildContext context) {
  //   return const AuthenticatorWithCustomLayout();
  // }

  // Below is another example of a custom authenticator, with a custom
  // onboarding widget

  // @override
  // Widget build(BuildContext context) {
  //   return const AuthenticatorWithOnboarding();
  // }

  // Below is yet another example of a custom authenticator, with a widget to
  // support Cognito's Custom Auth flow
  // @override
  // Widget build(BuildContext context) {
  //   return const AuthenticatorWithCustomAuthFlow();
  // }
}

/// The screen which is shown once the user is logged in. We can use
/// [SignOutButton] from the Authenticator library anywhere in our app to
/// provide a pre-configured sign out experience. Alternatively, we can call
/// [Amplify.Auth.signOut] which will also notify the Authenticator.
class RouteA extends StatelessWidget {
  const RouteA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route A'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pushReplacementNamed('/routeB'),
              child: const Text('Goto Route B'),
            ),
            const SizedBox(height: 20),
            const SignOutButton(),
          ],
        ),
      ),
    );
  }
}

class RouteB extends StatelessWidget {
  const RouteB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route B'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pushReplacementNamed('/routeA'),
              child: const Text('Goto Route A'),
            ),
            const SizedBox(height: 20),
            const SignOutButton(),
          ],
        ),
      ),
    );
  }
}
