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

import 'package:amplify_flutter/config/auth/cognito_auth_plugin_config.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_config.g.dart';

// not using this typedef to avoid bumping sdk constraint
// typedef AWSCognitoUserPoolConfigs = Map<String, AWSCognitoUserPoolConfig>;

@JsonSerializable()
class AuthConfig {
  final Map<String, CognitoAuthPluginConfig> plugins;

  const AuthConfig(this.plugins);

  CognitoAuthPluginConfig? get awsCognitoAuthPlugin {
    return plugins['awsCognitoAuthPlugin'];
  }

  factory AuthConfig.fromJson(Map<String, dynamic> json) =>
      _$AuthConfigFromJson(json);

  Map<String, dynamic> toJson() => _$AuthConfigToJson(this);
}
