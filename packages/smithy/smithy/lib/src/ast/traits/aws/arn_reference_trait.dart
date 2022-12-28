// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'arn_reference_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class ArnReferenceTrait
    with AWSSerializable
    implements Trait<ArnReferenceTrait> {
  const ArnReferenceTrait({
    this.type,
    this.service,
    this.resource,
  });

  factory ArnReferenceTrait.fromJson(Object? json) =>
      _$ArnReferenceTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId(namespace: 'aws.api', shape: 'arnReference');

  final String? type;
  final ShapeId? service;
  final ShapeId? resource;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [
        type,
        service,
        resource,
      ];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$ArnReferenceTraitToJson(this);

  @override
  ArnReferenceTrait get value => this;
}
