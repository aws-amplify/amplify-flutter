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

import 'package:amplify_flutter/config/analytics/analytics_config.dart';
import 'package:amplify_flutter/config/api/api_config.dart';
import 'package:amplify_flutter/config/auth/auth_config.dart';
import 'package:amplify_flutter/config/storage/storage_config.dart';

part 'amplify_config.g.dart';

class AmplifyConfig {
  String? userAgent;

  String? version;

  AnalyticsConfig? analytics;
  ApiConfig? api;
  AuthConfig? auth;
  StorageConfig? storage;

  /// Standard Constructor for AmplifyConfig class
  AmplifyConfig(
      {this.userAgent,
      this.version,
      this.analytics,
      this.api,
      this.auth,
      this.storage});

  /// AmplifyConfig factory constructor for reading json data
  factory AmplifyConfig.fromJson(Map<String, dynamic> json) =>
      _$AmplifyConfigFromJson(json);

  Map<String, dynamic> toJson() => _$AmplifyConfigToJson(this);
}
