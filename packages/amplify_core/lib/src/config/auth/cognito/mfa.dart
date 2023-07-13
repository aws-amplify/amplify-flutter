// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';

part 'mfa.g.dart';

@JsonEnum(alwaysCreate: true)
enum MfaType {
  @JsonValue('SMS')
  sms,

  @JsonValue('TOTP')
  totp;

  static MfaType fromJson(String json) => _$MfaTypeEnumMap.entries
      .firstWhere((el) => json == el.value || json == el.key.name)
      .key;
}

@JsonEnum(alwaysCreate: true)
enum MfaConfiguration {
  @JsonValue('OPTIONAL')
  optional,

  @JsonValue('ON')
  on,

  @JsonValue('OFF')
  off;

  static MfaConfiguration fromJson(String json) =>
      _$MfaConfigurationEnumMap.entries
          .firstWhere((el) => json == el.value || json == el.key.name)
          .key;
}
