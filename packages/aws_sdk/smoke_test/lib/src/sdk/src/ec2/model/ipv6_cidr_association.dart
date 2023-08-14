// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipv6_cidr_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ipv6_cidr_association.g.dart';

/// Describes an IPv6 CIDR block association.
abstract class Ipv6CidrAssociation
    with _i1.AWSEquatable<Ipv6CidrAssociation>
    implements Built<Ipv6CidrAssociation, Ipv6CidrAssociationBuilder> {
  /// Describes an IPv6 CIDR block association.
  factory Ipv6CidrAssociation({
    String? ipv6Cidr,
    String? associatedResource,
  }) {
    return _$Ipv6CidrAssociation._(
      ipv6Cidr: ipv6Cidr,
      associatedResource: associatedResource,
    );
  }

  /// Describes an IPv6 CIDR block association.
  factory Ipv6CidrAssociation.build(
          [void Function(Ipv6CidrAssociationBuilder) updates]) =
      _$Ipv6CidrAssociation;

  const Ipv6CidrAssociation._();

  static const List<_i2.SmithySerializer<Ipv6CidrAssociation>> serializers = [
    Ipv6CidrAssociationEc2QuerySerializer()
  ];

  /// The IPv6 CIDR block.
  String? get ipv6Cidr;

  /// The resource that's associated with the IPv6 CIDR block.
  String? get associatedResource;
  @override
  List<Object?> get props => [
        ipv6Cidr,
        associatedResource,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Ipv6CidrAssociation')
      ..add(
        'ipv6Cidr',
        ipv6Cidr,
      )
      ..add(
        'associatedResource',
        associatedResource,
      );
    return helper.toString();
  }
}

class Ipv6CidrAssociationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<Ipv6CidrAssociation> {
  const Ipv6CidrAssociationEc2QuerySerializer() : super('Ipv6CidrAssociation');

  @override
  Iterable<Type> get types => const [
        Ipv6CidrAssociation,
        _$Ipv6CidrAssociation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Ipv6CidrAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Ipv6CidrAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipv6Cidr':
          result.ipv6Cidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'associatedResource':
          result.associatedResource = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Ipv6CidrAssociation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'Ipv6CidrAssociationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Ipv6CidrAssociation(:ipv6Cidr, :associatedResource) = object;
    if (ipv6Cidr != null) {
      result$
        ..add(const _i2.XmlElementName('Ipv6Cidr'))
        ..add(serializers.serialize(
          ipv6Cidr,
          specifiedType: const FullType(String),
        ));
    }
    if (associatedResource != null) {
      result$
        ..add(const _i2.XmlElementName('AssociatedResource'))
        ..add(serializers.serialize(
          associatedResource,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
