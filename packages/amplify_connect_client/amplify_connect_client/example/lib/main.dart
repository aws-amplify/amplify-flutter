// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Manual test app for the amplify_connect_client against a deployed
// backend-notifications construct (Amazon Connect Customer Profiles write
// endpoint). Every request is SigV4-signed with the caller's AWS credentials;
// sign in to sign with authenticated credentials, or stay signed out for guest.

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
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _deviceToken = TextEditingController(
    text: 'gcm-token-from-example-app',
  );

  late AmplifyConnectClientFlutter _client;
  bool _ready = false;
  bool _signedIn = false;

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
      // notifications key so Auth configures cleanly.
      final authOnly = Map<String, dynamic>.from(outputs)
        ..remove('notifications');

      await Amplify.addPlugin(AmplifyAuthCognito());
      if (!Amplify.isConfigured) {
        await Amplify.configure(jsonEncode(authOnly));
      }

      // The Connect client reads notifications.amazon_connect_customer_profiles
      // for its endpoint + region (the canonical backend construct output).
      _client = AmplifyConnectClientFlutter.createFromAmplifyOutputs(
        amplifyOutputs: outputs,
        appVersion: '1.0.0',
      );

      await _refreshAuthState();
      setState(() => _ready = true);
      final notifications = outputs['notifications'] as Map<String, dynamic>;
      final cp =
          notifications['amazon_connect_customer_profiles']
              as Map<String, dynamic>;
      _append(
        'Configured. Endpoint from '
        'notifications.amazon_connect_customer_profiles.endpoint = '
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
      setState(() {
        _signedIn = signedIn;
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

  Future<void> _identify() => _run('Identify', () async {
    const profile = UserProfile(
      name: 'POC Example User',
      email: 'example-user@example.com',
      customAttributes: {'plan': 'gold'},
    );
    _append('  POST /identify-user body: ${jsonEncode(profile.toJson())}');
    await _client.identifyUser(userProfile: profile);
  });

  Future<void> _registerDevice() => _run('Register device', () async {
    _append('  POST /register-device (token from field, deviceId internal)');
    await _client.registerDevice(token: _deviceToken.text.trim());
  });

  Future<void> _removeDevice() => _run('Remove device', () async {
    _append('  POST /remove-device (deviceId internal)');
    await _client.removeDevice();
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
                        onPressed: _identify,
                        child: const Text('Identify'),
                      ),
                      FilledButton.tonal(
                        onPressed: _registerDevice,
                        child: const Text('Register device'),
                      ),
                      FilledButton.tonal(
                        onPressed: _removeDevice,
                        child: const Text('Remove device'),
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
