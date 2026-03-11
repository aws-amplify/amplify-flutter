// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:typed_data';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    show Error, Ok;
import 'package:aws_kinesis_datastreams/aws_kinesis_datastreams.dart';
import 'package:flutter/material.dart';

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
  bool _isEnabled = true;
  String _statusMessage = 'Client not initialized.';
  String _streamName = '';
  String _partitionKey = 'partition-1';
  String _recordData = '';

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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Kinesis Data Streams Example'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Status section
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Status',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(_statusMessage),
                    const SizedBox(height: 8),
                    Text(
                      'Client: ${_client != null ? 'initialized' : 'not initialized'}',
                    ),
                    Text('Enabled: $_isEnabled'),
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
                      onChanged: (text) => _streamName = text,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'Partition Key',
                        hintText: 'Enter partition key',
                      ),
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
                      onPressed: _client != null ? _recordEvent : null,
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
                          onPressed: _client != null ? _flushEvents : null,
                          child: const Text('Flush'),
                        ),
                        ElevatedButton(
                          onPressed: _client != null ? _clearCache : null,
                          child: const Text('Clear Cache'),
                        ),
                        ElevatedButton(
                          onPressed: _client != null ? _toggleEnabled : null,
                          child: Text(
                            _isEnabled ? 'Disable' : 'Enable',
                          ),
                        ),
                        ElevatedButton(
                          onPressed: _client != null ? _closeClient : null,
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
