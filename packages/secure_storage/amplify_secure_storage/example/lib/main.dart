// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final storage = AmplifySecureStorage(
    config: AmplifySecureStorageConfig(
      scope: 'test',
      // enabling useDataProtection requires adding the app to an
      // app group, which requires setting a development team
      // ignore: invalid_use_of_visible_for_testing_member
      macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
    ),
  );
  String _key = '';
  String _value = '';

  void showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  void showException(Exception e) {
    showMessage('An exception occurred: $e');
  }

  void read() async {
    try {
      final value = await storage.read(key: _key);
      showMessage('Value of $_key is: $value');
    } on Exception catch (e) {
      showException(e);
    }
  }

  void write() async {
    try {
      await storage.write(key: _key, value: _value);
      showMessage('Wrote $_key:$_value');
    } on Exception catch (e) {
      showException(e);
    }
  }

  void delete() async {
    try {
      await storage.delete(key: _key);
      showMessage('Removed $_key from storage');
    } on Exception catch (e) {
      showException(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                initialValue: _key,
                decoration: const InputDecoration(
                  label: Text('Key'),
                ),
                onChanged: (value) => setState(() => _key = value),
              ),
              TextFormField(
                initialValue: _key,
                decoration: const InputDecoration(
                  label: Text('Value'),
                ),
                onChanged: (value) => setState(() => _value = value),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: read,
                child: const Text('Read'),
              ),
              ElevatedButton(
                onPressed: write,
                child: const Text('Write'),
              ),
              ElevatedButton(
                onPressed: delete,
                child: const Text('Delete'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
