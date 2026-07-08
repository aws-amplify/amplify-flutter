// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Manual test app for the reworked amplify_connect_client against a deployed
// backend-notifications construct (Amazon Connect Customer Profiles identify
// endpoint). Sign in with a Cognito user to exercise the authenticated route,
// or stay signed out to exercise the guest (SigV4) route.

import 'dart:convert';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_connect_client/amplify_connect_client.dart';
import 'package:amplify_flutter/amplify_flutter.dart' hide UserProfile;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

void main() {
  runApp(const ConnectPocApp());
}

class ConnectPocApp extends StatelessWidget {
  const ConnectPocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Connect Client POC',
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const ConnectPocHome(),
    );
  }
}

class ConnectPocHome extends StatefulWidget {
  const ConnectPocHome({super.key});

  @override
  State<ConnectPocHome> createState() => _ConnectPocHomeState();
}

class _ConnectPocHomeState extends State<ConnectPocHome> {
  final _log = <String>[];
  final _email = TextEditingController(text: 'poc-user@example.com');
  final _password = TextEditingController(text: '');
  final _deviceToken = TextEditingController(
    text: 'gcm-token-from-example-app',
  );

  late AmplifyConnectClientFlutter _client;
  bool _ready = false;
  bool _signedIn = false;
  String? _lastGuestIdentityId;

  @override
  void initState() {
    super.initState();
    _configure();
  }

  void _append(String line) {
    setState(() => _log.insert(0, line));
  }

  Future<void> _configure() async {
    try {
      final raw = await rootBundle.loadString('amplify_outputs.json');
      final outputs = jsonDecode(raw) as Map<String, dynamic>;

      // Amplify.configure only understands its own sections; strip the
      // non-standard analytics.amazon_connect_customer_profiles + custom keys
      // so Auth configures cleanly. (This is the config-key bridge in action:
      // the construct emits custom.CustomerProfiles, the client reads
      // analytics.amazon_connect_customer_profiles — see amplify_outputs.json.)
      final authOnly = Map<String, dynamic>.from(outputs)
        ..remove('analytics')
        ..remove('custom');

      await Amplify.addPlugin(AmplifyAuthCognito());
      if (!Amplify.isConfigured) {
        await Amplify.configure(jsonEncode(authOnly));
      }

      // The Connect client reads the (bridged) analytics section for its
      // endpoint + region.
      _client = AmplifyConnectClientFlutter.createFromAmplifyOutputs(
        amplifyOutputs: outputs,
        appVersion: '1.0.0',
      );

      await _refreshAuthState();
      setState(() => _ready = true);
      final analytics = outputs['analytics'] as Map<String, dynamic>;
      final cp =
          analytics['amazon_connect_customer_profiles'] as Map<String, dynamic>;
      _append(
        'Configured. Endpoint from '
        'analytics.amazon_connect_customer_profiles.endpoint = '
        '${cp['endpoint']}',
      );
    } on Object catch (e) {
      _append('CONFIGURE ERROR: $e');
    }
  }

  Future<void> _refreshAuthState() async {
    try {
      final session = await Amplify.Auth.fetchAuthSession();
      final signedIn = session.isSignedIn;
      String? guestId;
      if (session is CognitoAuthSession) {
        guestId = session.identityIdResult.valueOrNull;
      }
      setState(() {
        _signedIn = signedIn;
        if (!signedIn && guestId != null) _lastGuestIdentityId = guestId;
      });
    } on Object catch (e) {
      _append('auth state error: $e');
    }
  }

  Future<void> _run(String label, Future<void> Function() action) async {
    _append('▶ $label …');
    try {
      await action();
      _append('✔ $label — success (HTTP 2xx)');
    } on Object catch (e) {
      _append('x $label — FAILED: $e');
    }
    await _refreshAuthState();
  }

  Future<void> _signIn() => _run('Sign in', () async {
    // Ensure a clean state (guest session may exist).
    try {
      await Amplify.Auth.signOut();
    } on Object catch (_) {}
    final res = await Amplify.Auth.signIn(
      username: _email.text.trim(),
      password: _password.text,
    );
    _append('  signIn nextStep: ${res.nextStep.signInStep}');
  });

