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

import 'package:amplify_datastore/types/DataStoreHubEvents/HubEventElementWithMetadata.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:amplify_core/types/hub/HubEventPayload.dart';
import 'HubEventElement.dart';

class OutboxMutationEvent extends HubEventPayload {
  HubEventElement element;
  String modelName;

  OutboxMutationEvent(Map<dynamic, dynamic> serializedData, ModelProviderInterface provider, String eventName) {
    element = eventName == "outboxMutationEnqueued" ? HubEventElement(serializedData, provider) : HubEventElementWithMetadata(serializedData, provider) ;
    modelName = serializedData["modelName"] as String;
  }
}
