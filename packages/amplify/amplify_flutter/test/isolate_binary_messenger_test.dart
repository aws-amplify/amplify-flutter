// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Spike evidence for https://github.com/aws-amplify/amplify-flutter/issues/5302
// ("Support Amplify in multiple Dart Isolates").
//
// `packages/amplify_core/test/amplify_class_isolate_test.dart` shows that
// Amplify's Dart state is already isolate-local, so a second isolate can build
// its own `AmplifyClass` and configure it. This file covers the blocker that
// remains for anything backed by a platform channel: an isolate started with a
// bare `Isolate.spawn` has no `BinaryMessenger`, so every MethodChannel/Pigeon
// call in it throws before a message is ever sent.
//
// Runs on the host under `flutter test` (no device needed). Completing an
// actual round trip to native is device-gated and lives in
// `packages/secure_storage/amplify_secure_storage/example/integration_test/background_isolate_messenger_test.dart`
// -- `flutter_tester` refuses to service platform messages from a background
// isolate ("Callbacks into the Dart VM are currently prohibited"), so it can
// only be proven on a real engine.

@TestOn('vm')
library;

import 'dart:async';
import 'dart:isolate';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

/// A channel that intentionally has no implementation.
///
/// Which channel is used is irrelevant: acquiring the messenger fails before
/// any message is encoded, which is exactly why this blocks every Amplify
/// Pigeon channel equally.
const _channel = MethodChannel('com.amazonaws.amplify/isolate_spike');

/// What [probeMessengerInIsolate] observed, sent back over a [SendPort].
///
/// Only primitives are sent, so a failure is always reportable even when the
/// thrown object itself is not sendable across isolates.
typedef IsolateReport = Map<String, Object?>;

/// Inspects the platform-channel plumbing available to the isolate this runs
/// in, and reports it back over the [SendPort] in [message].
///
/// [message] also carries the root isolate's [RootIsolateToken], or `null` to
/// leave the isolate in the state a bare `Isolate.spawn` produces, and whether
/// to attempt a real [MethodChannel] invocation.
Future<void> probeMessengerInIsolate(
  (SendPort, RootIsolateToken?, bool) message,
) async {
  final (sendPort, rootIsolateToken, attemptInvoke) = message;
  final report = <String, Object?>{
    'debugName': Isolate.current.debugName,
    'tokenProvided': rootIsolateToken != null,
  };

  // `null` here is what makes Flutter's channels resolve their messenger via
  // `BackgroundIsolateBinaryMessenger.instance` instead of
  // `ServicesBinding.instance.defaultBinaryMessenger`.
  report['rootIsolateTokenIsNull'] = ServicesBinding.rootIsolateToken == null;

  if (rootIsolateToken != null) {
    try {
      BackgroundIsolateBinaryMessenger.ensureInitialized(rootIsolateToken);
      report['ensureInitializedError'] = null;
    } on Object catch (e) {
      report['ensureInitializedError'] = '${e.runtimeType}: $e';
    }
  }

  try {
    report['messenger'] = BackgroundIsolateBinaryMessenger.instance.runtimeType
        .toString();
  } on Object catch (e) {
    report['messengerErrorType'] = e.runtimeType.toString();
    report['messengerError'] = '$e';
  }

  try {
    ServicesBinding.instance.defaultBinaryMessenger;
    report['servicesBindingErrorType'] = null;
  } on Object catch (e) {
    report['servicesBindingErrorType'] = e.runtimeType.toString();
  }

  if (attemptInvoke) {
    try {
      await _channel.invokeMethod<void>('noop');
      report['invokeErrorType'] = null;
    } on Object catch (e) {
      report['invokeErrorType'] = e.runtimeType.toString();
      report['invokeError'] = '$e';
    }
  }

  sendPort.send(report);
}

/// Spawns [probeMessengerInIsolate] and waits for its [IsolateReport].
Future<IsolateReport> runInIsolate({
  required String debugName,
  required RootIsolateToken? rootIsolateToken,
  bool attemptInvoke = false,
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
    probeMessengerInIsolate,
    (receivePort.sendPort, rootIsolateToken, attemptInvoke),
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

  group('background isolate binary messenger', () {
    test('the root isolate has a token and a messenger', () {
      expect(
        RootIsolateToken.instance,
        isNotNull,
        reason: 'PR2 needs a token to hand to background isolates',
      );
      expect(ServicesBinding.rootIsolateToken, isNotNull);
      expect(ServicesBinding.instance.defaultBinaryMessenger, isNotNull);
    });

    test('a spawned isolate has no messenger, so channel calls throw', () async {
      final report = await runInIsolate(
        debugName: 'no-messenger',
        rootIsolateToken: null,
        attemptInvoke: true,
      );

      expect(report['debugName'], 'no-messenger');
      expect(report['tokenProvided'], isFalse);

      // Flutter routes channel traffic in a background isolate through
      // `BackgroundIsolateBinaryMessenger` precisely because this is null.
      expect(report['rootIsolateTokenIsNull'], isTrue);

      // The binding itself never exists in a spawned isolate.
      expect(report['servicesBindingErrorType'], 'FlutterError');

      expect(report['messengerErrorType'], 'StateError');
      expect(
        report['messengerError'],
        contains('BackgroundIsolateBinaryMessenger.ensureInitialized'),
      );

      // This is the blocker for #5302: a real channel call fails, and it fails
      // while looking up the messenger rather than at the host boundary.
      expect(report['invokeErrorType'], 'StateError');
      expect(
        report['invokeError'],
        contains('BackgroundIsolateBinaryMessenger.ensureInitialized'),
        reason:
            'If this stops throwing, Flutter now installs a messenger in '
            'spawned isolates automatically and #5302 needs re-scoping.',
      );
    });

    test(
      'the root isolate token installs a messenger in a spawned isolate',
      () async {
        final report = await runInIsolate(
          debugName: 'with-messenger',
          rootIsolateToken: RootIsolateToken.instance,
        );

        expect(report['debugName'], 'with-messenger');
        expect(report['tokenProvided'], isTrue);
        expect(report['ensureInitializedError'], isNull);
        expect(report['messengerErrorType'], isNull);
        expect(report['messenger'], 'BackgroundIsolateBinaryMessenger');

        // Only the messenger is installed. The binding is still absent, so
        // anything reaching for `ServicesBinding.instance` directly stays broken
        // -- worth knowing before PR2 picks an API shape.
        expect(report['servicesBindingErrorType'], 'FlutterError');
      },
    );
  });
}
