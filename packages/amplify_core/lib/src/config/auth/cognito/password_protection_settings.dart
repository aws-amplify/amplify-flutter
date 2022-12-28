// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'password_protection_settings.g.dart';

@zAmplifySerializable
@_PasswordPolicyMinLengthConverter()
class PasswordProtectionSettings
    with AWSEquatable<PasswordProtectionSettings>, AWSSerializable {
  const PasswordProtectionSettings({
    this.passwordPolicyMinLength,
    this.passwordPolicyCharacters = const [],
  });

  final int? passwordPolicyMinLength;
  final List<PasswordPolicyCharacters> passwordPolicyCharacters;

  @override
  List<Object?> get props => [
        passwordPolicyMinLength,
        passwordPolicyCharacters,
      ];

  factory PasswordProtectionSettings.fromJson(Map<String, Object?> json) =>
      _$PasswordProtectionSettingsFromJson(json);

  PasswordProtectionSettings copyWith({
    int? passwordPolicyMinLength,
    List<PasswordPolicyCharacters>? passwordPolicyCharacters,
  }) {
    return PasswordProtectionSettings(
      passwordPolicyMinLength:
          passwordPolicyMinLength ?? this.passwordPolicyMinLength,
      passwordPolicyCharacters:
          passwordPolicyCharacters ?? List.of(this.passwordPolicyCharacters),
    );
  }

  @override
  Map<String, Object?> toJson() => _$PasswordProtectionSettingsToJson(this);
}

enum PasswordPolicyCharacters {
  @JsonValue('REQUIRES_LOWERCASE')
  requiresLowercase,

  @JsonValue('REQUIRES_UPPERCASE')
  requiresUppercase,

  @JsonValue('REQUIRES_NUMBERS')
  requiresNumbers,

  @JsonValue('REQUIRES_SYMBOLS')
  requiresSymbols
}

class _PasswordPolicyMinLengthConverter
    implements JsonConverter<int?, Object?> {
  const _PasswordPolicyMinLengthConverter();

  @override
  int? fromJson(Object? json) {
    if (json == null) {
      return null;
    }
    if (json is String) {
      return int.tryParse(json);
    }
    return json as int;
  }

  @override
  Object? toJson(int? object) {
    return object;
  }
}
