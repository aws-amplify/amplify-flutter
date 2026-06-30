// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:amplify_push/amplify_push.dart';
import 'package:flutter/material.dart';

@pragma('vm:entry-point')
Future<void> _onBackgroundMessage(PushNotificationMessage message) async {
  // This runs in a background isolate on Android.
  // ignore: avoid_print
  print('[BG] ${message.title}: ${message.body}');
}

void main() {
  runApp(const PushExampleApp());
}

class PushExampleApp extends StatelessWidget {
  const PushExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amplify Push Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PushHomePage(),
    );
  }
}

class PushHomePage extends StatefulWidget {
  const PushHomePage({super.key});

  @override
  State<PushHomePage> createState() => _PushHomePageState();
}

class _PushHomePageState extends State<PushHomePage> {
  AmplifyPushClient? _push;
  String _token = 'Initializing...';
  String _permissionStatus = 'Unknown';
  final List<String> _log = [];
  int _badgeCount = 0;

  @override
  void initState() {
    super.initState();
    _initPush();
  }

  Future<void> _initPush() async {
    final result = await AmplifyPushClient.create(
      onBackgroundMessage: _onBackgroundMessage,
    );

    switch (result) {
      case Ok(:final value):
        _push = value;
        _addLog('✅ Push client initialized');

        // Check launch notification
        final launch = value.launchNotification;
        if (launch != null) {
          _addLog('🚀 Launch notification: ${launch.title}');
        }

        // Listen to token
        value.onTokenReceived.listen((token) {
          setState(() => _token = token);
          _addLog('🔑 Token received: ${token.substring(0, 20)}...');
        });

        // Listen to foreground notifications
        value.onNotificationReceivedInForeground.listen((msg) {
          _addLog('📬 Foreground: ${msg.title} — ${msg.body}');
        });

        // Listen to notification opened
        value.onNotificationOpened.listen((msg) {
          _addLog('👆 Opened: ${msg.title} — ${msg.body}');
        });

      case Error(:final error):
        _addLog('❌ Failed to init: $error');
    }
  }

  void _addLog(String entry) {
    setState(() {
      _log.insert(0, '[${TimeOfDay.now().format(context)}] $entry');
      if (_log.length > 50) _log.removeLast();
    });
  }

  Future<void> _requestPermissions() async {
    final result = await _push?.requestPermissions();
    if (result == null) return;
    switch (result) {
      case Ok(:final value):
        _addLog('🔔 Permissions: ${value ? "GRANTED" : "DENIED"}');
      case Error(:final error):
        _addLog('❌ Permission error: $error');
    }
    await _refreshPermissionStatus();
  }

  Future<void> _refreshPermissionStatus() async {
    final result = await _push?.getPermissionStatus();
    if (result == null) return;
    switch (result) {
      case Ok(:final value):
        setState(() => _permissionStatus = value.name);
      case Error(:final error):
        _addLog('❌ Status error: $error');
    }
  }

  Future<void> _getBadgeCount() async {
    final result = await _push?.getBadgeCount();
    if (result == null) return;
    switch (result) {
      case Ok(:final value):
        setState(() => _badgeCount = value);
        _addLog('🔢 Badge count: $value');
      case Error(:final error):
        _addLog('❌ Badge error: $error');
    }
  }

  void _incrementBadge() {
    _badgeCount++;
    _push?.setBadgeCount(_badgeCount);
    setState(() {});
    _addLog('🔢 Badge set to $_badgeCount');
  }

  void _clearBadge() {
    _badgeCount = 0;
    _push?.setBadgeCount(0);
    setState(() {});
    _addLog('🔢 Badge cleared');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Amplify Push')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Token section
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Device Token',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    SelectableText(
                      _token,
                      style: const TextStyle(
                        fontSize: 11,
                        fontFamily: 'monospace',
                      ),
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Controls
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: _requestPermissions,
                    child: const Text('Request Permissions'),
                  ),
                ),
                const SizedBox(width: 8),
                Chip(label: Text('Status: $_permissionStatus')),
              ],
            ),
            const SizedBox(height: 8),

            // Badge controls (iOS only)
            Row(
              children: [
                ElevatedButton(
                  onPressed: _getBadgeCount,
                  child: const Text('Get Badge'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _incrementBadge,
                  child: Text('Badge +1 ($_badgeCount)'),
                ),
                const SizedBox(width: 8),
                TextButton(onPressed: _clearBadge, child: const Text('Clear')),
              ],
            ),
            const SizedBox(height: 12),

            // Event log
            const Text(
              'Event Log',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: _log.length,
                  itemBuilder: (_, i) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Text(
                      _log[i],
                      style: const TextStyle(
                        fontSize: 12,
                        fontFamily: 'monospace',
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
