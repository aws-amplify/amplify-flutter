// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'parameterized_http_malformed_test_case.g.dart';

@JsonSerializable()
@ShapeIdConverter()
class ParameterizedHttpMalformedRequestTestCase
    with
        AWSSerializable,
        AWSEquatable<ParameterizedHttpMalformedRequestTestCase> {
  const ParameterizedHttpMalformedRequestTestCase({
    this.documentation,
    required this.id,
    required this.protocol,
    required this.request,
    required this.response,
    this.tags = const [],
    this.testParameters = const {},
  });

  factory ParameterizedHttpMalformedRequestTestCase.fromJson(
          Map<String, Object?> json) =>
      _$ParameterizedHttpMalformedRequestTestCaseFromJson(json);

  final String? documentation;
  final String id;
  final ShapeId protocol;
  final HttpMalformedRequestDefinition request;
  final HttpMalformedResponseDefinition response;
  final List<String> tags;
  final Map<String, List<String>> testParameters;

  @override
  Map<String, Object?> toJson() =>
      _$ParameterizedHttpMalformedRequestTestCaseToJson(this);

  @override
  List<Object?> get props => [
        documentation,
        id,
        protocol,
        request,
        response,
        tags,
        testParameters,
      ];
}
