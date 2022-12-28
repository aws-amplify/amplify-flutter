// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'http_response_test_case.g.dart';

@JsonSerializable()
@ShapeIdConverter()
class HttpResponseTestCase extends HttpMessageTestCase<HttpResponseTestCase> {
  const HttpResponseTestCase({
    required String id,
    String? documentation,
    required ShapeId protocol,
    ShapeId? authScheme,
    String? body,
    String? bodyMediaType,
    Map<String, Object?> params = const {},
    ShapeId? vendorParamsShape,
    Map<String, Object?> vendorParams = const {},
    Map<String, String> headers = const {},
    List<String> forbidHeaders = const [],
    List<String> requireHeaders = const [],
    List<String> tags = const [],
    AppliesTo? appliesTo,
    required this.code,
  }) : super(
          id: id,
          documentation: documentation,
          protocol: protocol,
          authScheme: authScheme,
          body: body,
          bodyMediaType: bodyMediaType,
          params: params,
          vendorParamsShape: vendorParamsShape,
          vendorParams: vendorParams,
          headers: headers,
          forbidHeaders: forbidHeaders,
          requireHeaders: requireHeaders,
          tags: tags,
          appliesTo: appliesTo,
        );

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
