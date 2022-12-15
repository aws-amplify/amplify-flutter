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

import 'package:amplify_api/src/api_plugin_impl.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:meta/meta.dart';

/// {@template amplify_api.connectivity_plus_platform}
/// Creates a stream of [ConnectivityStatus] from the [ConnectivityPlus plugin](https://pub.dev/packages/connectivity_plus).
/// {@endtemplate}
@internal
class ConnectivityPlusPlatform extends ConnectivityPlatform {
  /// {@macro amplify_api.connectivity_plus_platform}
  const ConnectivityPlusPlatform();

  @override
  Stream<ConnectivityStatus> get onConnectivityChanged => Connectivity()
          .onConnectivityChanged
          .map((ConnectivityResult connectivityResult) {
        switch (connectivityResult) {
          case ConnectivityResult.none:
            return ConnectivityStatus.disconnected;
          default:
            return ConnectivityStatus.connected;
        }
      });
}
