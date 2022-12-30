// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'http_malformed_request_definition.g.dart';

/// Defines a request to be used by an HttpMalformedRequest test case.
@JsonSerializable()
class HttpMalformedRequestDefinition
    with AWSSerializable, AWSEquatable<HttpMalformedRequestDefinition> {
  const HttpMalformedRequestDefinition({
    this.body,
    this.headers = const {},
    this.host,
    required this.method,
    this.queryParams = const [],
    this.uri,
  });

  factory HttpMalformedRequestDefinition.fromJson(Map<String, Object?> json) =>
      _$HttpMalformedRequestDefinitionFromJson(json);

  final String? body;
  final Map<String, String> headers;
  final String? host;
  final String method;
  final List<String> queryParams;
  final String? uri;

  @override
  Map<String, Object?> toJson() => _$HttpMalformedRequestDefinitionToJson(this);

  @override
  List<Object?> get props => [
        body,
        headers,
        host,
        method,
        queryParams,
        uri,
      ];
}
