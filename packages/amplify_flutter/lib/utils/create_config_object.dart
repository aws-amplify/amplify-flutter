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

import 'dart:convert';

import 'package:amplify_flutter/categories/amplify_categories.dart';
import 'package:amplify_flutter/src/config/amplify_config.dart';

/// Returns an AmplifyConfig object populated only with plugin data
/// where plugins have been successfully added.
AmplifyConfig createConfigObject(String configuration) {
  /// Create full object based on JSON string
  var uncheckedConfig = AmplifyConfig.fromJson(jsonDecode(configuration));

  /// Creates empty object
  var validatedConfig = AmplifyConfig();
  validatedConfig.userAgent = uncheckedConfig.userAgent;
  validatedConfig.version = uncheckedConfig.version;

  /// Selectively populate object based on successful plugin registration
  if (AnalyticsCategory.plugins.isNotEmpty) {
    validatedConfig.analytics = uncheckedConfig.analytics;
  }

  if (APICategory.plugins.isNotEmpty) {
    validatedConfig.api = uncheckedConfig.api;
  }

  if (AuthCategory.plugins.isNotEmpty) {
    validatedConfig.auth = uncheckedConfig.auth;
  }

  if (StorageCategory.plugins.isNotEmpty) {
    validatedConfig.storage = uncheckedConfig.storage;
  }

  return validatedConfig;
}