  Future<void> _signOut() => _run('Sign out', () async {
    await Amplify.Auth.signOut();
  });

  Future<void> _identifyAuthed() => _run('Identify (authed)', () async {
    const profile = UserProfile(
      name: 'POC Example User',
      email: 'poc-user@example.com',
      plan: 'gold',
    );
    _append(
      '  POST /identify-user body: '
      '${jsonEncode({'userId': 'example-authed-1', 'userProfile': profile.toJson()})}',
    );
    await _client.identifyUser(
      userId: 'example-authed-1',
      userProfile: profile,
    );
  });

  Future<void> _identifyGuest() => _run('Guest identify', () async {
    // Guest route requires being signed out.
    if (_signedIn) {
      await Amplify.Auth.signOut();
      await _refreshAuthState();
    }
    const profile = UserProfile(name: 'POC Example Guest', plan: 'free');
    _append('  guest identityId: ${_lastGuestIdentityId ?? '(resolving)'}');
    _append(
      '  POST /identify-user-guest (SigV4) body: '
      '${jsonEncode({'userId': 'example-guest-1', 'userProfile': profile.toJson()})}',
    );
    await _client.identifyUser(userId: 'example-guest-1', userProfile: profile);
  });

  Future<void> _registerDevice() => _run('Register device', () async {
    _append(
      '  identifyUser options '
      '{address: <token>, deviceId: <stable>, channelType: GCM}',
    );
    await _client.identifyUser(
      userId: _signedIn ? 'example-authed-1' : null,
      userProfile: const UserProfile(),
      options: IdentifyUserOptions(
        address: _deviceToken.text.trim(),
        channelType: ChannelType.gcm,
      ),
    );
  });

  Future<void> _mergeOnSignIn() => _run('Merge on sign-in', () async {
    final guestId = _lastGuestIdentityId;
    if (guestId == null) {
      throw StateError(
        'No guest identityId captured yet. Run "Guest identify" while '
        'signed out first, then sign in and merge.',
      );
    }
    if (!_signedIn) {
      _append('  signing in first…');
      await Amplify.Auth.signIn(
        username: _email.text.trim(),
        password: _password.text,
      );
    }
    _append('  POST /identify-user with previousGuestIdentityId=$guestId');
    await _client.identifyUser(
      userId: 'example-authed-1',
      userProfile: const UserProfile(name: 'POC Example User', plan: 'gold'),
      options: IdentifyUserOptions(previousGuestIdentityId: guestId),
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amplify Connect Client — POC'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: !_ready
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Icon(
                        _signedIn ? Icons.lock_open : Icons.lock_outline,
                        color: _signedIn ? Colors.green : Colors.grey,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        _signedIn ? 'Signed in' : 'Signed out (guest)',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _email,
                          decoration: const InputDecoration(labelText: 'Email'),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          controller: _password,
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      FilledButton(
                        onPressed: _signIn,
                        child: const Text('Sign in'),
                      ),
                      OutlinedButton(
                        onPressed: _signOut,
                        child: const Text('Sign out'),
                      ),
                      FilledButton.tonal(
                        onPressed: _identifyAuthed,
                        child: const Text('Identify (authed)'),
                      ),
                      FilledButton.tonal(
                        onPressed: _identifyGuest,
                        child: const Text('Guest identify'),
                      ),
                      FilledButton.tonal(
                        onPressed: _registerDevice,
                        child: const Text('Register device'),
                      ),
                      FilledButton.tonal(
                        onPressed: _mergeOnSignIn,
                        child: const Text('Merge on sign-in'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _deviceToken,
                    decoration: const InputDecoration(
                      labelText: 'Device token',
                    ),
                  ),
                  const Divider(height: 24),
                  Text(
                    'Activity log',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 4),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.04),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ListView.builder(
                        itemCount: _log.length,
                        itemBuilder: (_, i) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: SelectableText(
                            _log[i],
                            style: const TextStyle(
                              fontFamily: 'monospace',
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
