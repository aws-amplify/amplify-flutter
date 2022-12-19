// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

/// Interface for objects which need cleanup before GC, usually to prevent
/// memory leaks.
abstract class Closeable {
  /// Closes the resource and all connected objects.
  FutureOr<void> close();
}
