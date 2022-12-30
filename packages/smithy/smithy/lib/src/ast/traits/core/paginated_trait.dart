// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'paginated_trait.g.dart';

/// Defines the pagination functionality of an operation.
@ShapeIdConverter()
@JsonSerializable()
class PaginatedTrait implements Trait<PaginatedTrait> {
  const PaginatedTrait({
    this.items,
    this.inputToken,
    this.outputToken,
    this.pageSize,
  });

  factory PaginatedTrait.fromJson(Object? json) =>
      _$PaginatedTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId.core('paginated');

  final String? items;
  final String? inputToken;
  final String? outputToken;
  final String? pageSize;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [items, inputToken, outputToken, pageSize];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$PaginatedTraitToJson(this);

  @override
  PaginatedTrait get value => this;
}
