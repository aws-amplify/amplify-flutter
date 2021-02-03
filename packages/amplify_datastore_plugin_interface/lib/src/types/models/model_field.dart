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

import 'auth_rule.dart';
import 'model_association.dart';
import 'model_field_type.dart';

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

  // An array of rules for owner based authorization
  final List<AuthRule> authRules;

  final ModelAssociation association; //opt

  const ModelField(
      {this.name,
      this.type,
      this.isRequired,
      this.isArray = false,
      this.association,
      this.authRules});

  ModelField copyWith({
    String name,
    String type,
    bool isRequired,
    bool isArray,
    ModelAssociation association,
    List<AuthRule> authRules,
  }) {
    return ModelField(
      name: name ?? this.name,
      type: type ?? this.type,
      isRequired: isRequired ?? this.isRequired,
      isArray: isArray ?? this.isArray,
      association: association ?? this.association,
      authRules: authRules ?? this.authRules,
    );
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'name': name,
      'type': type.toMap(),
      'isRequired': isRequired,
      'isArray': isArray,
      'association': association?.toMap(),
      'authRules': authRules?.map((x) => x?.toMap())?.toList(),
    };
    return Map.from(map)..removeWhere((k, v) => v == null);
  }

  factory ModelField.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ModelField(
      name: map['name'],
      type: map['type'],
      isRequired: map['isRequired'],
      isArray: map['isArray'],
      association:
          map['association'] ?? ModelAssociation.fromMap(map['association']),
      authRules: map['authRules'] ??
          List<AuthRule>.from(
              map['authRules']?.map((x) => AuthRule.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelField.fromJson(String source) =>
      ModelField.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ModelField(name: $name, type: $type, isRequired: $isRequired, isArray: $isArray, association: $association, authRules: $authRules)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return o is ModelField &&
        o.name == name &&
        o.type == type &&
        o.isRequired == isRequired &&
        o.isArray == isArray &&
        listEquals(o.authRules, authRules);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        type.hashCode ^
        isRequired.hashCode ^
        isArray.hashCode ^
        authRules.hashCode;
  }
}
