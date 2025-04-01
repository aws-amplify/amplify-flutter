// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_api_dart/amplify_api_dart.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

/// {@template amplify_api.flutter_life_cycle}
/// Creates a stream of [ProcessStatus] mapped from [AppLifecycleListener](https://api.flutter.dev/flutter/widgets/AppLifecycleListener-class.html).
/// {@endtemplate}
@internal
class FlutterLifeCycle extends ProcessLifeCycle {
  /// {@macro amplify_api.flutter_life_cycle}
  FlutterLifeCycle() {
    AppLifecycleListener(onStateChange: _onStateChange);
  }

  final _stateController = StreamController<ProcessStatus>.broadcast(
    sync: true,
  );

  @override
  Stream<ProcessStatus> get onStateChanged => _stateController.stream;

  void _onStateChange(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.detached:
        _stateController.add(ProcessStatus.detached);
      case AppLifecycleState.paused:
        _stateController.add(ProcessStatus.paused);
      case AppLifecycleState.hidden:
        _stateController.add(ProcessStatus.hidden);
      case AppLifecycleState.inactive:
        _stateController.add(ProcessStatus.inactive);
      case AppLifecycleState.resumed:
        _stateController.add(ProcessStatus.resumed);
    }
  }
}
