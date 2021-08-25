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

import 'package:json_annotation/json_annotation.dart';

part 'oauth_config.g.dart';

@JsonSerializable()
class OAuthConfig {
  @JsonKey(name: 'WebDomain')
  final String webDomain;

  @JsonKey(name: 'AppClientId')
  final String appClientId;

  @JsonKey(name: 'SignInRedirectURI')
  final String signInRedirectURI;

  @JsonKey(name: 'SignOutRedirectURI')
  final String signOutRedirectURI;

  @JsonKey(name: 'Scopes')
  final List<String> scopes;

  const OAuthConfig(
      {required this.webDomain,
      required this.appClientId,
      required this.signInRedirectURI,
      required this.signOutRedirectURI,
      required this.scopes});

  factory OAuthConfig.fromJson(Map<String, dynamic> json) =>
      _$OAuthConfigFromJson(json);

  Map<String, dynamic> toJson() => _$OAuthConfigToJson(this);
}
