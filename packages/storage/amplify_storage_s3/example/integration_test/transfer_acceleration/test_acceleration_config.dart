// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

class TestTransferAccelerationConfig<T> {
  const TestTransferAccelerationConfig({
    required this.targetKey,
    required this.targetAccessLevel,
    required this.uploadSource,
    required this.referenceBytes,
  });

  final String targetKey;
  final StorageAccessLevel targetAccessLevel;
  final T uploadSource;
  final List<int> referenceBytes;
}
