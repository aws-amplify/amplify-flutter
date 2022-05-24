// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final storage = AmplifySecureStorage(
    config: const AmplifySecureStorageConfig(
      packageId: 'com.example.test',
      scope: 'test',
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
