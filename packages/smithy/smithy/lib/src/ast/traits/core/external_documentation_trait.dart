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

part 'external_documentation_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class ExternalDocumentationTrait
    with AWSSerializable
    implements Trait<ExternalDocumentationTrait> {
  const ExternalDocumentationTrait([this.urls = const {}]);

  factory ExternalDocumentationTrait.fromJson(Object? json) =>
      _$ExternalDocumentationTraitFromJson(<String, Object?>{'urls': json});

  static const id = ShapeId.core('externalDocumentation');

  final Map<String, Uri> urls;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [urls];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$ExternalDocumentationTraitToJson(this);

  @override
  ExternalDocumentationTrait get value => this;
}
