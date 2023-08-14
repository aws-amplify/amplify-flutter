// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.subnet; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_name_options_on_launch.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_ipv6_cidr_block_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'subnet.g.dart';

/// Describes a subnet.
abstract class Subnet
    with _i1.AWSEquatable<Subnet>
    implements Built<Subnet, SubnetBuilder> {
  /// Describes a subnet.
  factory Subnet({
    String? availabilityZone,
    String? availabilityZoneId,
    int? availableIpAddressCount,
    String? cidrBlock,
    bool? defaultForAz,
    int? enableLniAtDeviceIndex,
    bool? mapPublicIpOnLaunch,
    bool? mapCustomerOwnedIpOnLaunch,
    String? customerOwnedIpv4Pool,
    SubnetState? state,
    String? subnetId,
    String? vpcId,
    String? ownerId,
    bool? assignIpv6AddressOnCreation,
    List<SubnetIpv6CidrBlockAssociation>? ipv6CidrBlockAssociationSet,
    List<Tag>? tags,
    String? subnetArn,
    String? outpostArn,
    bool? enableDns64,
    bool? ipv6Native,
    PrivateDnsNameOptionsOnLaunch? privateDnsNameOptionsOnLaunch,
  }) {
    availableIpAddressCount ??= 0;
    defaultForAz ??= false;
    enableLniAtDeviceIndex ??= 0;
    mapPublicIpOnLaunch ??= false;
    mapCustomerOwnedIpOnLaunch ??= false;
    assignIpv6AddressOnCreation ??= false;
    enableDns64 ??= false;
    ipv6Native ??= false;
    return _$Subnet._(
      availabilityZone: availabilityZone,
      availabilityZoneId: availabilityZoneId,
      availableIpAddressCount: availableIpAddressCount,
      cidrBlock: cidrBlock,
      defaultForAz: defaultForAz,
      enableLniAtDeviceIndex: enableLniAtDeviceIndex,
      mapPublicIpOnLaunch: mapPublicIpOnLaunch,
      mapCustomerOwnedIpOnLaunch: mapCustomerOwnedIpOnLaunch,
      customerOwnedIpv4Pool: customerOwnedIpv4Pool,
      state: state,
      subnetId: subnetId,
      vpcId: vpcId,
      ownerId: ownerId,
      assignIpv6AddressOnCreation: assignIpv6AddressOnCreation,
      ipv6CidrBlockAssociationSet: ipv6CidrBlockAssociationSet == null
          ? null
          : _i2.BuiltList(ipv6CidrBlockAssociationSet),
      tags: tags == null ? null : _i2.BuiltList(tags),
      subnetArn: subnetArn,
      outpostArn: outpostArn,
      enableDns64: enableDns64,
      ipv6Native: ipv6Native,
      privateDnsNameOptionsOnLaunch: privateDnsNameOptionsOnLaunch,
    );
  }

  /// Describes a subnet.
  factory Subnet.build([void Function(SubnetBuilder) updates]) = _$Subnet;

  const Subnet._();

  static const List<_i3.SmithySerializer<Subnet>> serializers = [
    SubnetEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SubnetBuilder b) {
    b
      ..availableIpAddressCount = 0
      ..defaultForAz = false
      ..enableLniAtDeviceIndex = 0
      ..mapPublicIpOnLaunch = false
      ..mapCustomerOwnedIpOnLaunch = false
      ..assignIpv6AddressOnCreation = false
      ..enableDns64 = false
      ..ipv6Native = false;
  }

  /// The Availability Zone of the subnet.
  String? get availabilityZone;

  /// The AZ ID of the subnet.
  String? get availabilityZoneId;

  /// The number of unused private IPv4 addresses in the subnet. The IPv4 addresses for any stopped instances are considered unavailable.
  int get availableIpAddressCount;

  /// The IPv4 CIDR block assigned to the subnet.
  String? get cidrBlock;

  /// Indicates whether this is the default subnet for the Availability Zone.
  bool get defaultForAz;

  /// Indicates the device position for local network interfaces in this subnet. For example, `1` indicates local network interfaces in this subnet are the secondary network interface (eth1).
  int get enableLniAtDeviceIndex;

  /// Indicates whether instances launched in this subnet receive a public IPv4 address.
  bool get mapPublicIpOnLaunch;

  /// Indicates whether a network interface created in this subnet (including a network interface created by RunInstances) receives a customer-owned IPv4 address.
  bool get mapCustomerOwnedIpOnLaunch;

  /// The customer-owned IPv4 address pool associated with the subnet.
  String? get customerOwnedIpv4Pool;

  /// The current state of the subnet.
  SubnetState? get state;

  /// The ID of the subnet.
  String? get subnetId;

  /// The ID of the VPC the subnet is in.
  String? get vpcId;

  /// The ID of the Amazon Web Services account that owns the subnet.
  String? get ownerId;

  /// Indicates whether a network interface created in this subnet (including a network interface created by RunInstances) receives an IPv6 address.
  bool get assignIpv6AddressOnCreation;

  /// Information about the IPv6 CIDR blocks associated with the subnet.
  _i2.BuiltList<SubnetIpv6CidrBlockAssociation>?
      get ipv6CidrBlockAssociationSet;

  /// Any tags assigned to the subnet.
  _i2.BuiltList<Tag>? get tags;

  /// The Amazon Resource Name (ARN) of the subnet.
  String? get subnetArn;

  /// The Amazon Resource Name (ARN) of the Outpost.
  String? get outpostArn;

  /// Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations.
  bool get enableDns64;

  /// Indicates whether this is an IPv6 only subnet.
  bool get ipv6Native;

  /// The type of hostnames to assign to instances in the subnet at launch. An instance hostname is based on the IPv4 address or ID of the instance.
  PrivateDnsNameOptionsOnLaunch? get privateDnsNameOptionsOnLaunch;
  @override
  List<Object?> get props => [
        availabilityZone,
        availabilityZoneId,
        availableIpAddressCount,
        cidrBlock,
        defaultForAz,
        enableLniAtDeviceIndex,
        mapPublicIpOnLaunch,
        mapCustomerOwnedIpOnLaunch,
        customerOwnedIpv4Pool,
        state,
        subnetId,
        vpcId,
        ownerId,
        assignIpv6AddressOnCreation,
        ipv6CidrBlockAssociationSet,
        tags,
        subnetArn,
        outpostArn,
        enableDns64,
        ipv6Native,
        privateDnsNameOptionsOnLaunch,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Subnet')
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'availabilityZoneId',
        availabilityZoneId,
      )
      ..add(
        'availableIpAddressCount',
        availableIpAddressCount,
      )
      ..add(
        'cidrBlock',
        cidrBlock,
      )
      ..add(
        'defaultForAz',
        defaultForAz,
      )
      ..add(
        'enableLniAtDeviceIndex',
        enableLniAtDeviceIndex,
      )
      ..add(
        'mapPublicIpOnLaunch',
        mapPublicIpOnLaunch,
      )
      ..add(
        'mapCustomerOwnedIpOnLaunch',
        mapCustomerOwnedIpOnLaunch,
      )
      ..add(
        'customerOwnedIpv4Pool',
        customerOwnedIpv4Pool,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'subnetId',
        subnetId,
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
        'assignIpv6AddressOnCreation',
        assignIpv6AddressOnCreation,
      )
      ..add(
        'ipv6CidrBlockAssociationSet',
        ipv6CidrBlockAssociationSet,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'subnetArn',
        subnetArn,
      )
      ..add(
        'outpostArn',
        outpostArn,
      )
      ..add(
        'enableDns64',
        enableDns64,
      )
      ..add(
        'ipv6Native',
        ipv6Native,
      )
      ..add(
        'privateDnsNameOptionsOnLaunch',
        privateDnsNameOptionsOnLaunch,
      );
    return helper.toString();
  }
}

