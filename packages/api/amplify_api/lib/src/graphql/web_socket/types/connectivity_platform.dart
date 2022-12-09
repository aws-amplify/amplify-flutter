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
