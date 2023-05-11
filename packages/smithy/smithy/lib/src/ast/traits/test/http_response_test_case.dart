// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'http_response_test_case.g.dart';

@JsonSerializable()
@ShapeIdConverter()
class HttpResponseTestCase extends HttpMessageTestCase<HttpResponseTestCase> {
  const HttpResponseTestCase({
    required super.id,
    super.documentation,
    required super.protocol,
    super.authScheme,
    super.body,
    super.bodyMediaType,
    super.params,
    super.vendorParamsShape,
    super.vendorParams,
    super.headers,
    super.forbidHeaders,
    super.requireHeaders,
    super.tags,
    super.appliesTo,
    required this.code,
  });

  factory HttpResponseTestCase.fromJson(Map<String, Object?> json) =>
      _$HttpResponseTestCaseFromJson(json);

  final int code;

  @override
  List<Object?> get props => [
        ...super.props,
        code,
      ];

  @override
  Map<String, Object?> toJson() => _$HttpResponseTestCaseToJson(this);
}
