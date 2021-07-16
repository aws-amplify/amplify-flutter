import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter_localizations/flutter_localizations.dart';

import 'amplifyconfiguration.dart';

class AuthenticatorLocalizations {
  AuthenticatorLocalizations(this.locale);

  final Locale locale;

  static AuthenticatorLocalizations of(BuildContext context) {
    return Localizations.of<AuthenticatorLocalizations>(
        context, AuthenticatorLocalizations)!;
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Hello World',
    },
    'es': {
      'title': 'Hola Mundo',
    },
  };

  String get title {
    return _localizedValues[locale.languageCode]!['title']!;
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const [
        AuthenticatorLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();

    _amplifyConfig();
  }

// Amplify Configuration
  void _amplifyConfig() async {
    try {
      await Amplify.addPlugin(AmplifyAuthCognito());
      await Amplify.configure(amplifyconfig);
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();

    _amplifyConfig();
  }

// Amplify Configuration
  void _amplifyConfig() async {
    try {
      await Amplify.addPlugin(AmplifyAuthCognito());
      // await Amplify.configure(amplifyconfig);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: const CustomersApp(),
    );
  }
}

class CustomersApp extends StatelessWidget {
  const CustomersApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer's App"),
      ),
      body: SignOutButton(),
    );
  }
}
