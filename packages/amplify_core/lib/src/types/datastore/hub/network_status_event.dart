// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

class NetworkStatusEvent extends DataStoreHubEventPayload {
  NetworkStatusEvent(Map<dynamic, dynamic> serializedData)
      : active = serializedData['active'] as bool;

  final bool active;
}
