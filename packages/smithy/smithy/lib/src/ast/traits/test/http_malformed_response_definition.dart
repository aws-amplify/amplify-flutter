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

import 'http_malformed_response_body_definition.dart';

part 'http_malformed_response_definition.g.dart';

/// Defines the response expected by an HttpMalformedRequest test case.
@JsonSerializable()
class HttpMalformedResponseDefinition
    with AWSSerializable, AWSEquatable<HttpMalformedResponseDefinition> {
  const HttpMalformedResponseDefinition({
    this.body,
    required this.code,
    this.headers = const {},
  });

  factory HttpMalformedResponseDefinition.fromJson(Map<String, Object?> json) =>
      _$HttpMalformedResponseDefinitionFromJson(json);

  final HttpMalformedResponseBodyDefinition? body;
  final int code;
  final Map<String, String> headers;

  @override
  Map<String, Object?> toJson() =>
      _$HttpMalformedResponseDefinitionToJson(this);

  @override
  List<Object?> get props => [
        body,
        code,
        headers,
      ];
}
