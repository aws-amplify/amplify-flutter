// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import '../access_level.dart';

abstract class StorageOperationOptions {
  const StorageOperationOptions({
    required this.accessLevel,
  });

  final StorageAccessLevel accessLevel;
}
