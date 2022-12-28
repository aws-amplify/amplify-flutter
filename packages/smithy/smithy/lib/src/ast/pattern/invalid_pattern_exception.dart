// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Error thrown for invalid patterns.
class InvalidPatternError extends ArgumentError {
  InvalidPatternError(String message) : super(message);
}

/// Error thrown for invalid HTTP URI patterns.
class InvalidUriPatternError extends ArgumentError {
  InvalidUriPatternError(String message) : super(message);
}
