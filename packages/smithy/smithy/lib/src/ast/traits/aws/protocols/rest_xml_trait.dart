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

part 'rest_xml_trait.g.dart';

/// A RESTful protocol that sends XML in structured payloads.
@JsonSerializable()
class RestXmlTrait extends AWSProtocolTrait {
  const RestXmlTrait({
    this.noErrorWrapping = false,
    List<AlpnProtocol> http = AWSProtocolTrait.defaultHttpProtocols,
    List<AlpnProtocol>? eventStreamHttp,
  }) : super(
          id,
          http: http,
          eventStreamHttp: eventStreamHttp,
          timestampFormat: TimestampFormat.dateTime,
          noInlineDocumentSupport: true,
        );

  factory RestXmlTrait.fromJson(Object? json) =>
      _$RestXmlTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId(namespace: 'aws.protocols', shape: 'restXml');

  final bool noErrorWrapping;

  @override
  Map<String, Object?> toJson() => _$RestXmlTraitToJson(this);

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
        XmlAttributeTrait.id,
        XmlFlattenedTrait.id,
        XmlNameTrait.id,
        XmlNamespaceTrait.id,
        TimestampFormatTrait.id,
        MediaTypeTrait.id,
      ];
}
