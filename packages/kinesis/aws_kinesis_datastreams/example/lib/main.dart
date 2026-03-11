// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:typed_data';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    show Error, Ok;
import 'package:aws_kinesis_datastreams/aws_kinesis_datastreams.dart';
import 'package:flutter/material.dart';

import 'amplify_outputs.dart';

void main() {
  runApp(const KinesisExampleApp());
}

class KinesisExampleApp extends StatefulWidget {
  const KinesisExampleApp({super.key});

  @override
  State<KinesisExampleApp> createState() => _KinesisExampleAppState();
}

class _KinesisExampleAppState extends State<KinesisExampleApp> {
  AmplifyKinesisClient? _client;
  bool _amplifyConfigured = false;
  bool _isEnabled = true;
  String _statusMessage = 'Not configured.';
  String _streamName = 'amplify-kinesis-test-stream';
  String _partitionKey = 'partition-1';
  String _recordData = '';

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  void _configureAmplify() async {
    if (!mounted) return;

    try {
      // FIXME: In your app, make sure to remove this line and set up
      /// Keychain Sharing in Xcode as described in the docs:
      /// https://docs.amplify.aws/lib/project-setup/platform-setup/q/platform/flutter/#enable-keychain
      final storageFactory = AmplifySecureStorage.factoryFrom(
        // ignore: invalid_use_of_visible_for_testing_member
        macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
      );

      await Amplify.addPlugins([
        AmplifyAuthCognito(secureStorageFactory: storageFactory),
      ]);
      await Amplify.configure(amplifyConfig);

      setState(() {
        _amplifyConfigured = true;
        _statusMessage = 'Amplify configured. Sign in to initialize client.';
      });
    } on Exception catch (e) {
      setState(() {
        _statusMessage = 'Amplify configuration failed: $e';
      });
    }
  }

  void _updateStatus(String message) {
    setState(() {
      _statusMessage = message;
    });
  }

  void _recordEvent() async {
    final client = _client;
    if (client == null) {
      _updateStatus('Client not initialized.');
      return;
    }
    if (_streamName.isEmpty || _recordData.isEmpty) {
      _updateStatus('Stream name and record data are required.');
      return;
    }

    final result = await client.record(
      data: Uint8List.fromList(utf8.encode(_recordData)),
      partitionKey: _partitionKey,
      streamName: _streamName,
    );

    if (result is Ok) {
      _updateStatus('Record queued successfully.');
    } else if (result is Error<void>) {
      _updateStatus('Record failed: ${result.error}');
    }
  }

  void _flushEvents() async {
    final client = _client;
    if (client == null) {
      _updateStatus('Client not initialized.');
      return;
    }

    final result = await client.flush();
    if (result is Ok<FlushData>) {
      _updateStatus('Flushed ${result.value.recordsFlushed} records.');
    } else if (result is Error<FlushData>) {
      _updateStatus('Flush failed: ${result.error}');
    }
  }

  void _clearCache() async {
    final client = _client;
    if (client == null) {
      _updateStatus('Client not initialized.');
      return;
    }

    final result = await client.clearCache();
    if (result is Ok<ClearCacheData>) {
      _updateStatus('Cleared ${result.value.recordsCleared} records '
          'from cache.');
    } else if (result is Error<ClearCacheData>) {
      _updateStatus('Clear cache failed: ${result.error}');
    }
  }

  void _toggleEnabled() {
    final client = _client;
    if (client == null) {
      _updateStatus('Client not initialized.');
      return;
    }

    setState(() {
      _isEnabled = !_isEnabled;
      if (_isEnabled) {
        client.enable();
      } else {
        client.disable();
      }
    });
    _updateStatus('Client ${_isEnabled ? 'enabled' : 'disabled'}.');
  }

  void _closeClient() async {
    final client = _client;
    if (client == null) {
      _updateStatus('Client not initialized.');
      return;
    }

    await client.close();
    setState(() {
      _client = null;
    });
    _updateStatus('Client closed.');
  }

  @override
  void dispose() {
    _client?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isClientReady = _client != null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Kinesis Data Streams Example'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Configuration section
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Configuration',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(_statusMessage),
                    const SizedBox(height: 8),
                    Text(
                      'Amplify configured: $_amplifyConfigured',
                    ),
                    Text(
                      'Client: ${isClientReady ? 'initialized' : 'not initialized'}',
                    ),
                    if (isClientReady) Text('Enabled: $_isEnabled'),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: _amplifyConfigured ? null : _configureAmplify,
                      child: const Text('Configure Amplify'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Record section
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Record',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'Stream Name',
                        hintText: 'Enter Kinesis stream name',
                      ),
                      controller: TextEditingController(text: _streamName),
                      onChanged: (text) => _streamName = text,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'Partition Key',
                        hintText: 'Enter partition key',
                      ),
                      controller: TextEditingController(text: _partitionKey),
                      onChanged: (text) => _partitionKey = text,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'Record Data',
                        hintText: 'Enter data to record',
                      ),
                      onChanged: (text) => _recordData = text,
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: isClientReady ? _recordEvent : null,
                      child: const Text('Record'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Actions section
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Actions',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        ElevatedButton(
                          onPressed: isClientReady ? _flushEvents : null,
                          child: const Text('Flush'),
                        ),
                        ElevatedButton(
                          onPressed: isClientReady ? _clearCache : null,
                          child: const Text('Clear Cache'),
                        ),
                        ElevatedButton(
                          onPressed: isClientReady ? _toggleEnabled : null,
                          child: Text(
                            _isEnabled ? 'Disable' : 'Enable',
                          ),
                        ),
                        ElevatedButton(
                          onPressed: isClientReady ? _closeClient : null,
                          child: const Text('Close Client'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
