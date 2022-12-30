// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'enum_definition.g.dart';

@JsonSerializable(includeIfNull: false)
class EnumDefinition with AWSEquatable<EnumDefinition>, AWSSerializable {
  const EnumDefinition({
    required this.value,
    this.name,
    this.documentation,
    this.tags = const [],
    this.deprecated,
  });

  factory EnumDefinition.fromJson(Map<String, Object?> json) =>
      _$EnumDefinitionFromJson(json);

  final String value;
  final String? name;
  final String? documentation;
  final List<String> tags;
  final bool? deprecated;

  @override
  List<Object?> get props => [
        value,
        name,
        documentation,
        tags,
        deprecated,
      ];

  @override
  Map<String, Object?> toJson() => _$EnumDefinitionToJson(this);
}
