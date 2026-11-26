// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    as foundation
    show AWSCredentialsProvider, TemporaryCredentials;
import 'package:aws_face_liveness/aws_face_liveness.dart';
// ignore: deprecated_member_use
import 'package:flutter/material.dart';

import 'amplify_outputs.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(LivenessExampleApp(amplifyError: await configureAmplify()));
}

/// Configures Amplify from `amplify_outputs.dart`.
///
/// Returns an error message, or `null` on success.
Future<String?> configureAmplify() async {
  try {
    await Amplify.addPlugins([AmplifyAuthCognito(), AmplifyAPI()]);
    await Amplify.configure(amplifyConfig);
    return null;
  } on Exception catch (e) {
    return 'Amplify is not configured ($e). Deploy the test backend with '
        '`dart run tool/deploy_gen2.dart -c Liveness` in infra-gen2/, '
        'then rebuild.';
  }
}

/// Resolves credentials from the signed-in user's Amplify Auth session.
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

/// A Face Liveness session created by the backend.
typedef LivenessSession = ({String sessionId, String region});

/// The backend's verdict for a session.
typedef LivenessResult = ({String status, double? confidence});

/// Creates sessions and reads their results. The real implementation calls
/// the test backend in `infra-gen2/backends/liveness`.
abstract interface class LivenessBackend {
  /// Creates a new session (`CreateFaceLivenessSession`).
  Future<LivenessSession> createSession();

  /// Reads the result of [sessionId] (`GetFaceLivenessSessionResults`).
  Future<LivenessResult> getResult(String sessionId);
}

/// [LivenessBackend] backed by the test backend's GraphQL API.
class AmplifyLivenessBackend implements LivenessBackend {
  /// Creates the backend client.
  const AmplifyLivenessBackend();

  Future<Map<String, dynamic>> _query(
    String document,
    String field, [
    Map<String, dynamic> variables = const {},
  ]) async {
    final response = await Amplify.API
        .query(
          request: GraphQLRequest<String>(
            document: document,
            variables: variables,
          ),
        )
        .response;
    if (response.hasErrors || response.data == null) {
      throw Exception(response.errors.map((e) => e.message).join(', '));
    }
    final data = jsonDecode(response.data!) as Map<String, dynamic>;
    return data[field] as Map<String, dynamic>;
  }

  @override
  Future<LivenessSession> createSession() async {
    final session = await _query(
      'query { createLivenessSession { sessionId region } }',
      'createLivenessSession',
    );
    return (
      sessionId: session['sessionId'] as String,
      region: session['region'] as String,
    );
  }

  @override
  Future<LivenessResult> getResult(String sessionId) async {
    final result = await _query(
      r'query ($sessionId: String!) { '
          r'getLivenessResult(sessionId: $sessionId) { status confidence } }',
      'getLivenessResult',
      {'sessionId': sessionId},
    );
    return (
      status: result['status'] as String,
      confidence: (result['confidence'] as num?)?.toDouble(),
    );
  }
}

/// Runs Face Liveness checks against the test backend after sign-in.
class LivenessExampleApp extends StatelessWidget {
  /// Shows [amplifyError] instead of the app when provided.
  const LivenessExampleApp({super.key, this.amplifyError});

  /// The Amplify configuration error shown instead of the app.
  final String? amplifyError;

  @override
  Widget build(BuildContext context) {
    if (amplifyError case final error?) {
      return MaterialApp(
        home: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Center(child: Text(error, key: const Key('amplifyError'))),
          ),
        ),
      );
    }
    return Authenticator(
      child: MaterialApp(
        builder: Authenticator.builder(),
        home: LivenessCheckPage(
          backend: const AmplifyLivenessBackend(),
          liveness: AwsFaceLiveness(
            credentialsProvider: AmplifyAuthCredentialsProvider(),
          ),
        ),
      ),
    );
  }
}

/// Creates a session, runs the check, and shows the backend's result.
class LivenessCheckPage extends StatefulWidget {
  /// Runs checks with [liveness] against [backend].
  const LivenessCheckPage({
    super.key,
    required this.backend,
    required this.liveness,
  });

  /// Creates sessions and reads results.
  final LivenessBackend backend;

  /// Runs the check on the device.
  final AwsFaceLiveness liveness;

  @override
  State<LivenessCheckPage> createState() => _LivenessCheckPageState();
}

class _LivenessCheckPageState extends State<LivenessCheckPage> {
  bool _running = false;
  bool _disableStartView = false;
  bool _backCamera = false;
  String? _status;

  Future<void> _run() async {
    setState(() {
      _running = true;
      _status = 'Creating session...';
    });
    String status;
    try {
      final session = await widget.backend.createSession();
      setState(() => _status = 'Running check...');
      await widget.liveness.start(
        sessionId: session.sessionId,
        region: session.region,
        disableStartView: _disableStartView,
        faceMovementCamera: _backCamera
            ? FaceLivenessCamera.back
            : FaceLivenessCamera.front,
      );
      setState(() => _status = 'Fetching result...');
      final result = await widget.backend.getResult(session.sessionId);
      final confidence = result.confidence?.toStringAsFixed(1) ?? '-';
      status = '${result.status}, confidence $confidence';
    } on FaceLivenessException catch (e) {
      status = '${e.code.name}: ${e.message}';
    } on Exception catch (e) {
      status = 'Error: $e';
    }
    if (!mounted) return;
    setState(() {
      _running = false;
      _status = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AWS Liveness Example'),
        actions: [
          IconButton(
            tooltip: 'Sign out',
            icon: const Icon(Icons.logout),
            onPressed: _running ? null : () => Amplify.Auth.signOut(),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SwitchListTile(
            title: const Text('Skip start screen'),
            value: _disableStartView,
            onChanged: _running
                ? null
                : (value) => setState(() => _disableStartView = value),
          ),
          SwitchListTile(
            title: const Text('Back camera (FaceMovement only)'),
            value: _backCamera,
            onChanged: _running
                ? null
                : (value) => setState(() => _backCamera = value),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _running ? null : _run,
            child: const Text('Run Face Liveness check'),
          ),
          if (_status case final status?) ...[
            const SizedBox(height: 16),
            Text(status, key: const Key('status')),
          ],
        ],
      ),
    );
  }
}
