// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Device harness for https://github.com/aws-amplify/amplify-flutter/issues/5302
// ("Support Amplify in multiple Dart Isolates").
//
// Registered in `main_test.dart`, so it runs on the existing `e2e_android` legs
// (API 24 and 35), which provision this example's backend via
// `needs-aws-config: true`. It is gated to Android, so the `e2e_ios` leg skips
// it -- the native mapping asserted below was read from amplify-android and
// nothing is claimed about amplify-swift.
//
// `packages/amplify_core/test/amplify_class_isolate_test.dart` shows Amplify's
// Dart state is isolate-local, and
// `packages/amplify/amplify_flutter/test/isolate_binary_messenger_test.dart`
// shows a spawned isolate needs `BackgroundIsolateBinaryMessenger` before it can
// talk to a platform channel. This file covers the third piece, which only a
// real device can answer: the native SDK is a single process-wide instance, so a
// second isolate with completely fresh Dart state still meets an
// already-configured native Amplify.
//
// It asserts against the exception `AmplifyDataStore.configure` already swallows
// today (see `packages/amplify_datastore/lib/amplify_datastore.dart`, the
// `NativeAmplifyBridge.configure` call, and `hybrid_impl.dart`), raised by
// `AmplifyDataStorePlugin.kt` as
// `FlutterError("AmplifyAlreadyConfiguredException", ...)`.
//
// TESTING PLAN (for running it by hand; CI runs it automatically)
// ---------------------------------------------------------------
// Device:   Android emulator or device (CI uses API 24 and 35). An emulator
//           needs KVM, so it cannot run on a host without nested
//           virtualization.
// Backend:  Requires `lib/amplifyconfiguration.dart`, same as every other test
//           in this directory. Provision with
//           `tool/provision_integration_test_resources.sh` or
//           `tool/pull_test_backend.sh`.
// Command:  cd packages/amplify_datastore/example
//           flutter test integration_test/isolate_native_singleton_test.dart \
//             -d emulator-5554
// Expected: 3 tests pass. In particular `report['errorCode']` is
//           `'AmplifyAlreadyConfiguredException'` while
//           `report['dartStateWasEmpty']` is `true` in the same run -- fresh
//           Dart state, already-configured native SDK. The report is printed to
//           the test log so the observed values are visible in CI output.
// Broken:   If `errorCode` is null, the native SDK accepted a second
//           `configure()` and the process-wide-singleton premise of #5302 is
//           wrong. If `errorCode` is `'channel-error'` or the test times out,
//           `BackgroundIsolateBinaryMessenger.ensureInitialized` did not take
//           effect and the messenger, not the native singleton, is what failed.
//           If `dartStateWasEmpty` is false, `Isolate.spawn` started sharing
//           statics and the whole plan needs revisiting.

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

// ignore: implementation_imports
import 'package:amplify_datastore/src/native_plugin.g.dart';
import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/setup_utils.dart';

/// What [configureNativeInIsolate] observed, sent back over a [SendPort].
typedef IsolateReport = Map<String, Object?>;

/// Asks native Amplify to configure itself a second time, from the isolate
/// this runs in.
///
/// [message] carries the reply port, the root isolate's [RootIsolateToken], the
/// Amplify version string and the raw configuration JSON. The version is passed
/// in rather than read from `Amplify.version` so that this does not construct
/// an [AmplifyClass] before recording whether one already existed.
Future<void> configureNativeInIsolate(
  (SendPort, RootIsolateToken, String, String) message,
) async {
  final (sendPort, rootIsolateToken, version, config) = message;
  final report = <String, Object?>{
    'debugName': Isolate.current.debugName,
    'dartStateWasEmpty': AmplifyClass.instance == null,
  };
  try {
    BackgroundIsolateBinaryMessenger.ensureInitialized(rootIsolateToken);
    await NativeAmplifyBridge().configure(version, config);
    report['errorCode'] = null;
  } on PlatformException catch (e) {
    report['errorCode'] = e.code;
    report['errorMessage'] = e.message;
  } on Object catch (e) {
    report['errorType'] = e.runtimeType.toString();
    report['error'] = '$e';
  }
  sendPort.send(report);
}

/// Spawns [configureNativeInIsolate] and waits for its [IsolateReport].
Future<IsolateReport> runInIsolate({
  required String debugName,
  required RootIsolateToken rootIsolateToken,
  required String version,
  required String config,
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
    configureNativeInIsolate,
    (receivePort.sendPort, rootIsolateToken, version, config),
    onError: errorPort.sendPort,
    errorsAreFatal: true,
    debugName: debugName,
  );
  try {
    return await result.future.timeout(const Duration(seconds: 60));
  } finally {
    isolate.kill(priority: Isolate.immediate);
    receivePort.close();
    errorPort.close();
  }
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
    'native Amplify is a process-wide singleton',
    () {
      late RootIsolateToken rootIsolateToken;
      late String nativeConfig;

      setUpAll(() async {
        final token = RootIsolateToken.instance;
        expect(token, isNotNull, reason: 'Must run on a real Flutter engine');
        rootIsolateToken = token!;
        await configureDataStore();
        expect(Amplify.isConfigured, isTrue);
        // Exactly what `AmplifyDataStore.configure` hands to
        // `NativeAmplifyBridge.configure`: the parsed outputs re-encoded, not
        // the raw Gen 1 `amplifyconfig` string. Using the same payload keeps
        // this test on the real code path, so a thrown
        // `AmplifyAlreadyConfiguredException` cannot be confused with a
        // config-parsing failure.
        // ignore: invalid_use_of_internal_member
        nativeConfig = jsonEncode((await Amplify.asyncConfig).toJson());
      });

      testWidgets('a second native configure from the root isolate throws', (
        _,
      ) async {
        await expectLater(
          NativeAmplifyBridge().configure(Amplify.version, nativeConfig),
          throwsA(
            isA<PlatformException>().having(
              (e) => e.code,
              'code',
              'AmplifyAlreadyConfiguredException',
            ),
          ),
        );
      });

      testWidgets('a second native configure from a spawned isolate throws', (
        _,
      ) async {
        final report = await runInIsolate(
          debugName: 'native-configure',
          rootIsolateToken: rootIsolateToken,
          version: Amplify.version,
          config: nativeConfig,
        );

        // Printed so the observed values show up in the CI log, not only on
        // failure. This is the spike's primary evidence for #5302.
        print('[issue-5302] native configure from spawned isolate: $report');

        expect(report['debugName'], 'native-configure');
        expect(
          report['errorType'],
          isNull,
          reason:
              'Unexpected non-PlatformException failure: '
              '${report['errorType']}: ${report['error']}',
        );

        // The crux of #5302: the child's Dart state is empty, yet native Amplify
        // is already configured, so the two layers must be handled separately.
        expect(report['dartStateWasEmpty'], isTrue);
        expect(report['errorCode'], 'AmplifyAlreadyConfiguredException');
      });

      testWidgets('the root isolate is undisturbed afterwards', (_) async {
        expect(Amplify.isConfigured, isTrue);
        expect(Amplify.DataStore.plugins, hasLength(1));
        await expectLater(Amplify.DataStore.query(Blog.classType), completes);
      });

      // The verified native mapping to `AmplifyAlreadyConfiguredException` was
      // read from amplify-android (`AmplifyDataStorePlugin.kt`). The iOS
      // equivalent has not been checked, so this does not claim anything there.
    },
    skip: Platform.isAndroid ? null : 'Requires an Android device.',
  );
}
