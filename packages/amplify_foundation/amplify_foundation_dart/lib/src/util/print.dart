// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

/// Prints [o] in debug-mode only.
void safePrint(Object? o) {
  if (zDebugMode) {
    // ignore: avoid_print
    print(o);
  }
}
