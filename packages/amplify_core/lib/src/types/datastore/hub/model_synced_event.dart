// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

class ModelSyncedEvent extends DataStoreHubEventPayload {
  ModelSyncedEvent(Map<dynamic, dynamic> serializedData)
      : modelName = serializedData['model'] as String,
        isFullSync = serializedData['isFullSync'] as bool,
        isDeltaSync = serializedData['isDeltaSync'] as bool,
        added = serializedData['added'] as int,
        updated = serializedData['updated'] as int,
        deleted = serializedData['deleted'] as int;

  final String modelName;
  final bool isFullSync;
  final bool isDeltaSync;
  final int added;
  final int updated;
  final int deleted;
}
