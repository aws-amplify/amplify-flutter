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

part 'api_plugin.g.dart';

class APIPlugin {
  final String? endpointType;

  final String? endpoint;

  final String? region;

  final String? authorizationType;

  final String? apiKey;

  const APIPlugin(
      {required this.endpointType,
      required this.endpoint,
      required this.region,
      required this.authorizationType,
      this.apiKey});

  factory APIPlugin.fromJson(Map<String, dynamic> json) =>
      _$APIPluginFromJson(json);

  Map<String, dynamic> toJson() => _$APIPluginToJson(this);
}
