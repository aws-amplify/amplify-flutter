// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:flutter/material.dart';

/// {@template amplify_analytics_pinpoint.flutter_app_lifecycle_provider}
/// Provides callbacks to notify listeners when app is foregrounded or backgrounded
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

  // Current implementation based on Android
  // TODO(fjnoyp): consider supporting session pause like iOS
  // If app paused for X seconds, on app resume, a new session is created
  // But the old session is sent as session end
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        _onForeground?.call();
        break;
      // backgrounded
      case AppLifecycleState.paused:
        _onBackground?.call();
        break;
      // flutter engine running without view
      case AppLifecycleState.detached:
        break;
      // foreground inactive due to phone call / etc.
      case AppLifecycleState.inactive:
        break;
    }
  }
}
