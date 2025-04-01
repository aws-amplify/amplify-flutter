// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

// ignore: constant_identifier_names
enum ModelAssociationEnum { HasMany, HasOne, BelongsTo }

@immutable
class ModelAssociation with AWSEquatable<ModelAssociation>, AWSSerializable {
  // used in hasMany/hasOne

  const ModelAssociation({
    required this.associationType,
    this.targetNames,
    this.associatedName,
    this.associatedType,
  });

  final ModelAssociationEnum associationType;
  final List<String>? targetNames; // used in belongsTo
  final String? associatedName; // used in hasMany/hasOne
  final String? associatedType;

  @override
  List<Object?> get props => [
        associationType,
        targetNames,
        associatedName,
        associatedType,
      ];

  ModelAssociation copyWith({
    ModelAssociationEnum? associationType,
    List<String>? targetNames,
    String? associatedName,
    String? associatedType,
  }) {
    return ModelAssociation(
      associationType: associationType ?? this.associationType,
      targetNames: targetNames ?? this.targetNames,
      associatedName: associatedName ?? this.associatedName,
      associatedType: associatedType ?? this.associatedType,
    );
  }

  Map<String, dynamic> toMap() {
    final map = {
      'associationType': associationType.name,
      'targetNames': targetNames,
      'associatedName': associatedName,
      'associatedType': associatedType,
    };
    return Map<String, dynamic>.from(map)
      ..removeWhere((k, dynamic v) => v == null);
  }

  @override
  String toJson() => json.encode(toMap());
}
