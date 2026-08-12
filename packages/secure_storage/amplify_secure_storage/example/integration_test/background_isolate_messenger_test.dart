// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// DEVICE-GATED harness for https://github.com/aws-amplify/amplify-flutter/issues/5302
// ("Support Amplify in multiple Dart Isolates"). NOT RUN IN CI, NOT YET RUN AT ALL.
//
// Covers the half of the messenger story that a real engine is required for.
// `packages/amplify/amplify_flutter/test/isolate_binary_messenger_test.dart`
// already proves on the host that a bare `Isolate.spawn`ed isolate cannot
// acquire a `BinaryMessenger`, and that `RootIsolateToken` +
// `BackgroundIsolateBinaryMessenger.ensureInitialized` installs one. What it
// cannot prove is that a message then actually reaches native code:
// `flutter_tester` refuses to service platform messages from a background
// isolate ("Callbacks into the Dart VM are currently prohibited"). Only a real
// device can close that gap, which is what this file does — against a real
// Pigeon channel (`AmplifySecureStoragePigeon` -> EncryptedSharedPreferences).
//
// Deliberately NOT registered in `main_test.dart`: this example also has web,
// wasm, linux and windows E2E legs, and `dart:io`/`dart:isolate` do not compile
// for web. Registering it would break those legs.
//
// TESTING PLAN
// ------------
// Device:   Android emulator or physical device, any API level the example
//           supports (CI's e2e_android legs use API 24 and 35). An emulator
//           needs KVM, so it cannot run on a host without nested
//           virtualization.
// Backend:  None. `amplify_secure_storage` is purely local, and this file never
//           calls `Amplify.configure`.
// Steps:    1. Boot a device, confirm `flutter devices` lists it.
//           2. cd packages/secure_storage/amplify_secure_storage/example
//           3. flutter test integration_test/background_isolate_messenger_test.dart \
//                -d emulator-5554
// Expected: 4 tests pass, in this order of meaning —
//           (1) the root isolate round-trips a value through the Pigeon channel;
//           (2) a spawned isolate given NO token fails, with `report['error']`
//               non-null and `report['readBack']` null;
//           (3) the same isolate given `RootIsolateToken.instance` succeeds and
//               `report['readBack'] == _value`;
//           (4) the value written from the isolate is readable by the root,
//               i.e. native storage is process-wide.
// Broken:   Test (2) passing means Flutter now installs a messenger in spawned
//           isolates automatically and #5302 needs re-scoping. Test (3) failing
//           with a `PlatformException(code: 'channel-error')`, a
//           `MissingPluginException`, or a 30s timeout means
//           `ensureInitialized` did not actually wire the isolate to the engine
//           — that is the interesting failure, and it would invalidate the
//           token-passing design PR2 builds on. A `StateError` mentioning
//           `BackgroundIsolateBinaryMessenger.ensureInitialized` in test (3)
//           means the token was null/not applied.

import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

const _namespace = 'com.amplify.isolateSpike';
const _key = 'issue-5302';
const _value = 'written-from-a-background-isolate';

/// What [readWriteInIsolate] observed, sent back over a [SendPort].
///
/// Only primitives are sent so a failure in the child isolate is always
/// reportable, even when the thrown object itself is not sendable.
typedef IsolateReport = Map<String, Object?>;

/// Performs a real Pigeon round trip from the isolate this runs in.
///
/// When [message] carries a [RootIsolateToken], the background isolate's
/// binary messenger is installed first; otherwise the Pigeon call is made with
/// no messenger at all, which is the state a bare `Isolate.spawn` leaves the
/// isolate in.
Future<void> readWriteInIsolate((SendPort, RootIsolateToken?) message) async {
  final (sendPort, rootIsolateToken) = message;
  final report = <String, Object?>{
    'debugName': Isolate.current.debugName,
    'messengerInitialized': rootIsolateToken != null,
  };
  try {
    if (rootIsolateToken != null) {
      BackgroundIsolateBinaryMessenger.ensureInitialized(rootIsolateToken);
    }
    // ignore: invalid_use_of_internal_member
    final storage = AmplifySecureStorage(
      config: AmplifySecureStorageConfig.byNamespace(namespace: _namespace),
    );
    await storage.write(key: _key, value: _value);
    report['readBack'] = await storage.read(key: _key);
  } on Object catch (e) {
    report['errorType'] = e.runtimeType.toString();
    report['error'] = '$e';
  }
  sendPort.send(report);
}

