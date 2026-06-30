// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment/amplify_event_enrichment.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:flutter/material.dart';

/// A simple [EventSink] that prints the full enriched JSON to the console.
class ConsoleEventSink implements EventSink {
  @override
  void send(EnrichedEvent event) {
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
      sink: ConsoleEventSink(),
    );
    setState(() => _client = client);
    _addLog('Client initialized (clientId resolved from file)');
  }

  void _addLog(String msg) {
    setState(() => _log.insert(0, msg));
  }

  void _recordEvent(String type, {Map<String, String>? attrs}) {
    final result = _client?.record(type, attributes: attrs);
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
    _client?.close();
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
                    onPressed: () {
                      _client?.close();
                      _addLog('Client closed');
                    },
                    child: const Text('Close'),
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
