// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

/// An operation which can be canceled while pending or in progress.
abstract class Cancelable {
  /// Cancels the pending or in-progress operation.
  ///
  /// Multiple calls to this method should have the same result. In other words,
  /// it should be idempotent.
  FutureOr<void> cancel();
}
