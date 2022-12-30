// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'range_trait.g.dart';

/// Constrains a shape to minimum and maximum numeric range.
@ShapeIdConverter()
@JsonSerializable()
class RangeTrait implements Trait<RangeTrait> {
  const RangeTrait({
    this.min,
    this.max,
  });

  factory RangeTrait.fromJson(Object? json) =>
      _$RangeTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId.core('range');

  final double? min; // TODO(dnys1): BigDecimal
  final double? max; // TODO(dnys1): BigDecimal

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [min, max];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$RangeTraitToJson(this);

  @override
  RangeTrait get value => this;
}
