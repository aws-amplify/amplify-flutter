// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'retryable_trait.g.dart';

/// Marks an error structure as retryable.
@ShapeIdConverter()
@JsonSerializable()
class RetryableTrait implements Trait<RetryableTrait> {
  const RetryableTrait({
    this.throttling = false,
  });

  factory RetryableTrait.fromJson(Object? json) =>
      _$RetryableTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId.core('retryable');

  final bool throttling;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [throttling];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$RetryableTraitToJson(this);

  @override
  RetryableTrait get value => this;
}
