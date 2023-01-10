// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'deprecated_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class DeprecatedTrait with AWSSerializable implements Trait<DeprecatedTrait> {
  const DeprecatedTrait({
    this.since,
    this.message,
  });

  factory DeprecatedTrait.fromJson(Object? json) =>
      _$DeprecatedTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId.core('deprecated');

  final String? since;
  final String? message;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [
        since,
        message,
      ];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$DeprecatedTraitToJson(this);

  @override
  DeprecatedTrait get value => this;
}
