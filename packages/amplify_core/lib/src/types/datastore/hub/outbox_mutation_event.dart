// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

class OutboxMutationEvent extends DataStoreHubEventPayload {
  OutboxMutationEvent(
    Map<String, Object?> serializedData,
    ModelProviderInterface provider,
    String eventName,
  )   : element = eventName == 'outboxMutationEnqueued'
            ? HubEventElement.fromMap(serializedData, provider)
            : HubEventElementWithMetadata.fromMap(serializedData, provider),
        modelName = serializedData['modelName'] as String;

  final HubEventElement element;
  final String modelName;
}
