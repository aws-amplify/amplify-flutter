// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment_dart/amplify_event_enrichment_dart.dart';
import 'package:flutter/widgets.dart';

/// {@template amplify_event_enrichment.flutter_lifecycle_observer}
/// Registers with [WidgetsBinding] and maps `paused` and `hidden` to
/// [EventEnrichmentClient.handleAppPaused] and `resumed` to
/// [EventEnrichmentClient.handleAppResumed]. Other states are ignored.
/// {@endtemplate}
final class FlutterLifecycleObserver with WidgetsBindingObserver {
  /// {@macro amplify_event_enrichment.flutter_lifecycle_observer}
  FlutterLifecycleObserver({required EventEnrichmentClient client})
    : _client = client {
    WidgetsBinding.instance.addObserver(this);
  }

  final EventEnrichmentClient _client;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.paused:
      case AppLifecycleState.hidden:
        onPause();
      case AppLifecycleState.resumed:
        onResume();
      case _:
        break;
    }
  }

  /// Forwards a move to the background.
  void onPause() => _client.handleAppPaused();

  /// Forwards a return to the foreground.
  void onResume() => _client.handleAppResumed();

  /// Stops observing, so no further [onPause] or [onResume] calls are made.
  void dispose() => WidgetsBinding.instance.removeObserver(this);
}
