// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Guardrail for https://github.com/aws-amplify/amplify-flutter/issues/5302.
//
// `AmplifyAuthCognito` registers itself with the process-wide native Cognito SDK
// during `addPlugin`, starting with `NativeAuthPlugin.setUp`. Without this guard
// a secondary isolate gets a bare `StateError` about
// `BackgroundIsolateBinaryMessenger` from deep inside Pigeon, which says nothing
// about Amplify, Auth, or isolates.
//
// The guard is gated on messenger availability, not root-isolate identity, so it
// provably cannot fire in a headless `FlutterEngine` — see the comment at the
// call site. The cost is a known gap, pinned by the last test in this file.

@TestOn('vm')
library;

import 'dart:async';
import 'dart:isolate';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:amplify_flutter/src/amplify_isolate.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

/// What [addPluginInIsolate] observed, sent back over a [SendPort].
typedef IsolateReport = Map<String, Object?>;

/// Adds [AmplifyAuthCognito] in the isolate this runs in.
///
/// When [message] carries a [RootIsolateToken], the isolate is bootstrapped with
/// a binary messenger first, which is the case the guard deliberately does not
/// catch.
Future<void> addPluginInIsolate((SendPort, RootIsolateToken?) message) async {
  final (sendPort, token) = message;
  final report = <String, Object?>{};
  if (token != null) {
    BackgroundIsolateBinaryMessenger.ensureInitialized(token);
  }
  // ignore: invalid_use_of_internal_member
  report['isolateIsInitialized'] = amplifyIsolateIsInitialized;
  try {
    await AmplifyAuthCognito().addPlugin(
      authProviderRepo: AmplifyAuthProviderRepository(),
    );
    report['errorType'] = null;
  } on Object catch (e) {
    report['errorType'] = e.runtimeType.toString();
    report['error'] = '$e';
  }
  sendPort.send(report);
}

/// Spawns [addPluginInIsolate] and waits for its [IsolateReport].
Future<IsolateReport> runInIsolate({RootIsolateToken? token}) async {
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
    addPluginInIsolate,
    (receivePort.sendPort, token),
    onError: errorPort.sendPort,
    errorsAreFatal: true,
    debugName: 'auth-guard',
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

  group('AmplifyAuthCognito.addPlugin', () {
    test('is refused in a secondary isolate with no messenger', () async {
      final report = await runInIsolate();

      expect(report['isolateIsInitialized'], isFalse);
      expect(report['errorType'], 'PluginError');
      expect(report['error'], contains('secondary isolate'));
      expect(
        report['error'],
        contains('single instance'),
        reason: 'The message must name the real constraint',
      );
      expect(
        report['error'],
        contains('root isolate'),
        reason: 'The message must say where to configure instead',
      );
      expect(
        report['error'],
        contains('AmplifyAuthCognitoDart'),
        reason: 'The message must point at the Dart-only alternative',
      );
    });

    test('is not refused on the root isolate', () async {
      // The guard must be invisible to every single-isolate app, and to the
      // headless `FlutterEngine` that `amplifyBackgroundProcessing` runs in —
      // both have a messenger.
      // ignore: invalid_use_of_internal_member
      expect(amplifyIsolateIsInitialized, isTrue);

      await expectLater(
        AmplifyAuthCognito().addPlugin(
          authProviderRepo: AmplifyAuthProviderRepository(),
        ),
        completes,
      );
    });

    // KNOWN GAP, pinned deliberately. A secondary isolate bootstrapped with
    // `BackgroundIsolateBinaryMessenger.ensureInitialized` has a messenger, so
    // the guard lets it through. It still cannot work, but for a reason that
    // belongs to Flutter rather than Amplify: registering a host-to-Dart handler
    // is unsupported off the root isolate, so `NativeAuthPlugin.setUp` throws
    // `UnsupportedError`. Reporting that clearly would need root-isolate
    // identity, which is only safe once a headless engine's token has been
    // verified on a device. Whoever closes this gap should expect this to change.
    test(
      'is NOT refused in a bootstrapped secondary isolate (known gap)',
      () async {
        final report = await runInIsolate(token: RootIsolateToken.instance);

        expect(
          report['isolateIsInitialized'],
          isTrue,
          reason: 'Bootstrapping gave this isolate a messenger',
        );
        // ignore: avoid_print
        print('GAP_ERROR=${report['errorType']}: ${report['error']}');

        // The contract this pins is narrow and deliberate: the guard does not
        // fire here.
        expect(
          report['errorType'],
          isNot('PluginError'),
          reason: 'Gating on the messenger deliberately lets this case through',
        );
        // The case is still broken one layer deeper, by Flutter itself: on
        // Flutter 3.41.5 `NativeAuthPlugin.setUp` throws `UnsupportedError:
        // Background isolates do not support setMessageHandler(). Messages from
        // the host platform always go to the root isolate.` Host-to-Dart
        // callbacks are impossible in any secondary isolate, which bounds what
        // #5302 can ever support. That type and wording are Flutter internals,
        // so they are printed above for the record rather than asserted on.
      },
    );
  });
}
