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

part 'rest_json_1_trait.g.dart';

///
///
/// **Important**: This protocol only permits the `httpPayload` trait to be
/// applied to members that target structures, documents, strings, blobs, or
/// unions.
@JsonSerializable()
class RestJson1Trait extends AWSProtocolTrait {
  const RestJson1Trait({
    List<AlpnProtocol> http = AWSProtocolTrait.defaultHttpProtocols,
    List<AlpnProtocol>? eventStreamHttp,
  }) : super(
          id,
          http: http,
          eventStreamHttp: eventStreamHttp,
          timestampFormat: TimestampFormat.epochSeconds,
        );

  factory RestJson1Trait.fromJson(Object? json) =>
      _$RestJson1TraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId(namespace: 'aws.protocols', shape: 'restJson1');

  @override
  Map<String, Object?> toJson() => _$RestJson1TraitToJson(this);

  @override
  List<ShapeId> get traits => const [
        CorsTrait.id,
        EndpointTrait.id,
        HostLabelTrait.id,
        HttpTrait.id,
        HttpErrorTrait.id,
        HttpHeaderTrait.id,
        HttpLabelTrait.id,
        HttpPayloadTrait.id,
        HttpPrefixHeadersTrait.id,
        HttpQueryTrait.id,
        HttpQueryParamsTrait.id,
        JsonNameTrait.id,
        TimestampFormatTrait.id,
        MediaTypeTrait.id,
      ];
}
