// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:uuid/uuid.dart';

class UUID {
  static const _internal = Uuid();

  static String getUUID() {
    return _internal.v4();
  }
}

// ignore_for_file: avoid_classes_with_only_static_members
