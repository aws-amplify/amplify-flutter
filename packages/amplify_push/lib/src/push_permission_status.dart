// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// The current push notification permission state.
enum PushPermissionStatus {
  /// Android: permission dialog has not been shown yet.
  shouldRequest,

  /// Permission was denied; explain to the user before requesting again.
  shouldExplainThenRequest,

  /// Permission granted.
  granted,

  /// Permission denied.
  denied,
}
