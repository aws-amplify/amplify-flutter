// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_api/src/api_plugin_impl.dart' hide ConnectivityPlatform;
import 'package:amplify_api/src/connectivity_plus_platform.dart';
import 'package:connectivity_plus_platform_interface/connectivity_plus_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// some utilities for mocking Connectivity Plus

const kCheckConnectivityResult = ConnectivityResult.wifi;

class MockConnectivityPlatform extends Mock
    with MockPlatformInterfaceMixin
    implements ConnectivityPlatform {
  // ignore: close_sinks
  final controller = StreamController<ConnectivityResult>.broadcast();

  @override
  Future<ConnectivityResult> checkConnectivity() async {
    return kCheckConnectivityResult;
  }

  @override
  Stream<ConnectivityResult> get onConnectivityChanged {
    return controller.stream;
  }
}

void main() {
  group('ConnectivityPlusPlatform', () {
    // More runtime mocking Connectivity Plus
    final fakePlatform = MockConnectivityPlatform();
    ConnectivityPlatform.instance = fakePlatform;

    late Stream<ConnectivityStatus> stream;

    setUp(() {
      const streamCreator = ConnectivityPlusPlatform();
      stream = streamCreator.onConnectivityChanged;
    });

    test(
      'returns connected status when ConnectivityPlus returns wifi',
      () {
        expect(
          stream,
          emits(ConnectivityStatus.connected),
        );
        stream.listen(null);
        fakePlatform.controller.sink.add(ConnectivityResult.wifi);
      },
    );

    test(
      'returns disconnected status when ConnectivityPlus returns none',
      () {
        expect(
          stream,
          emits(ConnectivityStatus.disconnected),
        );
        stream.listen(null);
        fakePlatform.controller.sink.add(ConnectivityResult.none);
      },
    );

    test(
      'returns disconnected/connected while changing connection status among several states',
      () {
        expect(
          stream,
          emitsInOrder([
            ConnectivityStatus.connected,
            ConnectivityStatus.connected,
            ConnectivityStatus.disconnected,
            ConnectivityStatus.connected
          ]),
        );
        stream.listen(null);
        fakePlatform.controller.sink.add(ConnectivityResult.wifi);
        fakePlatform.controller.sink.add(ConnectivityResult.vpn);
        fakePlatform.controller.sink.add(ConnectivityResult.none);
        fakePlatform.controller.sink.add(ConnectivityResult.mobile);
      },
    );
  });
}
