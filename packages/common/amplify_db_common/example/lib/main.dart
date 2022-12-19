// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_db_common_example/db.dart';
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
  static final _db = AppDb();
  var _initialized = false;
  var _count = 0;

  @override
  void initState() {
    super.initState();
    _initializeDb();
  }

  Future<void> _initializeDb() async {
    _count = await _db.getLatestCount();
    setState(() {
      _initialized = true;
    });
  }

  Future<void> _decrementCount() async {
    final newCount = await _db.decrementCount();
    setState(() {
      _count = newCount;
    });
  }

  Future<void> _incrementCount() async {
    final newCount = await _db.incrementCount();
    setState(() {
      _count = newCount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DB Example'),
        ),
        body: Center(
          child: _initialized
              ? Text('Count: $_count')
              : const CircularProgressIndicator(),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: _decrementCount,
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              onPressed: _incrementCount,
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
