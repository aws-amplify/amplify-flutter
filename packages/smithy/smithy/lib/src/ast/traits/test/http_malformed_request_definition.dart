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
