// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'recommended_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class RecommendedTrait implements Trait<RecommendedTrait> {
  const RecommendedTrait({
    this.reason,
  });

  factory RecommendedTrait.fromJson(Object? json) =>
      _$RecommendedTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId.core('recommended');

  final String? reason;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [reason];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$RecommendedTraitToJson(this);

  @override
  RecommendedTrait get value => this;
}
