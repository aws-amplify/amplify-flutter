// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_native_legacy_wrapper/amplify_native_legacy_wrapper.dart';
import 'package:amplify_native_legacy_wrapper_example/amplifyconfiguration.dart';
import 'package:aws_common/aws_common.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _amplifyNativeLegacyWrapperPlugin = AmplifyNativeLegacyWrapper();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                try {
                  await _amplifyNativeLegacyWrapperPlugin.configure(
                    amplifyconfig,
                  );
                  safePrint('configured!');
                } on Exception catch (e) {
                  safePrint(e);
                }
              },
              child: const Text('Configure'),
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  await _amplifyNativeLegacyWrapperPlugin.signIn(
                    'Test-User',
                    'password123',
                  );
                  safePrint('signed in!');
                } on Exception catch (e) {
                  safePrint(e);
                }
              },
              child: const Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
