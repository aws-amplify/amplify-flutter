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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'HubEventElement.dart';

class HubEventElementWithMetadata extends HubEventElement {
  late final int version;
  late final int lastChangedAt;
  late final bool? deleted;

  HubEventElementWithMetadata(
    Map serializedData,
    ModelProviderInterface provider,
  ) : super(serializedData, provider) {
    var serializedElement = serializedData['element'] as Map;
    var metadata = serializedElement['syncMetadata'] as Map;
    version = metadata['_version'] as int;
    lastChangedAt = metadata['_lastChangedAt'] as int;
    deleted = metadata['_deleted'] as bool?;
  }
}
