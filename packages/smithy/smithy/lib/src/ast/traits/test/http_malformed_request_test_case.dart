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

part 'http_malformed_request_test_case.g.dart';

@JsonSerializable()
@ShapeIdConverter()
class HttpMalformedRequestTestCase
    with AWSSerializable, AWSEquatable<HttpMalformedRequestTestCase> {
  const HttpMalformedRequestTestCase({
    this.documentation,
    required this.id,
    required this.protocol,
    required this.request,
    required this.response,
    this.tags = const [],
  });

  factory HttpMalformedRequestTestCase.fromJson(Map<String, Object?> json) =>
      _$HttpMalformedRequestTestCaseFromJson(json);

  final String? documentation;
  final String id;
  final ShapeId protocol;
  final HttpMalformedRequestDefinition request;
  final HttpMalformedResponseDefinition response;
  final List<String> tags;

  @override
  List<Object?> get props => [
        documentation,
        id,
        protocol,
        request,
        response,
        tags,
      ];

  @override
  Map<String, Object?> toJson() => _$HttpMalformedRequestTestCaseToJson(this);
}
