import 'dart:io';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter_localizations/flutter_localizations.dart';

import 'amplifyconfiguration.dart';

void main() {
  runApp(MyHomePage());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // static void setLocale(BuildContext context, Locale newLocale) async {
  //   _MyHomePageState? state = context.findAncestorStateOfType<_MyHomePageState>();
  //     state!.changeLanguage(spanish);
  // }

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
    // try {
    //   _locale = localeList.firstWhere((Locale locale) {
    //     return locale.toLanguageTag() == Platform.localeName.replaceAll('_', '-');
    //   });
    // } on Exception {
    //   _locale = english;
    // }

    var d;
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
