// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// LOCAL ONLY — do not commit. Manual test runner UI.

import 'dart:convert';

import 'package:amplify_kinesis/amplify_kinesis.dart';
import 'package:flutter/material.dart';

import 'amplify_outputs.dart';
import 'cognito_auth.dart';
import 'test_scenarios.dart';

/// Tiled test runner that shows each scenario as a card with status.
class TestRunnerPage extends StatefulWidget {
  const TestRunnerPage({super.key});

  @override
  State<TestRunnerPage> createState() => _TestRunnerPageState();
}

enum _Status { idle, running, passed, failed }

class _TestEntry {
  _TestEntry(this.name, this.runner);
  final String name;
  final Future<TestResult> Function() runner;
  _Status status = _Status.idle;
  String message = '';
}

class _TestRunnerPageState extends State<TestRunnerPage> {
  late final List<_TestEntry> _entries;
  final List<String> _logs = [];
  bool _running = false;
  String _streamName = 'amplify-kinesis-test-stream';
  late final TextEditingController _streamCtl;
  late TestScenarios _scenarios;

  String _parseRegion() {
    final config = jsonDecode(amplifyConfig) as Map<String, dynamic>;
    final auth = config['auth'] as Map<String, dynamic>;
    return auth['aws_region'] as String;
  }

  void _buildScenarios() {
    _scenarios = TestScenarios(
      region: _parseRegion(),
      credentialsProvider: AmplifyAuthCredentialsProvider(),
      streamName: _streamName,
    )..onProgress = (m) => setState(() => _logs.add(m));

    _entries = [
      _TestEntry('01. Record and Flush', _scenarios.t01RecordAndFlush),
      _TestEntry('02. Flush When Empty', _scenarios.t02FlushWhenEmpty),
      _TestEntry('03. Record While Disabled', _scenarios.t03RecordWhileDisabled),
      _TestEntry('04. Enable/Disable Lifecycle', _scenarios.t04EnableDisableLifecycle),
      _TestEntry('05. Flush While Disabled', _scenarios.t05FlushWhileDisabled),
      _TestEntry('06. Concurrent Flush', _scenarios.t06ConcurrentFlush),
      _TestEntry('07. Clear Cache', _scenarios.t07ClearCache),
      _TestEntry('08. Cache Limit Exceeded', _scenarios.t08CacheLimitExceeded),
      _TestEntry('09. Nonexistent Stream', _scenarios.t09NonexistentStream),
      _TestEntry('10. Invalid Credentials', _scenarios.t10InvalidCredentials),
      _TestEntry('11. Retry Exhaustion', _scenarios.t11RetryExhaustion),
      _TestEntry('12. High Volume (50)', _scenarios.t12HighVolume),
      _TestEntry('13. Repeated Flush Cycles', _scenarios.t13RepeatedFlushCycles),
      _TestEntry('14. Concurrent Stress', _scenarios.t14ConcurrentStress),
      _TestEntry('15. Auto-Start Scheduler', _scenarios.t15DefaultAutoStartScheduler),
      _TestEntry('16. Auto-Flush', _scenarios.t16AutoFlush),
      _TestEntry('17. Emoji Partition Key', _scenarios.t17MaxEmojiPartitionKey),
      _TestEntry('18. Large Payload Batching', _scenarios.t18LargePayloadBatching),
      _TestEntry('19. Oversized Record Rejected', _scenarios.t19OversizedRecordRejected),
      _TestEntry('20. Escape Hatch', _scenarios.t20EscapeHatch),
      _TestEntry('21. Immediate Flush', _scenarios.t21ImmediateFlush),
      _TestEntry('22. Persist App Closing', _scenarios.t22PersistAppClosing),
      _TestEntry('23. Cache Scoped to Region', _scenarios.t23CacheScopedToRegion),
      _TestEntry('24. Flush Interval Scoped', _scenarios.t24FlushIntervalScopedToRegion),
      _TestEntry('25. All Records Flushed (2000)', _scenarios.t25AllRecordsFlushed),
    ];
  }

  @override
  void initState() {
    super.initState();
    _streamCtl = TextEditingController(text: _streamName);
    _buildScenarios();
  }

  @override
  void dispose() {
    _streamCtl.dispose();
    super.dispose();
  }

  Future<void> _runAll() async {
    setState(() {
      _running = true;
      _logs.clear();
      for (final e in _entries) {
        e.status = _Status.idle;
        e.message = '';
      }
    });

    for (final entry in _entries) {
      setState(() => entry.status = _Status.running);
      final result = await entry.runner();
      setState(() {
        entry.status = result.passed ? _Status.passed : _Status.failed;
        entry.message = result.message;
      });
    }

    setState(() => _running = false);
  }

  Future<void> _runSingle(_TestEntry entry) async {
    setState(() {
      entry.status = _Status.running;
      entry.message = '';
    });
    final result = await entry.runner();
    setState(() {
      entry.status = result.passed ? _Status.passed : _Status.failed;
      entry.message = result.message;
    });
  }

  @override
  Widget build(BuildContext context) {
    final passed = _entries.where((e) => e.status == _Status.passed).length;
    final failed = _entries.where((e) => e.status == _Status.failed).length;
    final total = _entries.length;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kinesis Manual Tests'),
        actions: [
          if (passed + failed > 0)
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text('$passed/$total',
                    style: TextStyle(
                      color: failed == 0 ? Colors.green : Colors.orange,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
        ],
      ),
      body: Column(
        children: [
          // Controls
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _streamCtl,
                    decoration: const InputDecoration(
                      labelText: 'Stream Name',
                      isDense: true,
                    ),
                    onChanged: (v) {
                      _streamName = v;
                      _buildScenarios();
                    },
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _running ? null : _runAll,
                  child: _running
                      ? const SizedBox(
                          width: 18, height: 18,
                          child: CircularProgressIndicator(strokeWidth: 2))
                      : const Text('Run All'),
                ),
              ],
            ),
          ),

          // Test tiles
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: _entries.length,
              itemBuilder: (ctx, i) {
                final e = _entries[i];
                final color = switch (e.status) {
                  _Status.idle => Colors.grey.shade100,
                  _Status.running => Colors.blue.shade50,
                  _Status.passed => Colors.green.shade50,
                  _Status.failed => Colors.red.shade50,
                };
                final icon = switch (e.status) {
                  _Status.idle => const Icon(Icons.circle_outlined, color: Colors.grey),
                  _Status.running => const SizedBox(
                      width: 20, height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2)),
                  _Status.passed => const Icon(Icons.check_circle, color: Colors.green),
                  _Status.failed => const Icon(Icons.error, color: Colors.red),
                };

                return Card(
                  color: color,
                  child: ListTile(
                    leading: icon,
                    title: Text(e.name, style: const TextStyle(fontSize: 14)),
                    subtitle: e.message.isNotEmpty
                        ? Text(e.message, style: const TextStyle(fontSize: 12))
                        : null,
                    trailing: e.status != _Status.running
                        ? IconButton(
                            icon: const Icon(Icons.play_arrow, size: 20),
                            onPressed: () => _runSingle(e),
                          )
                        : null,
                    dense: true,
                  ),
                );
              },
            ),
          ),

          // Log panel
          if (_logs.isNotEmpty)
            Container(
              height: 120,
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              color: Colors.grey.shade200,
              child: SingleChildScrollView(
                reverse: true,
                child: SelectableText(
                  _logs.join('\n'),
                  style: const TextStyle(fontFamily: 'monospace', fontSize: 11),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
