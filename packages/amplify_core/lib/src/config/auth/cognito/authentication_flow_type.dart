// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';

enum AuthenticationFlowType {
  /// Authentication flow for the Secure Remote Password (SRP) protocol.
  @JsonValue('USER_SRP_AUTH')
  userSrpAuth('USER_SRP_AUTH'),

  /// Non-SRP authentication flow; user name and password are passed directly.
  /// If a user migration Lambda trigger is set, this flow will invoke the user
  /// migration Lambda if it doesn't find the user name in the user pool.
  @JsonValue('USER_PASSWORD_AUTH')
  userPasswordAuth('USER_PASSWORD_AUTH'),

  /// Authentication flow for custom flow which are backed by Lambda triggers.
  // TODO(dnys1): Remove at GA
  @Deprecated('Use customAuthWithSrp or customAuthWithoutSrp instead')
  @JsonValue('CUSTOM_AUTH')
  customAuth('CUSTOM_AUTH'),

  /// Authentication flow which start with SRP and then move to custom auth
  /// flow.
  @JsonValue('CUSTOM_AUTH_WITH_SRP')
  customAuthWithSrp('CUSTOM_AUTH_WITH_SRP'),

  /// Authentication flow which starts without SRP and directly moves to custom
  /// auth flow.
  @JsonValue('CUSTOM_AUTH_WITHOUT_SRP')
  customAuthWithoutSrp('CUSTOM_AUTH_WITHOUT_SRP');

  const AuthenticationFlowType(this.value);

  final String value;
}
