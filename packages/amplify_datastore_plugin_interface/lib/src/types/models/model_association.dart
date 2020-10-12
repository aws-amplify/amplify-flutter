import 'dart:convert';

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

class ModelAssociation {
  final String name;
  final String targetName;
  final String associatedName;
  final String associatedType;

  const ModelAssociation({
    this.name,
    this.targetName,
    this.associatedName,
    this.associatedType,
  });

  ModelAssociation copyWith({
    String name,
    String targetName,
    String associatedName,
    String associatedType,
  }) {
    return ModelAssociation(
      name: name ?? this.name,
      targetName: targetName ?? this.targetName,
      associatedName: associatedName ?? this.associatedName,
      associatedType: associatedType ?? this.associatedType,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'targetName': targetName,
      'associatedName': associatedName,
      'associatedType': associatedType,
    };
  }

  factory ModelAssociation.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ModelAssociation(
      name: map['name'],
      targetName: map['targetName'],
      associatedName: map['associatedName'],
      associatedType: map['associatedType'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelAssociation.fromJson(String source) =>
      ModelAssociation.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ModelAssociation(name: $name, targetName: $targetName, associatedName: $associatedName, associatedType: $associatedType)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ModelAssociation &&
        o.name == name &&
        o.targetName == targetName &&
        o.associatedName == associatedName &&
        o.associatedType == associatedType;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        targetName.hashCode ^
        associatedName.hashCode ^
        associatedType.hashCode;
  }
}
