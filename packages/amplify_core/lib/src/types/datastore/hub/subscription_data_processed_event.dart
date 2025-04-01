// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

class SubscriptionDataProcessedEvent<M extends Model>
    extends DataStoreHubEventPayload {
  SubscriptionDataProcessedEvent(
    Map<String, Object?> serializedData,
    ModelProviderInterface provider,
  )   : element = HubEventElementWithMetadata.fromMap(serializedData, provider),
        modelName = serializedData['modelName'] as String;

  final HubEventElementWithMetadata<M> element;
  final String modelName;
}
