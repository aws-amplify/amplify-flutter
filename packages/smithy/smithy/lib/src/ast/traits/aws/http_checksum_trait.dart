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

part 'http_checksum_trait.g.dart';

enum ChecksumAlgorithm {
  @JsonValue('CRC32C')
  crc32c,

  @JsonValue('CRC32')
  crc32,

  @JsonValue('SHA1')
  sha1,

  @JsonValue('SHA256')
  sha256,

  @JsonValue('MD5')
  md5,
}

@ShapeIdConverter()
@JsonSerializable()
class HttpChecksumTrait
    with AWSSerializable
    implements Trait<HttpChecksumTrait> {
  const HttpChecksumTrait({
    this.requestChecksumRequired,
    this.requestAlgorithmMember,
    this.requestValidationModeMember,
    this.responseAlgorithms = const {},
  });

  factory HttpChecksumTrait.fromJson(Object? json) =>
      _$HttpChecksumTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId(namespace: 'aws.protocols', shape: 'httpChecksum');

  final bool? requestChecksumRequired;
  final String? requestAlgorithmMember;
  final String? requestValidationModeMember;
  final Set<ChecksumAlgorithm> responseAlgorithms;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [
        requestChecksumRequired,
        requestAlgorithmMember,
        requestValidationModeMember,
        responseAlgorithms,
      ];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$HttpChecksumTraitToJson(this);

  @override
  HttpChecksumTrait get value => this;
}
