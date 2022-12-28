// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
