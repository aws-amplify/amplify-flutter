// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

class OutboxMutationEvent extends DataStoreHubEventPayload {
  late HubEventElement element;
  late String modelName;

  OutboxMutationEvent(Map<dynamic, dynamic> serializedData,
      ModelProviderInterface provider, String eventName) {
    element = eventName == 'outboxMutationEnqueued'
        ? HubEventElement.fromMap(serializedData, provider)
        : HubEventElementWithMetadata.fromMap(serializedData, provider);
    modelName = serializedData['modelName'] as String;
  }
}
