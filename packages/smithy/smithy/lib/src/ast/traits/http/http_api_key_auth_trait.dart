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

part 'http_api_key_auth_trait.g.dart';

enum Location { header, query }

@ShapeIdConverter()
@JsonSerializable()
class HttpApiKeyAuthTrait
    with AWSSerializable
    implements Trait<HttpApiKeyAuthTrait> {
  const HttpApiKeyAuthTrait({
    this.scheme,
    required this.name,
    required this.location,
  });

  factory HttpApiKeyAuthTrait.fromJson(Object? json) =>
      _$HttpApiKeyAuthTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId.core('httpApiKeyAuth');

  final String? scheme;
  final String name;

  @JsonKey(name: 'in')
  final Location location;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [scheme, name, location];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$HttpApiKeyAuthTraitToJson(this);

  @override
  HttpApiKeyAuthTrait get value => this;
}
