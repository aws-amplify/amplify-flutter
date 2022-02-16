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

import 'package:collection/collection.dart';

class ModelIndex {
  final String? name;
  final List<String> fields;

  const ModelIndex({
    required this.fields,
    this.name = null,
  });

  ModelIndex copyWith({
    List<String>? fields,
    String? name,
  }) =>
      ModelIndex(fields: fields ?? this.fields, name: name ?? this.name);

  Map<String, dynamic> toMap() => ({
        'name': name,
        'fields': fields,
      });

  factory ModelIndex.fromMap(Map<String, dynamic> map) =>
      ModelIndex(fields: map['fields'], name: map['name']);

  factory ModelIndex.fromJson(String source) =>
      ModelIndex.fromMap(jsonDecode(source));

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
