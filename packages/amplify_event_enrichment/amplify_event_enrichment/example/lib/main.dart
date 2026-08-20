// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment/amplify_event_enrichment.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:flutter/material.dart';

/// A simple [Sender] that prints the full enriched JSON to the console.
class ConsoleSender implements Sender {
  @override
  Future<void> send(EnrichedEvent event) async {
    debugPrint('┌── EnrichedEvent ──');
    debugPrint('│ ${event.toJson()}');
    debugPrint('└───────────────────');
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const EventEnrichmentExampleApp());
}

class EventEnrichmentExampleApp extends StatefulWidget {
  const EventEnrichmentExampleApp({super.key});

  @override
  State<EventEnrichmentExampleApp> createState() =>
      _EventEnrichmentExampleAppState();
}

class _EventEnrichmentExampleAppState extends State<EventEnrichmentExampleApp> {
  EventEnrichmentClientFlutter? _client;
  final List<String> _log = [];

  @override
  void initState() {
    super.initState();
    _initClient();
  }

  Future<void> _initClient() async {
    final client = await EventEnrichmentClientFlutter.create(
      appId: 'example-app',
      sdkMetadata: const SdkMetadata(name: 'amplify-flutter', version: '2.0.0'),
      sender: ConsoleSender(),
    );
    setState(() => _client = client);
    _addLog('Client initialized (clientId resolved from file)');
  }

  void _addLog(String msg) {
    setState(() => _log.insert(0, msg));
  }

  Future<void> _recordEvent(String type, {Map<String, String>? attrs}) async {
    final result = await _client?.record(type, attributes: attrs);
    switch (result) {
      case Ok(:final value):
        _addLog(
          '✓ Recorded "$type" (session: ${value.session.id.substring(0, 20)}…)',
        );
      case Error(:final error):
        _addLog('✗ Error: $error');
      case null:
        _addLog('✗ Client not ready');
    }
  }

  @override
  void dispose() {
    // dispose() cannot await, so the final session-stop event goes out
    // best-effort. Await close() where you can (see the Close button) if you
    // need the session's end to be delivered before continuing.
    _client?.close().ignore();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Event Enrichment Example')),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  ElevatedButton(
                    onPressed: () => _recordEvent('button_click'),
                    child: const Text('Record Event'),
                  ),
                  ElevatedButton(
                    onPressed: () => _recordEvent(
                      'purchase',
                      attrs: {'item': 'widget', 'category': 'tools'},
                    ),
                    child: const Text('Record w/ Attrs'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _client?.addGlobalAttribute('env', 'staging');
                      _addLog('Added global attr: env=staging');
                    },
                    child: const Text('Add Global'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _client?.setUserId('user-42');
                      _addLog('Set userId: user-42');
                    },
                    child: const Text('Set User'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      // Closing ends the session, so a _session.stop event is
                      // printed by ConsoleSender before this completes.
                      await _client?.close();
                      _addLog('Client closed');
                    },
                    child: const Text('Close'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await _client?.stopSession();
                      _addLog('Session stopped (_session.stop emitted)');
                    },
                    child: const Text('Stop Session'),
                  ),
                ],
              ),
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                itemCount: _log.length,
                itemBuilder: (_, i) => Text(
                  _log[i],
                  style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
