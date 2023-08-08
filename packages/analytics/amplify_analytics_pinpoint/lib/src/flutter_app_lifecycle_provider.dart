// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore: implementation_imports
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/app_lifecycle_provider.dart';
import 'package:flutter/material.dart';

/// {@template amplify_analytics_pinpoint.flutter_app_lifecycle_provider}
/// Provides callbacks to notify listeners when app is foregrounded or backgrounded.
/// {@endtemplate}
class FlutterAppLifecycleProvider extends WidgetsBindingObserver
    implements AppLifecycleProvider {
  bool _isObserving = false;

  void Function()? _onBackground;
  void Function()? _onForeground;

  @override
  void setOnForegroundListener(void Function() onForeground) =>
      _onForeground = onForeground;

  @override
  void setOnBackgroundListener(void Function() onBackground) =>
      _onBackground = onBackground;

  @override
  void startObserving() {
    if (_isObserving) return;

    _isObserving = true;
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void stopObserving() {
    _isObserving = false;
    WidgetsBinding.instance.removeObserver(this);
  }

  // Current implementation based on Android.
  // TODO(fjnoyp): consider supporting session pause like iOS:
  // If app paused for X seconds, on app resume, a new session is created.
  // But the old session is sent as session end.
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        _onForeground?.call();
      // backgrounded
      case AppLifecycleState.paused:
        _onBackground?.call();
      // flutter engine running without view
      case AppLifecycleState.detached:
        break;
      // foreground inactive due to phone call / etc.
      case AppLifecycleState.inactive:
        break;
      default: /* AppLifecycleState.hidden */
        // TODO(fjnoyp): Remove when AppLifecycleState.hidden is added
        break;
    }
  }
}
