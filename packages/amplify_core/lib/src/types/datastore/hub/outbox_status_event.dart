// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

class OutboxStatusEvent extends DataStoreHubEventPayload {
  late bool isEmpty;
  OutboxStatusEvent(Map<dynamic, dynamic> serializedData) {
    isEmpty = serializedData['isEmpty'] as bool;
  }
}
