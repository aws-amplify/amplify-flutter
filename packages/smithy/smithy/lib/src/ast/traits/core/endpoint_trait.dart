// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'endpoint_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class EndpointTrait implements Trait<EndpointTrait> {
  const EndpointTrait(this.hostPrefix);

  factory EndpointTrait.fromJson(Object? json) =>
      _$EndpointTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId.core('endpoint');

  final String hostPrefix;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [hostPrefix];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$EndpointTraitToJson(this);

  @override
  EndpointTrait get value => this;
}
