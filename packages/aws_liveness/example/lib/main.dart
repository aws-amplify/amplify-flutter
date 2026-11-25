// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    as foundation
    show AWSCredentialsProvider, TemporaryCredentials;
import 'package:aws_liveness/aws_liveness.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(LivenessExampleApp(amplifyError: await _configureAmplify()));
}

/// Configures Amplify from `assets/amplify_outputs.json`.
///
/// Returns an error message, or `null` on success.
Future<String?> _configureAmplify() async {
  const path = 'assets/amplify_outputs.json';
  final manifest = await AssetManifest.loadFromAssetBundle(rootBundle);
  if (!manifest.listAssets().contains(path)) {
    return 'Add your amplify_outputs.json to example/assets/ and rebuild.';
  }
  final outputs = await rootBundle.loadString(path);
  try {
    await Amplify.addPlugin(AmplifyAuthCognito());
    await Amplify.configure(outputs);
    return null;
  } on AmplifyException catch (e) {
    return 'Failed to configure Amplify: ${e.message}';
  }
}

/// Resolves credentials from the current Amplify Auth session.
///
/// Guest (unauthenticated) credentials work if the identity pool allows them.
class AmplifyAuthCredentialsProvider
    implements foundation.AWSCredentialsProvider {
  @override
  Future<foundation.TemporaryCredentials> resolve() async {
    final session = await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
    final credentials = session.credentialsResult.value;
    return foundation.TemporaryCredentials(
      credentials.accessKeyId,
      credentials.secretAccessKey,
      credentials.sessionToken!,
      credentials.expiration!,
    );
  }
}

/// The example app.
class LivenessExampleApp extends StatelessWidget {
  /// Creates the example app. [amplifyError] is shown instead of the form.
  const LivenessExampleApp({super.key, this.amplifyError});

  /// Why Amplify could not be configured, if it could not.
  final String? amplifyError;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AWS Liveness Example',
      home: Scaffold(
        appBar: AppBar(title: const Text('AWS Liveness Example')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: amplifyError == null
              ? const LivenessForm()
              : Center(child: Text(amplifyError!)),
        ),
      ),
    );
  }
}

/// Collects a session ID and region and runs the check.
class LivenessForm extends StatefulWidget {
  /// Creates the form.
  const LivenessForm({super.key});

  @override
  State<LivenessForm> createState() => _LivenessFormState();
}

class _LivenessFormState extends State<LivenessForm> {
  final _liveness = AwsLiveness(
    credentialsProvider: AmplifyAuthCredentialsProvider(),
  );
  final _sessionId = TextEditingController();
  final _region = TextEditingController(text: 'us-east-1');
  bool _running = false;
  String? _status;

  @override
  void dispose() {
    _sessionId.dispose();
    _region.dispose();
    super.dispose();
  }

  Future<void> _start() async {
    final sessionId = _sessionId.text.trim();
    final region = _region.text.trim();
    if (sessionId.isEmpty || region.isEmpty) {
      setState(() => _status = 'Enter a session ID and region.');
      return;
    }
    setState(() {
      _running = true;
      _status = null;
    });
    String status;
    try {
      await _liveness.start(sessionId: sessionId, region: region);
      status =
          'Check completed. Call GetFaceLivenessSessionResults on your '
          'backend to get the result.';
    } on FaceLivenessException catch (e) {
      status = '${e.code.name}: ${e.message}';
    }
    if (!mounted) return;
    setState(() {
      _running = false;
      _status = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Create a session with CreateFaceLivenessSession on your backend, '
          'then enter its ID below.',
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _sessionId,
          decoration: const InputDecoration(labelText: 'Session ID'),
        ),
        TextField(
          controller: _region,
          decoration: const InputDecoration(labelText: 'Region'),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: _running ? null : _start,
          child: const Text('Start Face Liveness'),
        ),
        if (_status != null) ...[
          const SizedBox(height: 16),
          Text(_status!, key: const Key('status')),
        ],
      ],
    );
  }
}
