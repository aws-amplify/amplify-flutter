// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:typed_data';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart' hide LogLevel;
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    as foundation
    show AWSCredentialsProvider, TemporaryCredentials;
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    show AmplifyLogging, AmplifySimplePrinterLogSink, Error, LogLevel, Ok;
import 'package:amplify_kinesis/amplify_kinesis.dart';
import 'package:flutter/material.dart';

import 'amplify_outputs.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Register a verbose log sink so all Kinesis internal logs are visible.
  AmplifyLogging.addSink(
    AmplifySimplePrinterLogSink(logLevel: LogLevel.verbose),
  );

  runApp(const KinesisExampleApp());
}

/// An [foundation.AWSCredentialsProvider] that fetches credentials from
/// Amplify Auth's current session.
class _AmplifyAuthCredentialsProvider
    implements foundation.AWSCredentialsProvider {
  @override
  Future<foundation.TemporaryCredentials> resolve() async {
    final session =
        await Amplify.Auth.fetchAuthSession(
              options: const FetchAuthSessionOptions(forceRefresh: false),
            )
            as CognitoAuthSession;

    final credentials = session.credentialsResult.value;
    return foundation.TemporaryCredentials(
      credentials.accessKeyId,
      credentials.secretAccessKey,
      credentials.sessionToken!,
      credentials.expiration!,
    );
  }
}

class KinesisExampleApp extends StatefulWidget {
  const KinesisExampleApp({super.key});

  @override
  State<KinesisExampleApp> createState() => _KinesisExampleAppState();
}

class _KinesisExampleAppState extends State<KinesisExampleApp> {
  bool _amplifyConfigured = false;
  String _configError = '';

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {
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
      });
    } on Exception catch (e) {
      setState(() {
        _configError = 'Amplify configuration failed: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_amplifyConfigured) {
      return MaterialApp(
        home: Scaffold(
          body: Center(
            child: _configError.isNotEmpty
                ? Text(_configError, style: const TextStyle(color: Colors.red))
                : const CircularProgressIndicator(),
          ),
        ),
      );
    }

    return Authenticator(
      child: MaterialApp(
        builder: Authenticator.builder(),
        home: const _KinesisHomePage(),
      ),
    );
  }
}

class _KinesisHomePage extends StatefulWidget {
  const _KinesisHomePage();

  @override
  State<_KinesisHomePage> createState() => _KinesisHomePageState();
}

class _KinesisHomePageState extends State<_KinesisHomePage> {
  AmplifyKinesisClient? _client;
  bool _isEnabled = true;
  String _statusMessage = 'Initializing client...';
  String _streamName = 'amplify-kinesis-test-stream';
  String _partitionKey = 'partition-1';
  String _recordData = '';

  late final TextEditingController _streamNameController;
  late final TextEditingController _partitionKeyController;

  @override
  void initState() {
    super.initState();
    _streamNameController = TextEditingController(text: _streamName);
    _partitionKeyController = TextEditingController(text: _partitionKey);
    _initializeClient();
  }

  @override
  void dispose() {
    _streamNameController.dispose();
    _partitionKeyController.dispose();
    _client?.close();
    super.dispose();
  }

  Future<void> _initializeClient() async {
    try {
      final region = _parseRegionFromConfig();
      final client = await AmplifyKinesisClient.create(
        region: region,
        credentialsProvider: _AmplifyAuthCredentialsProvider(),
      );

      setState(() {
        _client = client;
        _statusMessage = 'Client ready (region: $region).';
      });
    } on Exception catch (e) {
      setState(() {
        _statusMessage = 'Client initialization failed: $e';
      });
    }
  }

  String _parseRegionFromConfig() {
    final config = jsonDecode(amplifyConfig) as Map<String, dynamic>;
    final auth = config['auth'] as Map<String, dynamic>;
    return auth['aws_region'] as String;
  }

  void _updateStatus(String message) {
    setState(() {
      _statusMessage = message;
    });
  }

  Future<void> _recordEvent() async {
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
    } else if (result is Error<RecordData>) {
      _updateStatus('Record failed: ${result.error}');
    }
  }

  Future<void> _flushEvents() async {
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

  Future<void> _clearCache() async {
    final client = _client;
    if (client == null) {
      _updateStatus('Client not initialized.');
      return;
    }

    final result = await client.clearCache();
    if (result is Ok<ClearCacheData>) {
      _updateStatus(
        'Cleared ${result.value.recordsCleared} records '
        'from cache.',
      );
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

  Future<void> _closeClient() async {
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

  Future<void> _signOut() async {
    final client = _client;
    if (client != null && !client.isClosed) {
      await client.close();
    }
    setState(() {
      _client = null;
    });
    await Amplify.Auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    final isClientReady = _client != null;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kinesis Data Streams Example'),
        actions: [
          IconButton(
            onPressed: _signOut,
            icon: const Icon(Icons.logout),
            tooltip: 'Sign Out',
          ),
        ],
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(_statusMessage),
                  const SizedBox(height: 4),
                  Text(
                    'Client: ${isClientReady ? 'initialized' : 'not initialized'}',
                  ),
                  if (isClientReady) Text('Enabled: $_isEnabled'),
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Stream Name',
                      hintText: 'Enter Kinesis stream name',
                    ),
                    controller: _streamNameController,
                    onChanged: (text) => _streamName = text,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Partition Key',
                      hintText: 'Enter partition key',
                    ),
                    controller: _partitionKeyController,
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                        child: Text(_isEnabled ? 'Disable' : 'Enable'),
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
    );
  }
}
