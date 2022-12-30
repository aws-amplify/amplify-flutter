// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Represents different auth strategies supported by a client
/// interfacing with an AppSync backend
enum AuthModeStrategy {
  /// Default authorization type read from API configuration
  defaultStrategy,

  /// Uses schema metadata to create a prioritized list of potential
  /// authorization types that could be used for a request. The client iterates
  /// through that list until one of the available types succeeds or all of
  /// them fail.
  multiAuth,
}

/// Helpers for [AuthModeStrategy].
extension AuthModeStrategyX on AuthModeStrategy {
  /// The raw value used for interfacing with native SDKs.
  String get rawValue {
    switch (this) {
      case AuthModeStrategy.defaultStrategy:
        return 'default';
      case AuthModeStrategy.multiAuth:
        return 'multiauth';
    }
  }
}
