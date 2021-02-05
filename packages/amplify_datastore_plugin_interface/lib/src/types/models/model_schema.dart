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

import 'auth_rule.dart';
import 'model_association.dart';
import 'model_field.dart';
import 'dart:convert';

import 'package:collection/collection.dart';

class ModelSchema {
  final String name;
  final String pluralName; //opt
  final List<AuthRule> authRules; //opt
  final Map<String, ModelField> fields;

  const ModelSchema({
    this.name,
    this.pluralName,
    this.authRules,
    this.fields,
  });

  ModelSchema copyWith(
      {String name,
      String pluralName,
      List<AuthRule> authRules,
      Map<String, ModelField> fields}) {
    return ModelSchema(
        name: name ?? this.name,
        pluralName: pluralName ?? this.pluralName,
        authRules: authRules ?? this.authRules,
        fields: fields ?? this.fields);
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'name': name,
      'pluralName': pluralName,
      'authRules': authRules?.map((x) => x?.toMap())?.toList(),
      'fields': fields?.map((key, value) => MapEntry('$key', value.toMap())),
    };
    return Map.from(map)..removeWhere((k, v) => v == null);
  }

  factory ModelSchema.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ModelSchema(
      name: map['name'],
      pluralName: map['pluralName'],
      authRules: List<AuthRule>.from(
          map['authRules']?.map((x) => AuthRule.fromMap(x))),
      fields: Map<String, ModelField>.from(map['fields']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelSchema.fromJson(String source) =>
      ModelSchema.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ModelSchema(name: $name, pluralName: $pluralName, authRules: $authRules, fields: $fields)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    final collectionEquals = const DeepCollectionEquality().equals;

    return o is ModelSchema &&
        o.name == name &&
        o.pluralName == pluralName &&
        collectionEquals(o.authRules, authRules) &&
        collectionEquals(o.fields, fields);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        pluralName.hashCode ^
        authRules.hashCode ^
        fields.hashCode;
  }
}
