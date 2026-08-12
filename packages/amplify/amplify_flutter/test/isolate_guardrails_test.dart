// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Groundwork and ground truth for the #5302 category guardrails.
//
// It establishes `amplifyIsInRootIsolate` and pins the behaviour of the layer
// *above* the guards: `AmplifyCategory.addPlugin` in `amplify_core` swallows
// `AmplifyAlreadyConfiguredException` and registers the plugin anyway.
//
// The chosen design deliberately leaves that swallow alone. `amplify_core` is
// Flutter-free and cannot tell which isolate it is on, so each native-backed
// plugin guards inside its own native call path instead — see
// `AmplifyDataStore.configure`. These tests therefore stay green as guards land;
// each guard is covered by tests in its own package.

@TestOn('vm')
library;

import 'dart:async';
import 'dart:isolate';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_flutter/src/amplify_isolate.dart';
import 'package:amplify_flutter/src/hybrid_impl.dart';
import 'package:flutter_test/flutter_test.dart';

/// Stands in for a native-backed plugin whose native side is already configured
/// by another isolate.
///
/// amplify-android reports exactly this: an `AlreadyConfiguredException` mapped
/// to `AmplifyAlreadyConfiguredException`, verified on device in #7266.
class NativeAlreadyConfiguredPlugin extends AnalyticsPluginInterface {
  // Deliberately does not call super: it models native registration failing
  // outright rather than completing.
  @override
  // ignore: must_call_super
  Future<void> addPlugin({
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    throw const AmplifyAlreadyConfiguredException(
      'Amplify has already been configured.',
    );
  }
}

/// A plugin that runs entirely in Dart, which #7266 proved must keep working in
/// a secondary isolate.
class PureDartPlugin extends AnalyticsPluginInterface {
  @override
  Future<void> configure({
    AmplifyOutputs? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {}
}

/// What [addPluginInIsolate] observed, sent back over a [SendPort].
typedef IsolateReport = Map<String, Object?>;

/// Builds a fresh [AmplifyHybridImpl] in the isolate this runs in and adds
/// either the native-backed or the pure-Dart plugin to it.
Future<void> addPluginInIsolate((SendPort, bool) message) async {
  final (sendPort, useNativePlugin) = message;
  final report = <String, Object?>{'inRootIsolate': amplifyIsInRootIsolate};
  final amplify = AmplifyHybridImpl();
  try {
    await amplify.addPlugin(
      useNativePlugin ? NativeAlreadyConfiguredPlugin() : PureDartPlugin(),
    );
    report['errorType'] = null;
  } on Object catch (e) {
    report['errorType'] = e.runtimeType.toString();
    report['error'] = '$e';
  }
  report['pluginCount'] = amplify.Analytics.plugins.length;
  sendPort.send(report);
}

/// Spawns [addPluginInIsolate] and waits for its [IsolateReport].
Future<IsolateReport> runInIsolate({required bool useNativePlugin}) async {
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
    (receivePort.sendPort, useNativePlugin),
    onError: errorPort.sendPort,
    errorsAreFatal: true,
    debugName: 'guardrail-probe',
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
      // `flutter_tester` gives a real engine root isolate, which is the same
      // state a headless `FlutterEngine` entry point runs in. This is what keeps
      // `amplifyBackgroundProcessing` out of any guard built on this predicate:
      // that function calls `WidgetsFlutterBinding.ensureInitialized()` and a
      // plain `MethodChannel`, so it can only ever run with an engine attached.
      expect(amplifyIsInRootIsolate, isTrue);
    });

    test('is false in a spawned isolate', () async {
      final report = await runInIsolate(useNativePlugin: false);

      expect(report['inRootIsolate'], isFalse);
    });
  });

  group('adding plugins from a secondary isolate', () {
    test('works for a plugin that runs entirely in Dart', () async {
      final report = await runInIsolate(useNativePlugin: false);

      expect(report['errorType'], isNull);
      expect(report['pluginCount'], 1);
    });

    // `AmplifyCategory.addPlugin`
    // (packages/amplify_core/lib/src/category/amplify_categories.dart:91-101)
    // catches `AmplifyAlreadyConfiguredException` and adds the plugin anyway, so
    // by the time control returns to `amplify_flutter` there is nothing left to
    // observe. This is why the guards cannot live at this layer, and why they
    // sit in each plugin's native call path instead. Expected to stay green.
    test(
      'is swallowed by the category layer, not seen by amplify_flutter',
      () async {
        final report = await runInIsolate(useNativePlugin: true);

        expect(report['inRootIsolate'], isFalse);
        expect(
          report['errorType'],
          isNull,
          reason:
              'amplify_core swallowed it before amplify_flutter could react',
        );
        expect(
          report['pluginCount'],
          1,
          reason:
              'Plugin is registered on the Dart side despite native failing',
        );
      },
    );
  });

  group('adding plugins on the root isolate', () {
    test('still tolerates an already-configured native SDK', () async {
      // The app-restart / hot-restart path: native outlives the Dart isolate, so
      // re-registering must stay a no-op. Any guard must not change this.
      final amplify = AmplifyHybridImpl();

      await expectLater(
        amplify.addPlugin(NativeAlreadyConfiguredPlugin()),
        completes,
      );
      expect(amplify.Analytics.plugins, hasLength(1));
    });
  });
}
