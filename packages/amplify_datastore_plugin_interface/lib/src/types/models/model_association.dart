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

import 'package:flutter/foundation.dart';

enum ModelAssociationEnum { HasMany, HasOne, BelongsTo }

class ModelAssociation {
  final ModelAssociationEnum associationType;
  final String targetName; // opt (used in belongsTo)
  final String associatedName; // opt (used in hasMany/hasOne)
  final String associatedType; // opt (used in hasMany/hasOne)

  const ModelAssociation({
    this.associationType,
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
      associationType: associationType ?? this.associationType,
      targetName: targetName ?? this.targetName,
      associatedName: associatedName ?? this.associatedName,
      associatedType: associatedType ?? this.associatedType,
    );
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'associationType': describeEnum(associationType),
      'targetName': targetName,
      'associatedName': associatedName,
      'associatedType': associatedType,
    };
    return Map.from(map)..removeWhere((k, v) => v == null);
  }

  factory ModelAssociation.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ModelAssociation(
      associationType: map['associationType'],
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
    return 'ModelAssociation(associationType: $associationType, targetName: $targetName, associatedName: $associatedName, associatedType: $associatedType)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ModelAssociation &&
        o.associationType == associationType &&
        o.targetName == targetName &&
        o.associatedName == associatedName &&
        o.associatedType == associatedType;
  }

  @override
  int get hashCode {
    return associationType.hashCode ^
        targetName.hashCode ^
        associatedName.hashCode ^
        associatedType.hashCode;
  }
}
