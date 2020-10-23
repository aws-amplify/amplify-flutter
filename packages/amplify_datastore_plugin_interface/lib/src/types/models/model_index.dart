/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
  /// Name of the field is the name of the instance variable
  /// of the Model class.
  final String name;

  /// Specify the array of fields of a Model
  /// for which indexes need to be created in the persistent store.
  final List<String> fields;

  const ModelIndex({
    this.name,
    this.fields,
  });

  ModelIndex copyWith({
    String name,
    List<String> fields,
  }) {
    return ModelIndex(
      name: name ?? this.name,
      fields: fields ?? this.fields,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'fields': fields,
    };
  }

  factory ModelIndex.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ModelIndex(
      name: map['name'],
      fields: List<String>.from(map['fields']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelIndex.fromJson(String source) =>
      ModelIndex.fromMap(json.decode(source));

  @override
  String toString() => 'ModelIndex(name: $name, fields: $fields)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return o is ModelIndex && o.name == name && listEquals(o.fields, fields);
  }

  @override
  int get hashCode => name.hashCode ^ fields.hashCode;
}
