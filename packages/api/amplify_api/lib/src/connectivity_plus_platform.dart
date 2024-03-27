// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api_dart/amplify_api_dart.dart';
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
          .map((List<ConnectivityResult> connectivityResults) {
        // Check if any of the results indicate a connection
        final isConnected = connectivityResults
            .any((result) => result != ConnectivityResult.none);

        return isConnected
            ? ConnectivityStatus.connected
            : ConnectivityStatus.disconnected;
      });
}
