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

part 'sig_v4_trait.g.dart';

/// Adds AWS signature version 4 authentication to a service or operation.
@ShapeIdConverter()
@JsonSerializable()
class SigV4Trait with AWSSerializable implements Trait<SigV4Trait> {
  const SigV4Trait({
    required this.name,
  });

  factory SigV4Trait.fromJson(Object? json) =>
      _$SigV4TraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId(namespace: 'aws.auth', shape: 'sigv4');

  final String name;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [name];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$SigV4TraitToJson(this);

  @override
  SigV4Trait get value => this;
}
