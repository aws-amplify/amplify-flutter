// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// LOCAL ONLY — do not commit.
// Run with: flutter run -t lib/main_test_runner.dart

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart' hide LogLevel;
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    show AmplifyLogging, AmplifySimplePrinterLogSink, LogLevel;
import 'package:flutter/material.dart';

import 'amplify_outputs.dart';
import 'test_runner_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AmplifyLogging.addSink(
    AmplifySimplePrinterLogSink(logLevel: LogLevel.verbose),
  );
  runApp(const TestRunnerApp());
}

class TestRunnerApp extends StatefulWidget {
  const TestRunnerApp({super.key});

  @override
  State<TestRunnerApp> createState() => _TestRunnerAppState();
}

class _TestRunnerAppState extends State<TestRunnerApp> {
  bool _configured = false;
  String _error = '';

  @override
  void initState() {
    super.initState();
    _configure();
  }

  Future<void> _configure() async {
    try {
      final storageFactory = AmplifySecureStorage.factoryFrom(
        // ignore: invalid_use_of_visible_for_testing_member
        macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
      );
      await Amplify.addPlugins([
        AmplifyAuthCognito(secureStorageFactory: storageFactory),
      ]);
      await Amplify.configure(amplifyConfig);
      setState(() => _configured = true);
    } on Exception catch (e) {
      setState(() => _error = '$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_configured) {
      return MaterialApp(
        home: Scaffold(
          body: Center(
            child: _error.isNotEmpty
                ? Text(_error, style: const TextStyle(color: Colors.red))
                : const CircularProgressIndicator(),
          ),
        ),
      );
    }

    return Authenticator(
      child: MaterialApp(
        builder: Authenticator.builder(),
        home: const TestRunnerPage(),
      ),
    );
  }
}
