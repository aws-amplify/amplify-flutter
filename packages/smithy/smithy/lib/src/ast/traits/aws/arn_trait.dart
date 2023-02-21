// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'arn_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class ArnTrait with AWSSerializable implements Trait<ArnTrait> {
  const ArnTrait({
    this.noRegion,
    this.noAccount,
    this.absolute,
    required this.template,
  });

  factory ArnTrait.fromJson(Object? json) =>
      _$ArnTraitFromJson((json as Map).cast<String, Object?>());

  static final RegExp _pattern = RegExp(r'\{([^}]+)}');

  static List<String> _parseLabels(String resource) =>
      _pattern.allMatches(resource).map((m) => m.group(1)!).toList();

  static const id = ShapeId(namespace: 'aws.api', shape: 'arn');

  final bool? noRegion;
  final bool? noAccount;
  final bool? absolute;
  final String template;

  @JsonKey(includeFromJson: false, includeToJson: false)
  List<String> get labels => _parseLabels(template);

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [
        noRegion,
        noAccount,
        absolute,
        template,
      ];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$ArnTraitToJson(this);

  @override
  ArnTrait get value => this;
}
