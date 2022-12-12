// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Possible network connectivity statuses.
enum ConnectivityStatus {
  /// Network connection detected.
  connected,

  /// Loss of network connection detected.
  disconnected,
}

/// {@template amplify_api_dart.connectivity_platform}
/// Used to create a stream representing network connectivity at the hardware level.
///
/// The generated stream is empty.
/// {@endtemplate}
class ConnectivityPlatform {
  /// {@macro amplify_api_dart.connectivity_platform}
  const ConnectivityPlatform();

  /// Generates a new stream of [ConnectivityStatus].
  Stream<ConnectivityStatus> get onConnectivityChanged => const Stream.empty();
}
