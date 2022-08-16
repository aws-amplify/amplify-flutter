// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
