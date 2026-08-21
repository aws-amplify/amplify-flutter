// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment_dart/amplify_event_enrichment.dart';
import 'package:flutter/widgets.dart';

/// {@template amplify_event_enrichment.flutter_lifecycle_observer}
/// Flutter implementation of [LifecycleObserver] using [WidgetsBindingObserver].
///
/// Listens to [AppLifecycleState] changes and calls the session manager's
/// pause/resume methods accordingly.
/// {@endtemplate}
class FlutterLifecycleObserver
    with WidgetsBindingObserver
    implements LifecycleObserver {
  /// {@macro amplify_event_enrichment.flutter_lifecycle_observer}
  FlutterLifecycleObserver({required SessionManager sessionManager})
    : _sessionManager = sessionManager {
    WidgetsBinding.instance.addObserver(this);
  }

  final SessionManager _sessionManager;

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

  @override
  void onPause() => _sessionManager.handleAppPaused();

  @override
  void onResume() => _sessionManager.handleAppResumed();

  @override
  void dispose() => WidgetsBinding.instance.removeObserver(this);
}
