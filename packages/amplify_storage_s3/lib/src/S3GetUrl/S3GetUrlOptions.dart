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

import 'package:flutter/foundation.dart';
import 'package:amplify_storage_plugin_interface/amplify_storage_plugin_interface.dart';

class S3GetUrlOptions extends GetUrlOptions {
  String targetIdentityId;
  S3GetUrlOptions(
      {StorageAccessLevel accessLevel = StorageAccessLevel.guest,
      int expires,
      this.targetIdentityId})
      : super(accessLevel: accessLevel, expires: expires);

  @override
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> optionsMap = <String, dynamic>{};

    optionsMap["accessLevel"] = describeEnum(accessLevel);

    if (expires != null) {
      optionsMap["expires"] = expires;
    }

    if (targetIdentityId != null) {
      optionsMap["targetIdentityId"] = targetIdentityId;
    }
    return optionsMap;
  }
}
