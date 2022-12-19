// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'references_trait.g.dart';

/// Defines references to resources within a structure.
@ShapeIdConverter()
@JsonSerializable()
class ReferencesTrait implements Trait<ReferencesTrait> {
  const ReferencesTrait(this.references);

  factory ReferencesTrait.fromJson(Object? json) =>
      _$ReferencesTraitFromJson(<String, Object?>{'references': json});

  static const id = ShapeId.core('references');

  final List<ResourceReference> references;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [references];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$ReferencesTraitToJson(this);

  @override
  ReferencesTrait get value => this;
}

/// Reference to a resource.
@ShapeIdConverter()
@JsonSerializable()
class ResourceReference {
  const ResourceReference({
    required this.resource,
    this.service,
    this.ids = const {},
    this.rel,
  });

  factory ResourceReference.fromJson(Map<String, Object?> json) =>
      _$ResourceReferenceFromJson(json);

  final ShapeId resource;
  final Map<String, String> ids;
  final ShapeId? service;
  final String? rel;

  Map<String, Object?> toJson() => _$ResourceReferenceToJson(this);
}
