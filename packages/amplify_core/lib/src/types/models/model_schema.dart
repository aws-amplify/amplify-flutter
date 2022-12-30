// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library model_schema;

import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

import 'auth_rule.dart';
import 'model_field.dart';
import 'model_index.dart';

@immutable
class ModelSchema with AWSEquatable<ModelSchema> {
  final String name;
  final String? pluralName;
  final List<AuthRule>? authRules;
  final Map<String, ModelField>? fields;
  final List<ModelIndex>? indexes;

  const ModelSchema({
    required this.name,
    this.pluralName,
    this.authRules,
    this.fields,
    this.indexes,
  });

  ModelSchema copyWith({
    String? name,
    String? pluralName,
    List<AuthRule>? authRules,
    Map<String, ModelField>? fields,
    List<ModelIndex>? indexes,
  }) {
    return ModelSchema(
      name: name ?? this.name,
      pluralName: pluralName ?? this.pluralName,
      authRules: authRules ?? this.authRules,
      fields: fields ?? this.fields,
      indexes: indexes ?? this.indexes,
    );
  }

  @override
  List<Object?> get props => [
        name,
        pluralName,
        authRules,
        fields,
        indexes,
      ];

  Map<String, Object?> toMap() => {
        'name': name,
        if (pluralName != null) 'pluralName': pluralName,
        if (authRules != null)
          'authRules': authRules?.map((x) => x.toMap()).toList(),
        if (fields != null)
          'fields': fields?.map((key, value) => MapEntry(key, value.toMap())),
        if (indexes != null)
          'indexes': indexes?.map((value) => value.toJson()).toList(),
      };

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'ModelSchema(name: $name, pluralName: $pluralName, authRules: $authRules, fields: $fields, indexes: $indexes)';
  }
}
