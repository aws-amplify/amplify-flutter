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

part 'http_malformed_request_tests_trait.g.dart';

/// Defines protocol tests for malformed HTTP request handling.
@ShapeIdConverter()
@JsonSerializable()
class HttpMalformedRequestTestsTrait
    with AWSSerializable
    implements Trait<HttpMalformedRequestTestsTrait> {
  const HttpMalformedRequestTestsTrait(this.testCases);

  factory HttpMalformedRequestTestsTrait.fromJson(Object? json) =>
      _$HttpMalformedRequestTestsTraitFromJson(
          <String, Object?>{'testCases': json});

  static const id =
      ShapeId(namespace: 'smithy.test', shape: 'httpMalformedRequestTests');

  final List<ParameterizedHttpMalformedRequestTestCase> testCases;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [testCases];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$HttpMalformedRequestTestsTraitToJson(this);

  @override
  HttpMalformedRequestTestsTrait get value => this;
}
