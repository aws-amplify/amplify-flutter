// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/src/util/globals.dart';

/// Prints [o] in debug-mode only.
void safePrint(Object? o) {
  if (zDebugMode) {
    // ignore: avoid_print
    print(o);
  }
}
