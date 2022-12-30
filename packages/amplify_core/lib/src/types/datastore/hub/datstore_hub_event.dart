// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

class DataStoreHubEvent extends HubEvent<DataStoreHubEventPayload> {
  DataStoreHubEvent(
    super.eventName, {
    super.payload,
  });
}

abstract class DataStoreHubEventPayload {
  const DataStoreHubEventPayload();
}
