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

import 'auth_rule.dart';

class ModelField {
  // Name of the field is the name of the instance variable
  // of the Model class.
  final String name;

  // Type of the field is the data type of the instance variables
  // of the Model class.
  final String type;

  // The type of the field in the target. For example: type of the
  // field in the GraphQL target.
  final String targetType;

  // If the field is a required or an optional field
  final bool isRequired;

  // If the field is an array targetType. False if it is a primitive
  // targetType and True if it is an array targetType.
  final bool isArray;

  // True if the field is an enumeration type.
  final bool isEnum;

  // True if the field is an instance of model.
  final bool isModel;

  // An array of rules for owner based authorization
  final List<AuthRule> authRules;

  const ModelField(
      {this.name,
      this.type,
      this.targetType,
      this.isRequired,
      this.isArray,
      this.isEnum,
      this.isModel,
      this.authRules});

  ModelField copyWith({
    String name,
    String type,
    String targetType,
    bool isRequired,
    bool isArray,
    bool isEnum,
    bool isModel,
    List<AuthRule> authRules,
  }) {
    return ModelField(
      name: name ?? this.name,
      type: type ?? this.type,
      targetType: targetType ?? this.targetType,
      isRequired: isRequired ?? this.isRequired,
      isArray: isArray ?? this.isArray,
      isEnum: isEnum ?? this.isEnum,
      isModel: isModel ?? this.isModel,
      authRules: authRules ?? this.authRules,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'type': type,
      'targetType': targetType,
      'isRequired': isRequired,
      'isArray': isArray,
      'isEnum': isEnum,
      'isModel': isModel,
      'authRules': authRules?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory ModelField.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ModelField(
      name: map['name'],
      type: map['type'],
      targetType: map['targetType'],
      isRequired: map['isRequired'],
      isArray: map['isArray'],
      isEnum: map['isEnum'],
      isModel: map['isModel'],
      authRules: List<AuthRule>.from(
          map['authRules']?.map((x) => AuthRule.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelField.fromJson(String source) =>
      ModelField.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ModelField(name: $name, type: $type, targetType: $targetType, isRequired: $isRequired, isArray: $isArray, isEnum: $isEnum, isModel: $isModel, authRules: $authRules)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return o is ModelField &&
        o.name == name &&
        o.type == type &&
        o.targetType == targetType &&
        o.isRequired == isRequired &&
        o.isArray == isArray &&
        o.isEnum == isEnum &&
        o.isModel == isModel &&
        listEquals(o.authRules, authRules);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        type.hashCode ^
        targetType.hashCode ^
        isRequired.hashCode ^
        isArray.hashCode ^
        isEnum.hashCode ^
        isModel.hashCode ^
        authRules.hashCode;
  }
}
