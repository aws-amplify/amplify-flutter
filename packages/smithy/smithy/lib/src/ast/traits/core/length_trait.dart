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

part 'length_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class LengthTrait implements Trait<LengthTrait> {
  const LengthTrait({
    this.min,
    this.max,
  });

  factory LengthTrait.fromJson(Object? json) =>
      _$LengthTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId.core('length');

  final int? min;
  final int? max;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [min, max];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$LengthTraitToJson(this);

  @override
  LengthTrait get value => this;
}
