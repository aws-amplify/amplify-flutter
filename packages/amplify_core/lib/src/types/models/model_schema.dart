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

import 'auth_rule.dart';
import 'model_field.dart';
import 'model_index.dart';

class ModelSchema {
  final String name;
  final String? pluralName; //opt
  final List<AuthRule>? authRules; //opt
  final Map<String, ModelField>? fields;
  final List<ModelIndex>? indexes;
  final ModelIndex? primaryKey;

  const ModelSchema({
    required this.name,
    this.pluralName,
    this.authRules,
    this.fields,
    this.indexes,
    this.primaryKey,
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
      fields: fields ?? this.fields,
      indexes: indexes ?? this.indexes,
      primaryKey: primaryKey ?? this.primaryKey,
    );
  }

  Map<String, dynamic> toMap() {
    final map = {
      'name': name,
      'pluralName': pluralName,
      'authRules': authRules?.map((x) => x.toMap()).toList(),
      'fields': fields?.map((key, value) => MapEntry('$key', value.toMap())),
      'indexes': indexes?.map((value) => value.toMap()).toList(),
      'primaryKey': primaryKey?.toMap(),
    };
    return Map<String, dynamic>.from(map)
      ..removeWhere((k, dynamic v) => v == null);
  }

  factory ModelSchema.fromMap(Map<String, dynamic> map) {
    return ModelSchema(
      name: map['name'],
      pluralName: map['pluralName'],
      authRules: List<AuthRule>.from(
          map['authRules']?.map((dynamic x) => AuthRule.fromMap(x))),
      fields: Map<String, ModelField>.from(map['fields']),
      indexes: List<ModelIndex>.from(map['indexes']),
      primaryKey: ModelIndex.fromMap(map['primaryKey']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelSchema.fromJson(String source) =>
      ModelSchema.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ModelSchema(name: $name, pluralName: $pluralName, authRules: $authRules, fields: $fields, indexes: $indexes, primaryKey: $primaryKey)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    final collectionEquals = const DeepCollectionEquality().equals;

    return o is ModelSchema &&
        o.name == name &&
        o.pluralName == pluralName &&
        collectionEquals(o.authRules, authRules) &&
        collectionEquals(o.fields, fields) &&
        collectionEquals(o.indexes, indexes) &&
        collectionEquals(o.primaryKey, primaryKey);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        pluralName.hashCode ^
        authRules.hashCode ^
        fields.hashCode ^
        indexes.hashCode ^
        primaryKey.hashCode;
  }
}
