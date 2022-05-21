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

// ignore: constant_identifier_names
enum ModelAssociationEnum { HasMany, HasOne, BelongsTo }

@immutable
class ModelAssociation {
  final ModelAssociationEnum associationType;
  final String? targetName; // opt (used in belongsTo)
  final String? associatedName; // opt (used in hasMany/hasOne)
  final String? associatedType; // opt (used in hasMany/hasOne)

  const ModelAssociation({
    required this.associationType,
    this.targetName,
    this.associatedName,
    this.associatedType,
  });

  ModelAssociation copyWith({
    ModelAssociationEnum? associationType,
    String? targetName,
    String? associatedName,
    String? associatedType,
  }) {
    return ModelAssociation(
      associationType: associationType ?? this.associationType,
      targetName: targetName ?? this.targetName,
      associatedName: associatedName ?? this.associatedName,
      associatedType: associatedType ?? this.associatedType,
    );
  }

  Map<String, dynamic> toMap() {
    final map = {
      'associationType': describeEnum(associationType),
      'targetName': targetName,
      'associatedName': associatedName,
      'associatedType': associatedType,
    };
    return Map<String, dynamic>.from(map)
      ..removeWhere((k, dynamic v) => v == null);
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'ModelAssociation(associationType: $associationType, targetName: $targetName, associatedName: $associatedName, associatedType: $associatedType)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ModelAssociation &&
        other.associationType == associationType &&
        other.targetName == targetName &&
        other.associatedName == associatedName &&
        other.associatedType == associatedType;
  }

  @override
  int get hashCode {
    return associationType.hashCode ^
        targetName.hashCode ^
        associatedName.hashCode ^
        associatedType.hashCode;
  }
}
