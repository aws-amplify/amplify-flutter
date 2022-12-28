// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

class ApiHubEvent extends HubEvent<ApiHubEventPayload> {
  ApiHubEvent(
    super.eventName, {
    super.payload,
  });
}

abstract class ApiHubEventPayload {
  const ApiHubEventPayload();
}
