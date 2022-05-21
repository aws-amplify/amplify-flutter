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

library model_schema;

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

import 'auth_rule.dart';
import 'model_field.dart';

@immutable
class ModelSchema {
  final String name;
  final String? pluralName; //opt
  final List<AuthRule>? authRules; //opt
  final Map<String, ModelField>? fields;

  const ModelSchema({
    required this.name,
    this.pluralName,
    this.authRules,
    this.fields,
  });

  ModelSchema copyWith(
      {String? name,
      String? pluralName,
      List<AuthRule>? authRules,
      Map<String, ModelField>? fields}) {
    return ModelSchema(
        name: name ?? this.name,
        pluralName: pluralName ?? this.pluralName,
        authRules: authRules ?? this.authRules,
        fields: fields ?? this.fields);
  }

  Map<String, dynamic> toMap() {
    final map = {
      'name': name,
      'pluralName': pluralName,
      'authRules': authRules?.map((x) => x.toMap()).toList(),
      'fields': fields?.map((key, value) => MapEntry(key, value.toMap())),
    };
    return Map<String, dynamic>.from(map)
      ..removeWhere((k, dynamic v) => v == null);
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'ModelSchema(name: $name, pluralName: $pluralName, authRules: $authRules, fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final collectionEquals = const DeepCollectionEquality().equals;

    return other is ModelSchema &&
        other.name == name &&
        other.pluralName == pluralName &&
        collectionEquals(other.authRules, authRules) &&
        collectionEquals(other.fields, fields);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        pluralName.hashCode ^
        authRules.hashCode ^
        fields.hashCode;
  }
}
