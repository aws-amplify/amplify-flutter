/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

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
