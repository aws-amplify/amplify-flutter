// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
library;

import 'dart:async';
import 'dart:isolate';

import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

const dummyConfiguration = '''{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0"
}''';

/// What [configureInIsolate] observed, sent back over a [SendPort].
///
/// Only primitives are sent so the message shape is identical on every VM
/// target and does not depend on cross-isolate object sending.
typedef IsolateReport = Map<String, Object?>;

/// Configures a fresh [AmplifyClass] inside the isolate this runs in and
/// reports what it observed back over [sendPort].
Future<void> configureInIsolate(SendPort sendPort) async {
  final report = <String, Object?>{'debugName': Isolate.current.debugName};
  try {
    report['instanceWasNullOnEntry'] = AmplifyClass.instance == null;
    report['isConfiguredBefore'] = Amplify.isConfigured;
    report['pluginCountBefore'] = Amplify.Analytics.plugins.length;

    await Amplify.addPlugin(SuccessPlugin());
    await Amplify.configure(dummyConfiguration);

    report['isConfiguredAfter'] = Amplify.isConfigured;
    report['pluginCountAfter'] = Amplify.Analytics.plugins.length;

    try {
      await Amplify.configure(dummyConfiguration);
      report['secondConfigureError'] = null;
    } on AmplifyAlreadyConfiguredException catch (e) {
      report['secondConfigureError'] = e.runtimeTypeName;
    }
  } on Object catch (e, st) {
    report['unexpectedError'] = '$e';
    report['unexpectedStackTrace'] = '$st';
  }
  sendPort.send(report);
}

/// Spawns [configureInIsolate] in an isolate named [debugName] and waits for
/// its [IsolateReport].
///
/// Uncaught errors in the child isolate are surfaced as an error on the
/// returned future rather than hanging the test until timeout.
Future<IsolateReport> runInIsolate(String debugName) async {
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
      result.completeError(StateError('Isolate $debugName errored: $message'));
    }
  });

  final isolate = await Isolate.spawn(
    configureInIsolate,
    receivePort.sendPort,
    onError: errorPort.sendPort,
    errorsAreFatal: true,
    debugName: debugName,
  );
  try {
    return await result.future;
  } finally {
    isolate.kill(priority: Isolate.immediate);
    receivePort.close();
    errorPort.close();
  }
}

void expectRanCleanlyIn(IsolateReport report, String debugName) {
  expect(
    report['unexpectedError'],
    isNull,
    reason:
        'Child isolate failed:\n'
        '${report['unexpectedError']}\n${report['unexpectedStackTrace']}',
  );
  expect(
    report['debugName'],
    debugName,
    reason: 'Report should come from the spawned isolate, not the test isolate',
  );
}

void main() {
  group('Amplify', () {
    group('isolates', () {
      tearDown(() async {
        await Amplify.reset();
      });

      test('configures independently in a spawned isolate', () async {
        await Amplify.addPlugin(SuccessPlugin());
        await Amplify.configure(dummyConfiguration);
        expect(Amplify.isConfigured, isTrue);
        expect(Amplify.Analytics.plugins, hasLength(1));
        final parentInstance = AmplifyClass.instance;
        expect(parentInstance, isNotNull);

        final report = await runInIsolate('child');
        expectRanCleanlyIn(report, 'child');

        // (a) State is genuinely isolate-local: the child inherits neither the
        // parent's `AmplifyClass.instance` nor its configured state, even
        // though the parent configured before the child was spawned.
        expect(report['instanceWasNullOnEntry'], isTrue);
        expect(report['isConfiguredBefore'], isFalse);
        expect(report['pluginCountBefore'], 0);

        // (b) `configure` succeeds in the child.
        expect(report['isConfiguredAfter'], isTrue);
        expect(report['pluginCountAfter'], 1);

        // (c) The child did not disturb the parent.
        expect(Amplify.isConfigured, isTrue);
        expect(Amplify.Analytics.plugins, hasLength(1));
        expect(identical(AmplifyClass.instance, parentInstance), isTrue);
        await expectLater(Amplify.asyncConfig, completes);
      });

      test('configures independently in multiple spawned isolates', () async {
        final debugNames = ['child-1', 'child-2', 'child-3'];
        final reports = await Future.wait(debugNames.map(runInIsolate));

        for (final (index, report) in reports.indexed) {
          expectRanCleanlyIn(report, debugNames[index]);
          expect(report['instanceWasNullOnEntry'], isTrue);
          expect(report['isConfiguredBefore'], isFalse);
          expect(report['isConfiguredAfter'], isTrue);
          expect(report['pluginCountAfter'], 1);
        }

        // The parent was never configured, and spawning isolates which
        // configure did not configure it implicitly.
        expect(Amplify.isConfigured, isFalse);
        expect(Amplify.Analytics.plugins, isEmpty);
      });

      // (d) The `AmplifyAlreadyConfiguredException` guard is per-instance, and
      // therefore per-isolate. It still fires for a second `configure` within
      // the same isolate.
      test('still throws when configured twice within one isolate', () async {
        final report = await runInIsolate('child');
        expectRanCleanlyIn(report, 'child');

        expect(
          report['secondConfigureError'],
          'AmplifyAlreadyConfiguredException',
        );
      });

      test('still throws when configured twice in the root isolate', () async {
        await Amplify.addPlugin(SuccessPlugin());
        await Amplify.configure(dummyConfiguration);

        expect(
          Amplify.configure(dummyConfiguration),
          throwsA(isA<AmplifyAlreadyConfiguredException>()),
        );
      });
    });
  });
}

class SuccessPlugin extends AnalyticsPluginInterface {
  @override
  Future<void> configure({
    AmplifyOutputs? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    return;
  }
}
