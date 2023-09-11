// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpc; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tenancy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_cidr_block_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_ipv6_cidr_block_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_state.dart';

part 'vpc.g.dart';

/// Describes a VPC.
abstract class Vpc
    with _i1.AWSEquatable<Vpc>
    implements Built<Vpc, VpcBuilder> {
  /// Describes a VPC.
  factory Vpc({
    String? cidrBlock,
    String? dhcpOptionsId,
    VpcState? state,
    String? vpcId,
    String? ownerId,
    Tenancy? instanceTenancy,
    List<VpcIpv6CidrBlockAssociation>? ipv6CidrBlockAssociationSet,
    List<VpcCidrBlockAssociation>? cidrBlockAssociationSet,
    bool? isDefault,
    List<Tag>? tags,
  }) {
    isDefault ??= false;
    return _$Vpc._(
      cidrBlock: cidrBlock,
      dhcpOptionsId: dhcpOptionsId,
      state: state,
      vpcId: vpcId,
      ownerId: ownerId,
      instanceTenancy: instanceTenancy,
      ipv6CidrBlockAssociationSet: ipv6CidrBlockAssociationSet == null
          ? null
          : _i2.BuiltList(ipv6CidrBlockAssociationSet),
      cidrBlockAssociationSet: cidrBlockAssociationSet == null
          ? null
          : _i2.BuiltList(cidrBlockAssociationSet),
      isDefault: isDefault,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a VPC.
  factory Vpc.build([void Function(VpcBuilder) updates]) = _$Vpc;

  const Vpc._();

  static const List<_i3.SmithySerializer<Vpc>> serializers = [
    VpcEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpcBuilder b) {
    b.isDefault = false;
  }

  /// The primary IPv4 CIDR block for the VPC.
  String? get cidrBlock;

  /// The ID of the set of DHCP options you've associated with the VPC.
  String? get dhcpOptionsId;

  /// The current state of the VPC.
  VpcState? get state;

  /// The ID of the VPC.
  String? get vpcId;

  /// The ID of the Amazon Web Services account that owns the VPC.
  String? get ownerId;

  /// The allowed tenancy of instances launched into the VPC.
  Tenancy? get instanceTenancy;

  /// Information about the IPv6 CIDR blocks associated with the VPC.
  _i2.BuiltList<VpcIpv6CidrBlockAssociation>? get ipv6CidrBlockAssociationSet;

  /// Information about the IPv4 CIDR blocks associated with the VPC.
  _i2.BuiltList<VpcCidrBlockAssociation>? get cidrBlockAssociationSet;

  /// Indicates whether the VPC is the default VPC.
  bool get isDefault;

  /// Any tags assigned to the VPC.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        cidrBlock,
        dhcpOptionsId,
        state,
        vpcId,
        ownerId,
        instanceTenancy,
        ipv6CidrBlockAssociationSet,
        cidrBlockAssociationSet,
        isDefault,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Vpc')
      ..add(
        'cidrBlock',
        cidrBlock,
      )
      ..add(
        'dhcpOptionsId',
        dhcpOptionsId,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'instanceTenancy',
        instanceTenancy,
      )
      ..add(
        'ipv6CidrBlockAssociationSet',
        ipv6CidrBlockAssociationSet,
      )
      ..add(
        'cidrBlockAssociationSet',
        cidrBlockAssociationSet,
      )
      ..add(
        'isDefault',
        isDefault,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class VpcEc2QuerySerializer extends _i3.StructuredSmithySerializer<Vpc> {
  const VpcEc2QuerySerializer() : super('Vpc');

  @override
  Iterable<Type> get types => const [
        Vpc,
        _$Vpc,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Vpc deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpcBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'cidrBlock':
          result.cidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dhcpOptionsId':
          result.dhcpOptionsId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(VpcState),
          ) as VpcState);
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceTenancy':
          result.instanceTenancy = (serializers.deserialize(
            value,
            specifiedType: const FullType(Tenancy),
          ) as Tenancy);
        case 'ipv6CidrBlockAssociationSet':
          result.ipv6CidrBlockAssociationSet
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VpcIpv6CidrBlockAssociation)],
            ),
          ) as _i2.BuiltList<VpcIpv6CidrBlockAssociation>));
        case 'cidrBlockAssociationSet':
          result.cidrBlockAssociationSet
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VpcCidrBlockAssociation)],
            ),
          ) as _i2.BuiltList<VpcCidrBlockAssociation>));
        case 'isDefault':
          result.isDefault = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Vpc object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'VpcResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Vpc(
      :cidrBlock,
      :dhcpOptionsId,
      :state,
      :vpcId,
      :ownerId,
      :instanceTenancy,
      :ipv6CidrBlockAssociationSet,
      :cidrBlockAssociationSet,
      :isDefault,
      :tags
    ) = object;
    if (cidrBlock != null) {
      result$
        ..add(const _i3.XmlElementName('CidrBlock'))
        ..add(serializers.serialize(
          cidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (dhcpOptionsId != null) {
      result$
        ..add(const _i3.XmlElementName('DhcpOptionsId'))
        ..add(serializers.serialize(
          dhcpOptionsId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(VpcState),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i3.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceTenancy != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceTenancy'))
        ..add(serializers.serialize(
          instanceTenancy,
          specifiedType: const FullType(Tenancy),
        ));
    }
    if (ipv6CidrBlockAssociationSet != null) {
      result$
        ..add(const _i3.XmlElementName('Ipv6CidrBlockAssociationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv6CidrBlockAssociationSet,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(VpcIpv6CidrBlockAssociation)],
          ),
        ));
    }
    if (cidrBlockAssociationSet != null) {
      result$
        ..add(const _i3.XmlElementName('CidrBlockAssociationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          cidrBlockAssociationSet,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(VpcCidrBlockAssociation)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('IsDefault'))
      ..add(serializers.serialize(
        isDefault,
        specifiedType: const FullType(bool),
      ));
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
