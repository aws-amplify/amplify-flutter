/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_flutter/src/config/storage/storage_plugin.dart';

part 'storage_config.g.dart';

class StorageConfig {
  final Map<String, StoragePlugin> plugins;

  const StorageConfig(this.plugins);

  StoragePlugin? get awsS3StoragePlugin {
    return plugins['awsS3StoragePlugin'];
  }

  factory StorageConfig.fromJson(Map<String, dynamic> json) =>
      _$StorageConfigFromJson(json);

  Map<String, dynamic> toJson() => _$StorageConfigToJson(this);
}
