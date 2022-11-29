//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

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
