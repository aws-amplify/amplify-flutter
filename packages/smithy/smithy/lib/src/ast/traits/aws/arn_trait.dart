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

  @JsonKey(ignore: true)
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
