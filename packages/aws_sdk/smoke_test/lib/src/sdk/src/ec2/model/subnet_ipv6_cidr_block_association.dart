// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.subnet_ipv6_cidr_block_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_block_state.dart';

part 'subnet_ipv6_cidr_block_association.g.dart';

/// Describes an association between a subnet and an IPv6 CIDR block.
abstract class SubnetIpv6CidrBlockAssociation
    with
        _i1.AWSEquatable<SubnetIpv6CidrBlockAssociation>
    implements
        Built<SubnetIpv6CidrBlockAssociation,
            SubnetIpv6CidrBlockAssociationBuilder> {
  /// Describes an association between a subnet and an IPv6 CIDR block.
  factory SubnetIpv6CidrBlockAssociation({
    String? associationId,
    String? ipv6CidrBlock,
    SubnetCidrBlockState? ipv6CidrBlockState,
  }) {
    return _$SubnetIpv6CidrBlockAssociation._(
      associationId: associationId,
      ipv6CidrBlock: ipv6CidrBlock,
      ipv6CidrBlockState: ipv6CidrBlockState,
    );
  }

  /// Describes an association between a subnet and an IPv6 CIDR block.
  factory SubnetIpv6CidrBlockAssociation.build(
          [void Function(SubnetIpv6CidrBlockAssociationBuilder) updates]) =
      _$SubnetIpv6CidrBlockAssociation;

  const SubnetIpv6CidrBlockAssociation._();

  static const List<_i2.SmithySerializer<SubnetIpv6CidrBlockAssociation>>
      serializers = [SubnetIpv6CidrBlockAssociationEc2QuerySerializer()];

  /// The ID of the association.
  String? get associationId;

  /// The IPv6 CIDR block.
  String? get ipv6CidrBlock;

  /// The state of the CIDR block.
  SubnetCidrBlockState? get ipv6CidrBlockState;
  @override
  List<Object?> get props => [
        associationId,
        ipv6CidrBlock,
        ipv6CidrBlockState,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SubnetIpv6CidrBlockAssociation')
      ..add(
        'associationId',
        associationId,
      )
      ..add(
        'ipv6CidrBlock',
        ipv6CidrBlock,
      )
      ..add(
        'ipv6CidrBlockState',
        ipv6CidrBlockState,
      );
    return helper.toString();
  }
}

class SubnetIpv6CidrBlockAssociationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SubnetIpv6CidrBlockAssociation> {
  const SubnetIpv6CidrBlockAssociationEc2QuerySerializer()
      : super('SubnetIpv6CidrBlockAssociation');

  @override
  Iterable<Type> get types => const [
        SubnetIpv6CidrBlockAssociation,
        _$SubnetIpv6CidrBlockAssociation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SubnetIpv6CidrBlockAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubnetIpv6CidrBlockAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'associationId':
          result.associationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipv6CidrBlock':
          result.ipv6CidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipv6CidrBlockState':
          result.ipv6CidrBlockState.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SubnetCidrBlockState),
          ) as SubnetCidrBlockState));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SubnetIpv6CidrBlockAssociation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SubnetIpv6CidrBlockAssociationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SubnetIpv6CidrBlockAssociation(
      :associationId,
      :ipv6CidrBlock,
      :ipv6CidrBlockState
    ) = object;
    if (associationId != null) {
      result$
        ..add(const _i2.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          associationId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipv6CidrBlock != null) {
      result$
        ..add(const _i2.XmlElementName('Ipv6CidrBlock'))
        ..add(serializers.serialize(
          ipv6CidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (ipv6CidrBlockState != null) {
      result$
        ..add(const _i2.XmlElementName('Ipv6CidrBlockState'))
        ..add(serializers.serialize(
          ipv6CidrBlockState,
          specifiedType: const FullType(SubnetCidrBlockState),
        ));
    }
    return result$;
  }
}
