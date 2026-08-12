// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Guardrail for https://github.com/aws-amplify/amplify-flutter/issues/5302.
//
// `AmplifyDataStore` is backed by a process-wide native SDK, so it can only be
// configured from a root isolate. Verified on device in #7266: a secondary
// isolate with completely fresh Dart state still meets an already-configured
// native SDK, which reports `AmplifyAlreadyConfiguredException`.

@TestOn('vm')
library;

import 'dart:async';
import 'dart:isolate';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore/src/isolate_context.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';
import 'package:flutter_test/flutter_test.dart';

/// What [configureInIsolate] observed, sent back over a [SendPort].
typedef IsolateReport = Map<String, Object?>;

/// Calls `AmplifyDataStore.configure` in the isolate this runs in and reports
/// which error came back.
///
/// A null config is passed deliberately: on a root isolate that produces the
/// pre-existing `ConfigurationError`, which is what proves the isolate guard did
/// not fire. In a secondary isolate the guard must win, because being on the
/// wrong isolate cannot be fixed by supplying a config.
Future<void> configureInIsolate(SendPort sendPort) async {
  final report = <String, Object?>{'inRootIsolate': amplifyIsInRootIsolate};
  final plugin = AmplifyDataStore(modelProvider: ModelProvider.instance);
  try {
    await plugin.configure(authProviderRepo: AmplifyAuthProviderRepository());
    report['errorType'] = null;
  } on Object catch (e) {
    report['errorType'] = e.runtimeType.toString();
    report['error'] = '$e';
  }
  sendPort.send(report);
}

/// Spawns [configureInIsolate] and waits for its [IsolateReport].
Future<IsolateReport> runInIsolate() async {
  final receivePort = ReceivePort();
  final errorPort = ReceivePort();
  final result = Completer<IsolateReport>();

  receivePort.listen((message) {
    if (!result.isCompleted) {
      result.complete((message as Map).cast<String, Object?>());
    }
  });
  errorPort.listen((message) {
    if (!result.isCompleted) {
      result.completeError(StateError('Isolate errored: $message'));
    }
  });

  final isolate = await Isolate.spawn(
    configureInIsolate,
    receivePort.sendPort,
    onError: errorPort.sendPort,
    errorsAreFatal: true,
    debugName: 'datastore-guard',
  );
  try {
    return await result.future.timeout(const Duration(seconds: 30));
  } finally {
    isolate.kill(priority: Isolate.immediate);
    receivePort.close();
    errorPort.close();
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('amplifyIsInRootIsolate', () {
    test('is true on a root isolate', () {
      // Matches the canonical getter in amplify_flutter. `flutter_tester` is an
      // engine root isolate, the same state a headless `FlutterEngine` runs in.
      expect(amplifyIsInRootIsolate, isTrue);
    });

    test('is false in a spawned isolate', () async {
      final report = await runInIsolate();

      expect(report['inRootIsolate'], isFalse);
    });
  });

  group('AmplifyDataStore.configure', () {
    test('is refused in a secondary isolate, naming the reason', () async {
      final report = await runInIsolate();

      expect(report['inRootIsolate'], isFalse);
      expect(report['errorType'], 'PluginError');
      expect(report['error'], contains('secondary isolate'));
      expect(
        report['error'],
        contains('single instance per process'),
        reason: 'The message must name the real constraint',
      );
      expect(
        report['error'],
        contains('root isolate'),
        reason: 'The message must say where to configure instead',
      );
    });

    test('is not refused on the root isolate', () async {
      // The guard must be invisible to every single-isolate app. Reaching the
      // pre-existing `ConfigurationError` for the null config proves the guard
      // did not fire.
      final plugin = AmplifyDataStore(modelProvider: ModelProvider.instance);

      await expectLater(
        plugin.configure(authProviderRepo: AmplifyAuthProviderRepository()),
        throwsA(isA<ConfigurationError>()),
      );
    });
  });
}
