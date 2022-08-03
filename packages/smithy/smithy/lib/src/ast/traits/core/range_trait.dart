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
