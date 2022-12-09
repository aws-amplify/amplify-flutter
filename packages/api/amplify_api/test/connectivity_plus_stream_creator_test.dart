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
  group('ConnectivityPlusStreamCreator', () {
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
