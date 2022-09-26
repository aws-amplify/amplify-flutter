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

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

import 'mipr.dart';

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
          'authRules': authRules?.map((x) => x.toJson()).toList(),
        if (fields != null)
          'fields': fields?.map((key, value) => MapEntry(key, value.toJson())),
        if (indexes != null)
          'indexes': indexes?.map((value) => value.toJson()).toList(),
      };

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'ModelSchema(name: $name, pluralName: $pluralName, authRules: $authRules, fields: $fields, indexes: $indexes)';
  }
}
