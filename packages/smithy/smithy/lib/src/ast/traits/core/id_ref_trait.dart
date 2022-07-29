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

part 'id_ref_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class IdRefTrait implements Trait<IdRefTrait> {
  const IdRefTrait({
    this.selector = '*',
    required this.failWhenMissing,
    this.errorMessage,
  });

  factory IdRefTrait.fromJson(Object? json) =>
      _$IdRefTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId.core('idRef');

  final String selector;
  final bool failWhenMissing;
  final String? errorMessage;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [selector, failWhenMissing, errorMessage];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$IdRefTraitToJson(this);

  @override
  IdRefTrait get value => this;
}
