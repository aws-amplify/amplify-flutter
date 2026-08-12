// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
library;

import 'dart:async';
import 'dart:isolate';

import 'package:amplify_flutter/src/amplify_isolate.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

/// What [probeIsolate] observed, sent back over a [SendPort].
///
/// Only primitives are sent, so a failure is always reportable even when the
/// thrown object itself is not sendable across isolates.
typedef IsolateReport = Map<String, Object?>;

/// Exercises the bootstrap helper from the isolate this runs in.
///
/// [message] carries the reply port, the root isolate's token or `null` to skip
/// bootstrapping, and whether to call the helper a second time.
Future<void> probeIsolate((SendPort, RootIsolateToken?, bool) message) async {
  final (sendPort, token, callTwice) = message;
  final report = <String, Object?>{
    'debugName': Isolate.current.debugName,
    'rootTokenIsNullHere': amplifyRootIsolateToken == null,
    'initializedBefore': amplifyIsolateIsInitialized,
  };
  try {
    if (token != null) {
      ensureAmplifyIsolateInitialized(token);
      if (callTwice) ensureAmplifyIsolateInitialized(token);
    }
    report['error'] = null;
  } on Object catch (e) {
    report['errorType'] = e.runtimeType.toString();
    report['error'] = '$e';
  }
  report['initializedAfter'] = amplifyIsolateIsInitialized;
  try {
    report['messengerType'] = BackgroundIsolateBinaryMessenger
        .instance
        .runtimeType
        .toString();
  } on StateError {
    report['messengerType'] = null;
  }
  sendPort.send(report);
}

/// Spawns [probeIsolate] and waits for its [IsolateReport].
Future<IsolateReport> runInIsolate({
  required String debugName,
  required RootIsolateToken? token,
  bool callTwice = false,
}) async {
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
    probeIsolate,
    (receivePort.sendPort, token, callTwice),
    onError: errorPort.sendPort,
    errorsAreFatal: true,
    debugName: debugName,
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

  group('amplifyRootIsolateToken', () {
    test('is available on the root isolate', () {
      expect(amplifyRootIsolateToken, isNotNull);
      expect(amplifyRootIsolateToken, same(RootIsolateToken.instance));
    });

    test('is null in a spawned isolate, so it must be sent across', () async {
      final report = await runInIsolate(debugName: 'no-token', token: null);

      expect(report['debugName'], 'no-token');
      expect(report['rootTokenIsNullHere'], isTrue);
    });
  });

  group('amplifyIsolateIsInitialized', () {
    test('is true on the root isolate', () {
      expect(amplifyIsolateIsInitialized, isTrue);
    });

    test('is false in a spawned isolate that was not bootstrapped', () async {
      final report = await runInIsolate(debugName: 'no-token', token: null);

      expect(report['initializedBefore'], isFalse);
      expect(report['initializedAfter'], isFalse);
      expect(report['messengerType'], isNull);
    });
  });

  group('ensureAmplifyIsolateInitialized', () {
    test('makes platform channels reachable in a spawned isolate', () async {
      final report = await runInIsolate(
        debugName: 'bootstrapped',
        token: RootIsolateToken.instance,
      );

      expect(
        report['error'],
        isNull,
        reason: 'Bootstrap failed: ${report['errorType']}: ${report['error']}',
      );
      expect(report['initializedBefore'], isFalse);
      expect(report['initializedAfter'], isTrue);
      expect(report['messengerType'], 'BackgroundIsolateBinaryMessenger');
    });

    test('is idempotent', () async {
      final report = await runInIsolate(
        debugName: 'bootstrapped-twice',
        token: RootIsolateToken.instance,
        callTwice: true,
      );

      expect(
        report['error'],
        isNull,
        reason: 'Second call threw: ${report['errorType']}: ${report['error']}',
      );
      expect(report['initializedAfter'], isTrue);
    });

    test('is a no-op on the root isolate', () {
      // Registering a background messenger on the root isolate would replace
      // its platform message handler, so the helper must refuse to do it.
      final before = ServicesBinding.instance.defaultBinaryMessenger;

      ensureAmplifyIsolateInitialized(RootIsolateToken.instance!);

      expect(ServicesBinding.instance.defaultBinaryMessenger, same(before));
      expect(amplifyIsolateIsInitialized, isTrue);
      // The root isolate never gets a background messenger installed.
      expect(
        () => BackgroundIsolateBinaryMessenger.instance,
        throwsA(isA<StateError>()),
      );
    });
  });
}
