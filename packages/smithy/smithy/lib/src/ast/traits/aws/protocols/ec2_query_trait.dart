// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'ec2_query_trait.g.dart';

@JsonSerializable()
class Ec2QueryTrait extends AWSProtocolTrait {
  const Ec2QueryTrait()
      : super(
          id,
          timestampFormat: TimestampFormat.dateTime,
        );

  factory Ec2QueryTrait.fromJson(Object? json) =>
      _$Ec2QueryTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId(namespace: 'aws.protocols', shape: 'ec2Query');

  @override
  Map<String, Object?> toJson() => _$Ec2QueryTraitToJson(this);

  @override
  List<ShapeId> get traits => const [
        CorsTrait.id,
        EndpointTrait.id,
        HostLabelTrait.id,
        Ec2QueryNameTrait.id,
        XmlAttributeTrait.id,
        XmlFlattenedTrait.id,
        XmlNameTrait.id,
        XmlNamespaceTrait.id,
        TimestampFormatTrait.id,
      ];
}

/// Provides a custom name to use when serializing a structure member
/// name as an EC2 query property.
class Ec2QueryNameTrait extends StringTrait {
  const Ec2QueryNameTrait(String value) : super(id, value);

  factory Ec2QueryNameTrait.fromJson(Object? json) =>
      Ec2QueryNameTrait(json as String);

  static const id = ShapeId(namespace: 'aws.protocols', shape: 'ec2QueryName');
}
