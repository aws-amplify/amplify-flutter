// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';

class SyncQueriesStartedEvent extends DataStoreHubEventPayload {
  final List<String> models;
  SyncQueriesStartedEvent(Map<dynamic, dynamic> serializedData)
      : models = List<String>.from(
          jsonDecode(serializedData['models'] as String) as List,
        );
}