/// Spawns [readWriteInIsolate] and waits for its [IsolateReport].
Future<IsolateReport> runInIsolate({
  required String debugName,
  required RootIsolateToken? rootIsolateToken,
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
    readWriteInIsolate,
    (receivePort.sendPort, rootIsolateToken),
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
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
    'BackgroundIsolateBinaryMessenger',
    () {
      late RootIsolateToken rootIsolateToken;

      setUpAll(() {
        final token = RootIsolateToken.instance;
        expect(
          token,
          isNotNull,
          reason: 'Test must run on a real Flutter engine, not the Dart VM',
        );
        rootIsolateToken = token!;
      });

      tearDown(() async {
        // ignore: invalid_use_of_internal_member
        final storage = AmplifySecureStorage(
          config: AmplifySecureStorageConfig.byNamespace(namespace: _namespace),
        );
        await storage.delete(key: _key);
      });

      testWidgets('the root isolate can reach the Pigeon channel', (_) async {
        // ignore: invalid_use_of_internal_member
        final storage = AmplifySecureStorage(
          config: AmplifySecureStorageConfig.byNamespace(namespace: _namespace),
        );
        await storage.write(key: _key, value: _value);

        expect(await storage.read(key: _key), _value);
      });

      testWidgets('a spawned isolate cannot, without the root isolate token', (
        _,
      ) async {
        final report = await runInIsolate(
          debugName: 'no-messenger',
          rootIsolateToken: null,
        );

        expect(report['debugName'], 'no-messenger');
        expect(report['messengerInitialized'], isFalse);
        expect(
          report['error'],
          isNotNull,
          reason:
              'A Pigeon call with no BinaryMessenger must fail. If this passes, '
              'Flutter now auto-installs a messenger in spawned isolates and '
              'issue #5302 needs re-scoping.',
        );
        expect(report['readBack'], isNull);
      });

      testWidgets('a spawned isolate can, once given the root isolate token', (
        _,
      ) async {
        final report = await runInIsolate(
          debugName: 'with-messenger',
          rootIsolateToken: rootIsolateToken,
        );

        expect(report['debugName'], 'with-messenger');
        expect(report['messengerInitialized'], isTrue);
        expect(
          report['error'],
          isNull,
          reason:
              'Pigeon call failed in the background isolate: '
              '${report['errorType']}: ${report['error']}',
        );
        expect(report['readBack'], _value);
      });

      testWidgets('the value written in the isolate is visible to the root', (
        _,
      ) async {
        await runInIsolate(
          debugName: 'with-messenger',
          rootIsolateToken: rootIsolateToken,
        );

        // ignore: invalid_use_of_internal_member
        final storage = AmplifySecureStorage(
          config: AmplifySecureStorageConfig.byNamespace(namespace: _namespace),
        );
        expect(
          await storage.read(key: _key),
          _value,
          reason:
              'Native storage is process-wide, so a background isolate writes '
              'into the same EncryptedSharedPreferences file as the root isolate',
        );
      });
      // `AmplifySecureStoragePigeon` only exists on Android; every other platform
      // reaches secure storage over FFI or a worker isolate, so it cannot prove
      // anything about the binary messenger.
    },
    skip: Platform.isAndroid
        ? null
        : 'Requires an Android device: the secure '
              'storage Pigeon channel is Android-only.',
  );
}
