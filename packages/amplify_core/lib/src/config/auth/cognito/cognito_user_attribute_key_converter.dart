// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';

class CognitoUserAttributeKeyConverter
    extends JsonConverter<CognitoUserAttributeKey, String> {
  const CognitoUserAttributeKeyConverter();

  @override
  CognitoUserAttributeKey fromJson(String json) {
    return CognitoUserAttributeKey.parse(json);
  }

  @override
  String toJson(CognitoUserAttributeKey object) {
    return object.key.toUpperCase();
  }
}

class CognitoUserAttributeMapConverter
    implements
        JsonConverter<Map<CognitoUserAttributeKey, String>,
            Map<String, String>> {
  const CognitoUserAttributeMapConverter();

  @override
  Map<CognitoUserAttributeKey, String> fromJson(Map<String, String> json) =>
      json.map(
        (key, value) => MapEntry(CognitoUserAttributeKey.parse(key), value),
      );

  @override
  Map<String, String> toJson(Map<CognitoUserAttributeKey, String> object) =>
      object.map(
        (key, value) => MapEntry(key.toJson(), value),
      );
}
