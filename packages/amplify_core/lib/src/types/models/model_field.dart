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

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

import 'auth_rule.dart';
import 'model_association.dart';
import 'model_field_type.dart';

@immutable
class ModelField {
  // Name of the field is the name of the instance variable
  // of the Model class.
  final String name;

  // Type of the field is the data type of the instance variables
  // of the Model class.
  final ModelFieldType type;

  // If the field is a required or an optional field
  final bool isRequired;

  final bool isArray;

  final bool isReadOnly;

  final ModelAssociation? association; //opt

  // An array of rules for owner based authorization
  final List<AuthRule>? authRules;

  const ModelField(
      {required this.name,
      required this.type,
      required this.isRequired,
      this.isArray = false,
      this.isReadOnly = false,
      this.association,
      this.authRules});

  ModelField copyWith({
    String? name,
    ModelFieldType? type,
    bool? isRequired,
    bool? isArray,
    bool? isReadOnly,
    ModelAssociation? association,
    List<AuthRule>? authRules,
  }) {
    return ModelField(
      name: name ?? this.name,
      type: type ?? this.type,
      isRequired: isRequired ?? this.isRequired,
      isArray: isArray ?? this.isArray,
      isReadOnly: isReadOnly ?? this.isReadOnly,
      association: association ?? this.association,
      authRules: authRules ?? this.authRules,
    );
  }

  Map<String, dynamic> toMap() {
    final map = {
      'name': name,
      'type': type.toMap(),
      'isRequired': isRequired,
      'isArray': isArray,
      'isReadOnly': isReadOnly,
      'association': association?.toMap(),
      'authRules': authRules?.map((x) => x.toMap()).toList(),
    };
    return Map<String, dynamic>.from(map)
      ..removeWhere((k, dynamic v) => v == null);
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'ModelField(name: $name, type: $type, isRequired: $isRequired, isArray: $isArray, isReadOnly: $isReadOnly, association: $association, authRules: $authRules)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is ModelField &&
        other.name == name &&
        other.type == type &&
        other.isRequired == isRequired &&
        other.isArray == isArray &&
        other.isReadOnly == isReadOnly &&
        listEquals(other.authRules, authRules);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        type.hashCode ^
        isRequired.hashCode ^
        isArray.hashCode ^
        isReadOnly.hashCode ^
        authRules.hashCode;
  }
}
