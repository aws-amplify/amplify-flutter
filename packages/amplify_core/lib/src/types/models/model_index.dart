/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

/// {@template model_index}
/// Describes an index that is created by `@primaryKey` or `@index` directive,
/// and is listed in [ModelSchemaDefinition.indexes].
/// {@endtemplate}
@immutable
class ModelIndex {
  /// Index name that is defined by the name parameter of `@index` directive in
  /// a model schema. [name] will always be null when the index is representing
  /// `@primaryKey` directive.
  final String? name;

  /// An array of field names. The first field is always the field that is
  /// annotated by` @primaryKey` or `@index` directive, and the remaining
  /// fields are the fields specified by `sortKeyFields` parameter of
  /// `@primaryKey` or `@index` directive.
  final List<String> fields;

  /// {@macro model_index}
  const ModelIndex({
    required this.fields,
    this.name,
  });

  /// Make a copy of an existing [ModelIndex] instance.
  ModelIndex copyWith({
    List<String>? fields,
    String? name,
  }) =>
      ModelIndex(fields: fields ?? this.fields, name: name ?? this.name);

  /// Generate a [Map] that represents [ModelIndex].
  Map<String, dynamic> toMap() {
    final map = {
      'name': name,
      'fields': fields,
    };

    return map;
  }

  /// Create an instance of [ModelIndex] from a [Map].
  factory ModelIndex.fromMap(Map<String, dynamic> map) =>
      ModelIndex(fields: map['fields'], name: map['name']);

  /// Create an instance of [ModelIndex] from a json
  factory ModelIndex.fromJson(String source) =>
      ModelIndex.fromMap(jsonDecode(source));

  /// Generate a json string that represents [ModelIndex]
  String toJson() => jsonEncode(toMap());

  @override
  String toString() => 'ModelIndex(name: $name, fields: $fields)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    final listEquals = const DeepCollectionEquality().equals;

    return other is ModelIndex &&
        name == other.name &&
        listEquals(fields, other.fields);
  }

  @override
  int get hashCode => name.hashCode ^ fields.hashCode;
}
