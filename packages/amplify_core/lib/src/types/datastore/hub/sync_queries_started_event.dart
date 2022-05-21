/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'dart:convert';
import 'package:amplify_core/amplify_core.dart';

class SyncQueriesStartedEvent extends HubEventPayload {
  final List<String> models;
  SyncQueriesStartedEvent(Map<dynamic, dynamic> serializedData)
      : models = List<String>.from(
          jsonDecode(serializedData['models'] as String) as List,
        );
}
