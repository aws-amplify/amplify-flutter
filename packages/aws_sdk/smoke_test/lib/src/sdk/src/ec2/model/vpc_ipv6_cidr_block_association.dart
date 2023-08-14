// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpc_ipv6_cidr_block_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_cidr_block_state.dart';

part 'vpc_ipv6_cidr_block_association.g.dart';

/// Describes an IPv6 CIDR block associated with a VPC.
abstract class VpcIpv6CidrBlockAssociation
    with _i1.AWSEquatable<VpcIpv6CidrBlockAssociation>
    implements
        Built<VpcIpv6CidrBlockAssociation, VpcIpv6CidrBlockAssociationBuilder> {
  /// Describes an IPv6 CIDR block associated with a VPC.
  factory VpcIpv6CidrBlockAssociation({
    String? associationId,
    String? ipv6CidrBlock,
    VpcCidrBlockState? ipv6CidrBlockState,
    String? networkBorderGroup,
    String? ipv6Pool,
  }) {
    return _$VpcIpv6CidrBlockAssociation._(
      associationId: associationId,
      ipv6CidrBlock: ipv6CidrBlock,
      ipv6CidrBlockState: ipv6CidrBlockState,
      networkBorderGroup: networkBorderGroup,
      ipv6Pool: ipv6Pool,
    );
  }

  /// Describes an IPv6 CIDR block associated with a VPC.
  factory VpcIpv6CidrBlockAssociation.build(
          [void Function(VpcIpv6CidrBlockAssociationBuilder) updates]) =
      _$VpcIpv6CidrBlockAssociation;

  const VpcIpv6CidrBlockAssociation._();

  static const List<_i2.SmithySerializer<VpcIpv6CidrBlockAssociation>>
      serializers = [VpcIpv6CidrBlockAssociationEc2QuerySerializer()];

  /// The association ID for the IPv6 CIDR block.
  String? get associationId;

  /// The IPv6 CIDR block.
  String? get ipv6CidrBlock;

  /// Information about the state of the CIDR block.
  VpcCidrBlockState? get ipv6CidrBlockState;

  /// The name of the unique set of Availability Zones, Local Zones, or Wavelength Zones from which Amazon Web Services advertises IP addresses, for example, `us-east-1-wl1-bos-wlz-1`.
  String? get networkBorderGroup;

  /// The ID of the IPv6 address pool from which the IPv6 CIDR block is allocated.
  String? get ipv6Pool;
  @override
  List<Object?> get props => [
        associationId,
        ipv6CidrBlock,
        ipv6CidrBlockState,
        networkBorderGroup,
        ipv6Pool,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpcIpv6CidrBlockAssociation')
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
      )
      ..add(
        'networkBorderGroup',
        networkBorderGroup,
      )
      ..add(
        'ipv6Pool',
        ipv6Pool,
      );
    return helper.toString();
  }
}

class VpcIpv6CidrBlockAssociationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VpcIpv6CidrBlockAssociation> {
  const VpcIpv6CidrBlockAssociationEc2QuerySerializer()
      : super('VpcIpv6CidrBlockAssociation');

  @override
  Iterable<Type> get types => const [
        VpcIpv6CidrBlockAssociation,
        _$VpcIpv6CidrBlockAssociation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpcIpv6CidrBlockAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpcIpv6CidrBlockAssociationBuilder();
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
            specifiedType: const FullType(VpcCidrBlockState),
          ) as VpcCidrBlockState));
        case 'networkBorderGroup':
          result.networkBorderGroup = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipv6Pool':
          result.ipv6Pool = (serializers.deserialize(
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
    VpcIpv6CidrBlockAssociation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VpcIpv6CidrBlockAssociationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VpcIpv6CidrBlockAssociation(
      :associationId,
      :ipv6CidrBlock,
      :ipv6CidrBlockState,
      :networkBorderGroup,
      :ipv6Pool
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
          specifiedType: const FullType(VpcCidrBlockState),
        ));
    }
    if (networkBorderGroup != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkBorderGroup'))
        ..add(serializers.serialize(
          networkBorderGroup,
          specifiedType: const FullType(String),
        ));
    }
    if (ipv6Pool != null) {
      result$
        ..add(const _i2.XmlElementName('Ipv6Pool'))
        ..add(serializers.serialize(
          ipv6Pool,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
