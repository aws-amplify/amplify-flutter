// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:typed_data';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_firehose/amplify_firehose.dart';
import 'package:amplify_flutter/amplify_flutter.dart' hide LogLevel;
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    as foundation
    show AWSCredentialsProvider, TemporaryCredentials;
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    show AmplifyLogging, AmplifySimplePrinterLogSink, LogLevel, Ok;
import 'package:flutter/material.dart';

import 'amplify_outputs.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AmplifyLogging.addSink(
    AmplifySimplePrinterLogSink(logLevel: LogLevel.verbose),
  );
  runApp(const FirehoseExampleApp());
}

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

class FirehoseExampleApp extends StatefulWidget {
  const FirehoseExampleApp({super.key});

  @override
  State<FirehoseExampleApp> createState() => _FirehoseExampleAppState();
}

class _FirehoseExampleAppState extends State<FirehoseExampleApp> {
  bool _amplifyConfigured = false;
  String _configError = '';

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {
    try {
      final storageFactory = AmplifySecureStorage.factoryFrom(
        macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
      );
      await Amplify.addPlugins([
        AmplifyAuthCognito(secureStorageFactory: storageFactory),
      ]);
      await Amplify.configure(amplifyConfig);
      if (mounted) setState(() => _amplifyConfigured = true);
    } on Object catch (e) {
      if (mounted) setState(() => _configError = e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
        builder: Authenticator.builder(),
        home: _amplifyConfigured
            ? const _FirehoseDemo()
            : _configError.isNotEmpty
                ? Center(child: Text('Error: $_configError'))
                : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class _FirehoseDemo extends StatefulWidget {
  const _FirehoseDemo();

  @override
  State<_FirehoseDemo> createState() => _FirehoseDemoState();
}

class _FirehoseDemoState extends State<_FirehoseDemo> {
  AmplifyFirehoseClient? _client;
  String _status = 'Not initialized';

  Future<void> _initClient() async {
    final client = await AmplifyFirehoseClient.create(
      region: 'us-east-1',
      credentialsProvider: _AmplifyAuthCredentialsProvider(),
    );
    setState(() {
      _client = client;
      _status = 'Client initialized';
    });
  }

  Future<void> _sendRecord() async {
    final client = _client;
    if (client == null) return;
    final result = await client.record(
      data: Uint8List.fromList(
        utf8.encode('{"event":"test","ts":${DateTime.now().millisecondsSinceEpoch}}'),
      ),
      streamName: 'amplify-firehose-test-stream',
    );
    setState(() {
      _status = result is Ok ? 'Record sent' : 'Record failed: $result';
    });
  }

  Future<void> _flush() async {
    final client = _client;
    if (client == null) return;
    final result = await client.flush();
    setState(() {
      if (result is Ok<FlushData>) {
        _status = 'Flushed ${result.value.recordsFlushed} records';
      } else {
        _status = 'Flush failed: $result';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Firehose Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_status),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _initClient,
              child: const Text('Init Client'),
            ),
            ElevatedButton(
              onPressed: _sendRecord,
              child: const Text('Send Record'),
            ),
            ElevatedButton(
              onPressed: _flush,
              child: const Text('Flush'),
            ),
          ],
        ),
      ),
    );
  }
}
