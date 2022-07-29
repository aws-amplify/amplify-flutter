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

import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'aws_json_1_0_trait.g.dart';

@JsonSerializable()
class AwsJson1_0Trait extends AWSProtocolTrait {
  const AwsJson1_0Trait({
    List<AlpnProtocol> http = AWSProtocolTrait.defaultHttpProtocols,
    List<AlpnProtocol>? eventStreamHttp,
  }) : super(
          id,
          http: http,
          eventStreamHttp: eventStreamHttp,
          timestampFormat: TimestampFormat.epochSeconds,
        );

  factory AwsJson1_0Trait.fromJson(Object? json) =>
      _$AwsJson1_0TraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0');

  @override
  Map<String, Object?> toJson() => _$AwsJson1_0TraitToJson(this);

  @override
  List<ShapeId> get traits => const [
        CorsTrait.id,
        EndpointTrait.id,
        HostLabelTrait.id,
        TimestampFormatTrait.id,
      ];
}

// ignore_for_file: camel_case_types
