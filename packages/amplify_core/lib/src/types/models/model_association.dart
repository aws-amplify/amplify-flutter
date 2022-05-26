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

import 'package:aws_common/aws_common.dart';
import 'package:flutter/foundation.dart';

// ignore: constant_identifier_names
enum ModelAssociationEnum { HasMany, HasOne, BelongsTo }

@immutable
class ModelAssociation with AWSEquatable<ModelAssociation>, AWSSerializable {
  final ModelAssociationEnum associationType;
  final String? targetName; // used in belongsTo
  final List<String>? targetNames; // used in belongsTo
  final String? associatedName; // used in hasMany/hasOne
  final String? associatedType; // used in hasMany/hasOne

  const ModelAssociation({
    required this.associationType,
    @Deprecated('Please use the latest version of Amplify CLI to regenerate models')
        this.targetName,
    this.targetNames,
    this.associatedName,
    this.associatedType,
  });

  @override
  List<Object?> get props => [
        associationType,
        targetName,
        targetNames,
        associatedName,
        associatedType,
      ];

  ModelAssociation copyWith({
    ModelAssociationEnum? associationType,
    String? targetName,
    List<String>? targetNames,
    String? associatedName,
    String? associatedType,
  }) {
    return ModelAssociation(
      associationType: associationType ?? this.associationType,
      targetName: targetName ?? this.targetName,
      targetNames: targetNames ?? this.targetNames,
      associatedName: associatedName ?? this.associatedName,
      associatedType: associatedType ?? this.associatedType,
    );
  }

  Map<String, dynamic> toMap() {
    final map = {
      'associationType': describeEnum(associationType),
      'targetName': targetName,
      'targetNames': targetNames,
      'associatedName': associatedName,
      'associatedType': associatedType,
    };
    return Map<String, dynamic>.from(map)
      ..removeWhere((k, dynamic v) => v == null);
  }

  factory ModelAssociation.fromMap(Map<String, dynamic> map) {
    return ModelAssociation(
      associationType: map['associationType'],
      targetName: map['targetName'],
      targetNames: map['targetNames'],
      associatedName: map['associatedName'],
      associatedType: map['associatedType'],
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory ModelAssociation.fromJson(String source) =>
      ModelAssociation.fromMap(json.decode(source));
}
