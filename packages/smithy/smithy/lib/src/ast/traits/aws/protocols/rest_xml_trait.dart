// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