class SubnetEc2QuerySerializer extends _i3.StructuredSmithySerializer<Subnet> {
  const SubnetEc2QuerySerializer() : super('Subnet');

  @override
  Iterable<Type> get types => const [
        Subnet,
        _$Subnet,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Subnet deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubnetBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'availabilityZoneId':
          result.availabilityZoneId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'availableIpAddressCount':
          result.availableIpAddressCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'cidrBlock':
          result.cidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'defaultForAz':
          result.defaultForAz = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'enableLniAtDeviceIndex':
          result.enableLniAtDeviceIndex = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'mapPublicIpOnLaunch':
          result.mapPublicIpOnLaunch = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'mapCustomerOwnedIpOnLaunch':
          result.mapCustomerOwnedIpOnLaunch = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'customerOwnedIpv4Pool':
          result.customerOwnedIpv4Pool = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(SubnetState),
          ) as SubnetState);
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'assignIpv6AddressOnCreation':
          result.assignIpv6AddressOnCreation = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
              [FullType(SubnetIpv6CidrBlockAssociation)],
            ),
          ) as _i2.BuiltList<SubnetIpv6CidrBlockAssociation>));
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
        case 'subnetArn':
          result.subnetArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'outpostArn':
          result.outpostArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'enableDns64':
          result.enableDns64 = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ipv6Native':
          result.ipv6Native = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'privateDnsNameOptionsOnLaunch':
          result.privateDnsNameOptionsOnLaunch.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PrivateDnsNameOptionsOnLaunch),
          ) as PrivateDnsNameOptionsOnLaunch));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Subnet object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'SubnetResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Subnet(
      :availabilityZone,
      :availabilityZoneId,
      :availableIpAddressCount,
      :cidrBlock,
      :defaultForAz,
      :enableLniAtDeviceIndex,
      :mapPublicIpOnLaunch,
      :mapCustomerOwnedIpOnLaunch,
      :customerOwnedIpv4Pool,
      :state,
      :subnetId,
      :vpcId,
      :ownerId,
      :assignIpv6AddressOnCreation,
      :ipv6CidrBlockAssociationSet,
      :tags,
      :subnetArn,
      :outpostArn,
      :enableDns64,
      :ipv6Native,
      :privateDnsNameOptionsOnLaunch
    ) = object;
    if (availabilityZone != null) {
      result$
        ..add(const _i3.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (availabilityZoneId != null) {
      result$
        ..add(const _i3.XmlElementName('AvailabilityZoneId'))
        ..add(serializers.serialize(
          availabilityZoneId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('AvailableIpAddressCount'))
      ..add(serializers.serialize(
        availableIpAddressCount,
        specifiedType: const FullType(int),
      ));
    if (cidrBlock != null) {
      result$
        ..add(const _i3.XmlElementName('CidrBlock'))
        ..add(serializers.serialize(
          cidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('DefaultForAz'))
      ..add(serializers.serialize(
        defaultForAz,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i3.XmlElementName('EnableLniAtDeviceIndex'))
      ..add(serializers.serialize(
        enableLniAtDeviceIndex,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i3.XmlElementName('MapPublicIpOnLaunch'))
      ..add(serializers.serialize(
        mapPublicIpOnLaunch,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i3.XmlElementName('MapCustomerOwnedIpOnLaunch'))
      ..add(serializers.serialize(
        mapCustomerOwnedIpOnLaunch,
        specifiedType: const FullType(bool),
      ));
    if (customerOwnedIpv4Pool != null) {
      result$
        ..add(const _i3.XmlElementName('CustomerOwnedIpv4Pool'))
        ..add(serializers.serialize(
          customerOwnedIpv4Pool,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(SubnetState),
        ));
    }
    if (subnetId != null) {
      result$
        ..add(const _i3.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
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
    result$
      ..add(const _i3.XmlElementName('AssignIpv6AddressOnCreation'))
      ..add(serializers.serialize(
        assignIpv6AddressOnCreation,
        specifiedType: const FullType(bool),
      ));
    if (ipv6CidrBlockAssociationSet != null) {
      result$
        ..add(const _i3.XmlElementName('Ipv6CidrBlockAssociationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv6CidrBlockAssociationSet,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(SubnetIpv6CidrBlockAssociation)],
          ),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    if (subnetArn != null) {
      result$
        ..add(const _i3.XmlElementName('SubnetArn'))
        ..add(serializers.serialize(
          subnetArn,
          specifiedType: const FullType(String),
        ));
    }
    if (outpostArn != null) {
      result$
        ..add(const _i3.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          outpostArn,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('EnableDns64'))
      ..add(serializers.serialize(
        enableDns64,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i3.XmlElementName('Ipv6Native'))
      ..add(serializers.serialize(
        ipv6Native,
        specifiedType: const FullType(bool),
      ));
    if (privateDnsNameOptionsOnLaunch != null) {
      result$
        ..add(const _i3.XmlElementName('PrivateDnsNameOptionsOnLaunch'))
        ..add(serializers.serialize(
          privateDnsNameOptionsOnLaunch,
          specifiedType: const FullType(PrivateDnsNameOptionsOnLaunch),
        ));
    }
    return result$;
  }
}
