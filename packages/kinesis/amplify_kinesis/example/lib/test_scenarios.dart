// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// LOCAL ONLY — do not commit. Manual test scenarios for physical device testing.

import 'dart:convert';
import 'dart:typed_data';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    show AWSCredentialsProvider, Error, Ok;
import 'package:amplify_kinesis/amplify_kinesis.dart';

import 'cognito_auth.dart';

/// Result of a single test scenario.
class TestResult {
  TestResult(this.name, this.passed, this.message);
  final String name;
  final bool passed;
  final String message;
}

/// All 25 manual test scenarios.
class TestScenarios {
  TestScenarios({
    required this.region,
    required this.credentialsProvider,
    required this.streamName,
  });

  final String region;
  final AWSCredentialsProvider credentialsProvider;
  final String streamName;

  void Function(String)? onProgress;
  void _log(String m) => onProgress?.call(m);

  Uint8List _payload(String t) => Uint8List.fromList(utf8.encode(t));

  Future<AmplifyKinesisClient> _client({
    AmplifyKinesisClientOptions options =
        const AmplifyKinesisClientOptions(flushStrategy: FlushNone()),
  }) =>
      AmplifyKinesisClient.create(
        region: region,
        credentialsProvider: credentialsProvider,
        options: options,
      );

  // 1 ─ Record and Flush
  Future<TestResult> t01RecordAndFlush() async {
    const n = '01. Record and Flush';
    _log('[$n] start');
    final c = await _client();
    try {
      await c.record(data: _payload('hello'), partitionKey: 'pk', streamName: streamName);
      final r = await c.flush();
      await c.close();
      if (r is Ok<FlushData>) {
        return TestResult(n, r.value.recordsFlushed > 0,
            'recordsFlushed=${r.value.recordsFlushed}');
      }
      return TestResult(n, false, '$r');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 2 ─ Flush When Empty
  Future<TestResult> t02FlushWhenEmpty() async {
    const n = '02. Flush When Empty';
    _log('[$n] start');
    final c = await _client();
    try {
      final r = await c.flush();
      await c.close();
      if (r is Ok<FlushData>) {
        final ok = r.value.recordsFlushed == 0 && !r.value.flushInProgress;
        return TestResult(n, ok,
            'recordsFlushed=${r.value.recordsFlushed}, flushInProgress=${r.value.flushInProgress}');
      }
      return TestResult(n, false, '$r');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 3 ─ Record While Disabled
  Future<TestResult> t03RecordWhileDisabled() async {
    const n = '03. Record While Disabled';
    _log('[$n] start');
    final c = await _client();
    try {
      c.disable();
      await c.record(data: _payload('dropped'), partitionKey: 'pk', streamName: streamName);
      c.enable();
      final r = await c.flush();
      await c.close();
      if (r is Ok<FlushData>) {
        return TestResult(n, r.value.recordsFlushed == 0,
            'recordsFlushed=${r.value.recordsFlushed} (expected 0)');
      }
      return TestResult(n, false, '$r');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 4 ─ Enable/Disable Lifecycle
  Future<TestResult> t04EnableDisableLifecycle() async {
    const n = '04. Enable/Disable Lifecycle';
    _log('[$n] start');
    final c = await _client();
    try {
      await c.record(data: _payload('before-disable'), partitionKey: 'pk', streamName: streamName);
      c.disable();
      await c.record(data: _payload('while-disabled'), partitionKey: 'pk', streamName: streamName);
      c.enable();
      final r = await c.flush();
      await c.close();
      if (r is Ok<FlushData>) {
        return TestResult(n, r.value.recordsFlushed == 1,
            'recordsFlushed=${r.value.recordsFlushed} (expected 1)');
      }
      return TestResult(n, false, '$r');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 5 ─ Can Manually Flush While Disabled
  Future<TestResult> t05FlushWhileDisabled() async {
    const n = '05. Flush While Disabled';
    _log('[$n] start');
    final c = await _client();
    try {
      await c.record(data: _payload('pre-disable'), partitionKey: 'pk', streamName: streamName);
      c.disable();
      final r = await c.flush();
      await c.close();
      if (r is Ok<FlushData>) {
        return TestResult(n, r.value.recordsFlushed == 1,
            'recordsFlushed=${r.value.recordsFlushed} (expected 1)');
      }
      return TestResult(n, false, '$r');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 6 ─ Concurrent Flush
  Future<TestResult> t06ConcurrentFlush() async {
    const n = '06. Concurrent Flush';
    _log('[$n] start');
    final c = await _client();
    try {
      for (var i = 0; i < 10; i++) {
        await c.record(data: _payload('evt-$i'), partitionKey: 'pk', streamName: streamName);
      }
      final results = await Future.wait([c.flush(), c.flush()]);
      await c.close();
      final a = results[0];
      final b = results[1];
      if (a is Ok<FlushData> && b is Ok<FlushData>) {
        final oneWorked = a.value.recordsFlushed > 0 || b.value.recordsFlushed > 0;
        final oneInProgress = a.value.flushInProgress || b.value.flushInProgress;
        return TestResult(n, oneWorked && oneInProgress,
            'a: flushed=${a.value.recordsFlushed} inProgress=${a.value.flushInProgress}, '
            'b: flushed=${b.value.recordsFlushed} inProgress=${b.value.flushInProgress}');
      }
      return TestResult(n, false, 'a=$a, b=$b');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 7 ─ Clear Cache
  Future<TestResult> t07ClearCache() async {
    const n = '07. Clear Cache';
    _log('[$n] start');
    final c = await _client();
    try {
      for (var i = 0; i < 3; i++) {
        await c.record(data: _payload('cc-$i'), partitionKey: 'pk', streamName: streamName);
      }
      final cr = await c.clearCache();
      final fr = await c.flush();
      await c.close();
      if (cr is Ok<ClearCacheData> && fr is Ok<FlushData>) {
        final ok = cr.value.recordsCleared > 0 && fr.value.recordsFlushed == 0;
        return TestResult(n, ok,
            'cleared=${cr.value.recordsCleared}, flushed=${fr.value.recordsFlushed}');
      }
      return TestResult(n, false, 'cr=$cr, fr=$fr');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 8 ─ Cache Limit Exceeded
  Future<TestResult> t08CacheLimitExceeded() async {
    const n = '08. Cache Limit Exceeded';
    _log('[$n] start');
    final c = await _client(
      options: const AmplifyKinesisClientOptions(
        cacheMaxBytes: 100,
        flushStrategy: FlushNone(),
      ),
    );
    try {
      var hitLimit = false;
      for (var i = 0; i < 50; i++) {
        final r = await c.record(
          data: _payload('${'x' * 200}'),
          partitionKey: 'pk',
          streamName: streamName,
        );
        if (r is Error) {
          hitLimit = true;
          _log('[$n] limit hit at record $i');
          break;
        }
      }
      await c.close();
      return TestResult(n, hitLimit,
          hitLimit ? 'Cache limit enforced' : 'Never hit limit');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 9 ─ Nonexistent Stream
  Future<TestResult> t09NonexistentStream() async {
    const n = '09. Nonexistent Stream';
    _log('[$n] start');
    final c = await _client();
    try {
      // Record to a fake stream first so it's flushed first (FIFO).
      await c.record(data: _payload('bad'), partitionKey: 'pk', streamName: 'nonexistent-stream-xyz');
      await c.record(data: _payload('good'), partitionKey: 'pk', streamName: streamName);
      final r = await c.flush();
      await c.close();
      if (r is Ok<FlushData>) {
        // The valid record should flush; the bad one shouldn't block it.
        return TestResult(n, r.value.recordsFlushed >= 1,
            'recordsFlushed=${r.value.recordsFlushed}');
      }
      return TestResult(n, false, '$r');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 10 ─ Invalid Credentials
  Future<TestResult> t10InvalidCredentials() async {
    const n = '10. Invalid Credentials';
    _log('[$n] start');
    final c = await AmplifyKinesisClient.create(
      region: region,
      credentialsProvider: FakeCredentialsProvider(),
      options: const AmplifyKinesisClientOptions(flushStrategy: FlushNone()),
    );
    try {
      await c.record(data: _payload('fake'), partitionKey: 'pk', streamName: streamName);
      final r = await c.flush();
      await c.close();
      if (r is Ok<FlushData>) {
        return TestResult(n, r.value.recordsFlushed == 0,
            'recordsFlushed=${r.value.recordsFlushed} (expected 0)');
      }
      // An error result is also acceptable.
      return TestResult(n, true, 'Error result: $r');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 11 ─ Retry Exhaustion
  Future<TestResult> t11RetryExhaustion() async {
    const n = '11. Retry Exhaustion';
    _log('[$n] start');
    final c = await _client(
      options: const AmplifyKinesisClientOptions(
        maxRetries: 5,
        flushStrategy: FlushNone(),
      ),
    );
    try {
      // Invalid stream record — will fail on every flush attempt.
      await c.record(data: _payload('bad'), partitionKey: 'pk', streamName: 'nonexistent-stream-xyz');
      // Valid stream record.
      await c.record(data: _payload('good'), partitionKey: 'pk', streamName: streamName);

      // Flush 6 times: first flush sends valid record, subsequent flushes
      // retry the invalid one until it's evicted after maxRetries.
      var totalFlushed = 0;
      for (var i = 0; i < 6; i++) {
        _log('[$n] flush attempt ${i + 1}');
        final r = await c.flush();
        if (r is Ok<FlushData>) totalFlushed += r.value.recordsFlushed;
      }

      // Final flush should return 0 — cache is empty.
      final last = await c.flush();
      await c.close();
      if (last is Ok<FlushData>) {
        return TestResult(n, last.value.recordsFlushed == 0,
            'totalFlushed=$totalFlushed, finalFlush=${last.value.recordsFlushed}');
      }
      return TestResult(n, false, '$last');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 12 ─ High Volume
  Future<TestResult> t12HighVolume() async {
    const n = '12. High Volume';
    _log('[$n] start');
    final c = await _client();
    try {
      for (var i = 0; i < 50; i++) {
        await c.record(
          data: _payload('hv-$i'),
          partitionKey: 'pk-${i % 5}',
          streamName: streamName,
        );
      }
      final r = await c.flush();
      await c.close();
      if (r is Ok<FlushData>) {
        return TestResult(n, r.value.recordsFlushed == 50,
            'recordsFlushed=${r.value.recordsFlushed} (expected 50)');
      }
      return TestResult(n, false, '$r');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 13 ─ Repeated Flush Cycles
  Future<TestResult> t13RepeatedFlushCycles() async {
    const n = '13. Repeated Flush Cycles';
    _log('[$n] start');
    final c = await _client();
    try {
      var total = 0;
      for (var cycle = 0; cycle < 5; cycle++) {
        for (var i = 0; i < 5; i++) {
          await c.record(data: _payload('c$cycle-$i'), partitionKey: 'pk', streamName: streamName);
        }
        final r = await c.flush();
        if (r is Ok<FlushData>) total += r.value.recordsFlushed;
      }
      await c.close();
      return TestResult(n, total == 25, 'totalFlushed=$total (expected 25)');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 14 ─ Concurrent Record + Flush Stress
  Future<TestResult> t14ConcurrentStress() async {
    const n = '14. Concurrent Record + Flush Stress';
    _log('[$n] start');
    final c = await _client();
    try {
      // 5 producers × 20 records each.
      final producers = List.generate(5, (p) async {
        for (var i = 0; i < 20; i++) {
          await c.record(data: _payload('p$p-$i'), partitionKey: 'pk-$p', streamName: streamName);
        }
      });
      // Periodic flusher running alongside.
      var flushed = 0;
      final flusher = () async {
        for (var i = 0; i < 10; i++) {
          await Future<void>.delayed(const Duration(milliseconds: 100));
          final r = await c.flush();
          if (r is Ok<FlushData>) flushed += r.value.recordsFlushed;
        }
      }();
      await Future.wait([...producers, flusher]);
      // Drain anything remaining.
      final drain = await c.flush();
      if (drain is Ok<FlushData>) flushed += drain.value.recordsFlushed;
      // Final flush should be 0.
      final last = await c.flush();
      await c.close();
      final lastFlushed = last is Ok<FlushData> ? last.value.recordsFlushed : -1;
      return TestResult(n, flushed == 100 && lastFlushed == 0,
          'totalFlushed=$flushed (expected 100), finalFlush=$lastFlushed');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 15 ─ Default Auto-Start Scheduler
  Future<TestResult> t15DefaultAutoStartScheduler() async {
    const n = '15. Default Auto-Start Scheduler';
    _log('[$n] start — creating client with 3s interval');
    final c = await _client(
      options: const AmplifyKinesisClientOptions(
        flushStrategy: FlushInterval(interval: Duration(seconds: 3)),
      ),
    );
    try {
      await c.record(data: _payload('auto-start'), partitionKey: 'pk', streamName: streamName);
      _log('[$n] waiting 5s for auto-flush...');
      await Future<void>.delayed(const Duration(seconds: 5));
      final r = await c.flush();
      await c.close();
      if (r is Ok<FlushData>) {
        return TestResult(n, r.value.recordsFlushed == 0,
            'manualFlush=${r.value.recordsFlushed} (expected 0, auto-flush already drained)');
      }
      return TestResult(n, false, '$r');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 16 ─ Auto-Flush
  Future<TestResult> t16AutoFlush() async {
    const n = '16. Auto-Flush';
    _log('[$n] start — creating client with 5s interval');
    final c = await _client(
      options: const AmplifyKinesisClientOptions(
        flushStrategy: FlushInterval(interval: Duration(seconds: 5)),
      ),
    );
    try {
      await c.record(data: _payload('auto'), partitionKey: 'pk', streamName: streamName);
      _log('[$n] waiting 8s for auto-flush...');
      await Future<void>.delayed(const Duration(seconds: 8));
      final r = await c.flush();
      await c.close();
      if (r is Ok<FlushData>) {
        return TestResult(n, r.value.recordsFlushed == 0,
            'manualFlush=${r.value.recordsFlushed} (expected 0)');
      }
      return TestResult(n, false, '$r');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 17 ─ Max Emoji Partition Key
  Future<TestResult> t17MaxEmojiPartitionKey() async {
    const n = '17. Max Emoji Partition Key';
    _log('[$n] start');
    final c = await _client();
    try {
      final emojiKey = '😀' * 256; // 256 Unicode scalars
      await c.record(data: _payload('emoji'), partitionKey: emojiKey, streamName: streamName);
      final r = await c.flush();
      await c.close();
      if (r is Ok<FlushData>) {
        return TestResult(n, r.value.recordsFlushed == 1,
            'recordsFlushed=${r.value.recordsFlushed}');
      }
      return TestResult(n, false, '$r');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 18 ─ Large Payload Batching
  Future<TestResult> t18LargePayloadBatching() async {
    const n = '18. Large Payload Batching';
    _log('[$n] start — recording 210 × ~51KB records');
    final c = await _client(
      options: const AmplifyKinesisClientOptions(
        cacheMaxBytes: 20 * 1024 * 1024, // 20 MB cache
        flushStrategy: FlushNone(),
      ),
    );
    try {
      final bigPayload = _payload('x' * (51 * 1024)); // ~51 KB
      for (var i = 0; i < 210; i++) {
        await c.record(data: bigPayload, partitionKey: 'pk-${i % 10}', streamName: streamName);
      }
      _log('[$n] flushing...');
      final r = await c.flush();
      final r2 = await c.flush();
      await c.close();
      if (r is Ok<FlushData> && r2 is Ok<FlushData>) {
        return TestResult(n, r.value.recordsFlushed == 210 && r2.value.recordsFlushed == 0,
            'firstFlush=${r.value.recordsFlushed}, secondFlush=${r2.value.recordsFlushed}');
      }
      return TestResult(n, false, 'r=$r, r2=$r2');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 19 ─ Oversized Record Rejected
  Future<TestResult> t19OversizedRecordRejected() async {
    const n = '19. Oversized Record Rejected';
    _log('[$n] start');
    final c = await _client();
    try {
      // >10 MiB record should be rejected by validation.
      final huge = _payload('x' * (10 * 1024 * 1024 + 1));
      final bad = await c.record(data: huge, partitionKey: 'pk', streamName: streamName);
      final rejected = bad is Error;
      // Valid record should still work.
      await c.record(data: _payload('ok'), partitionKey: 'pk', streamName: streamName);
      final r = await c.flush();
      await c.close();
      if (r is Ok<FlushData>) {
        return TestResult(n, rejected && r.value.recordsFlushed == 1,
            'rejected=$rejected, flushed=${r.value.recordsFlushed}');
      }
      return TestResult(n, false, 'rejected=$rejected, flush=$r');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 20 ─ Escape Hatch
  Future<TestResult> t20EscapeHatch() async {
    const n = '20. Escape Hatch';
    _log('[$n] start');
    final c = await _client();
    try {
      final sdk = c.kinesisClient;
      final accessible = sdk != null; // ignore: unnecessary_null_comparison
      await c.close();
      return TestResult(n, accessible, 'kinesisClient accessible=$accessible');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 21 ─ Records Can Be Immediately Flushed
  Future<TestResult> t21ImmediateFlush() async {
    const n = '21. Immediate Flush';
    _log('[$n] start');
    final c = await _client();
    try {
      await c.record(data: _payload('immediate'), partitionKey: 'pk', streamName: streamName);
      final r = await c.flush();
      await c.close();
      if (r is Ok<FlushData>) {
        return TestResult(n, r.value.recordsFlushed == 1,
            'recordsFlushed=${r.value.recordsFlushed}');
      }
      return TestResult(n, false, '$r');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  // 22 ─ Records Persist App Closing
  // NOTE: This is a two-phase test. Phase 1 records without flushing.
  // Phase 2 (after app restart) flushes. In a single run we simulate
  // by closing and re-creating the client (same region = same DB).
  Future<TestResult> t22PersistAppClosing() async {
    const n = '22. Persist App Closing';
    _log('[$n] phase 1 — record without flush');
    final c1 = await _client();
    try {
      await c1.record(data: _payload('persist'), partitionKey: 'pk', streamName: streamName);
      await c1.close(); // simulate app kill

      _log('[$n] phase 2 — new client, flush');
      final c2 = await _client();
      final r = await c2.flush();
      await c2.close();
      if (r is Ok<FlushData>) {
        return TestResult(n, r.value.recordsFlushed >= 1,
            'recordsFlushed=${r.value.recordsFlushed}');
      }
      return TestResult(n, false, '$r');
    } on Object catch (e) {
      return TestResult(n, false, '$e');
    }
  }

  // 23 ─ Record Cache Scoped to Region
  Future<TestResult> t23CacheScopedToRegion() async {
    const n = '23. Cache Scoped to Region';
    _log('[$n] start');
    final c1 = await AmplifyKinesisClient.create(
      region: 'us-east-1',
      credentialsProvider: credentialsProvider,
      options: const AmplifyKinesisClientOptions(flushStrategy: FlushNone()),
    );
    try {
      await c1.record(data: _payload('region-a'), partitionKey: 'pk', streamName: streamName);
      await c1.close();

      final c2 = await AmplifyKinesisClient.create(
        region: 'eu-west-1',
        credentialsProvider: credentialsProvider,
        options: const AmplifyKinesisClientOptions(flushStrategy: FlushNone()),
      );
      final r = await c2.flush();
      await c2.close();

      // Clean up region-a records.
      final c1b = await AmplifyKinesisClient.create(
        region: 'us-east-1',
        credentialsProvider: credentialsProvider,
        options: const AmplifyKinesisClientOptions(flushStrategy: FlushNone()),
      );
      await c1b.clearCache();
      await c1b.close();

      if (r is Ok<FlushData>) {
        return TestResult(n, r.value.recordsFlushed == 0,
            'eu-west-1 flushed=${r.value.recordsFlushed} (expected 0)');
      }
      return TestResult(n, false, '$r');
    } on Object catch (e) {
      return TestResult(n, false, '$e');
    }
  }

  // 24 ─ Flush Interval Scoped to Region
  Future<TestResult> t24FlushIntervalScopedToRegion() async {
    const n = '24. Flush Interval Scoped to Region';
    _log('[$n] start');
    // Client A: auto-flush every 3s.
    final cA = await AmplifyKinesisClient.create(
      region: region,
      credentialsProvider: credentialsProvider,
      options: const AmplifyKinesisClientOptions(
        flushStrategy: FlushInterval(interval: Duration(seconds: 3)),
      ),
    );
    // Client B: no auto-flush.
    final cB = await AmplifyKinesisClient.create(
      region: 'ap-southeast-1',
      credentialsProvider: credentialsProvider,
      options: const AmplifyKinesisClientOptions(flushStrategy: FlushNone()),
    );
    try {
      await cA.record(data: _payload('region-a'), partitionKey: 'pk', streamName: streamName);
      await cB.record(data: _payload('region-b'), partitionKey: 'pk', streamName: streamName);

      _log('[$n] waiting 5s for A auto-flush...');
      await Future<void>.delayed(const Duration(seconds: 5));

      final rA = await cA.flush();
      final rB = await cB.flush();
      await cA.close();
      await cB.close();

      if (rA is Ok<FlushData> && rB is Ok<FlushData>) {
        // A should have auto-flushed already → manual flush returns 0.
        // B never auto-flushed → manual flush returns 1.
        final ok = rA.value.recordsFlushed == 0 && rB.value.recordsFlushed == 1;
        return TestResult(n, ok,
            'A manual=${rA.value.recordsFlushed} (expected 0), '
            'B manual=${rB.value.recordsFlushed} (expected 1)');
      }
      return TestResult(n, false, 'rA=$rA, rB=$rB');
    } on Object catch (e) {
      await cA.close();
      await cB.close();
      return TestResult(n, false, '$e');
    }
  }

  // 25 ─ All Records Flushed (2000 records, multiple batches)
  Future<TestResult> t25AllRecordsFlushed() async {
    const n = '25. All Records Flushed (2000)';
    _log('[$n] start — recording 2000 records');
    final c = await _client();
    try {
      for (var i = 0; i < 2000; i++) {
        await c.record(data: _payload('bulk-$i'), partitionKey: 'pk-${i % 10}', streamName: streamName);
      }
      _log('[$n] flushing...');
      final r = await c.flush();
      await c.close();
      if (r is Ok<FlushData>) {
        return TestResult(n, r.value.recordsFlushed == 2000,
            'recordsFlushed=${r.value.recordsFlushed} (expected 2000)');
      }
      return TestResult(n, false, '$r');
    } on Object catch (e) {
      await c.close();
      return TestResult(n, false, '$e');
    }
  }

  /// Runs all 25 test scenarios sequentially.
  Future<List<TestResult>> runAll() async {
    return [
      await t01RecordAndFlush(),
      await t02FlushWhenEmpty(),
      await t03RecordWhileDisabled(),
      await t04EnableDisableLifecycle(),
      await t05FlushWhileDisabled(),
      await t06ConcurrentFlush(),
      await t07ClearCache(),
      await t08CacheLimitExceeded(),
      await t09NonexistentStream(),
      await t10InvalidCredentials(),
      await t11RetryExhaustion(),
      await t12HighVolume(),
      await t13RepeatedFlushCycles(),
      await t14ConcurrentStress(),
      await t15DefaultAutoStartScheduler(),
      await t16AutoFlush(),
      await t17MaxEmojiPartitionKey(),
      await t18LargePayloadBatching(),
      await t19OversizedRecordRejected(),
      await t20EscapeHatch(),
      await t21ImmediateFlush(),
      await t22PersistAppClosing(),
      await t23CacheScopedToRegion(),
      await t24FlushIntervalScopedToRegion(),
      await t25AllRecordsFlushed(),
    ];
  }
}
