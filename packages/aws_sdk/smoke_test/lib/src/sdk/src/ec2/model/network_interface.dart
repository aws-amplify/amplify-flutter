// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_interface; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/group_identifier.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv4_prefix_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_prefix_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_ipv6_address.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_private_ip_address.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'network_interface.g.dart';

/// Describes a network interface.
abstract class NetworkInterface
    with _i1.AWSEquatable<NetworkInterface>
    implements Built<NetworkInterface, NetworkInterfaceBuilder> {
  /// Describes a network interface.
  factory NetworkInterface({
    NetworkInterfaceAssociation? association,
    NetworkInterfaceAttachment? attachment,
    String? availabilityZone,
    String? description,
    List<GroupIdentifier>? groups,
    NetworkInterfaceType? interfaceType,
    List<NetworkInterfaceIpv6Address>? ipv6Addresses,
    String? macAddress,
    String? networkInterfaceId,
    String? outpostArn,
    String? ownerId,
    String? privateDnsName,
    String? privateIpAddress,
    List<NetworkInterfacePrivateIpAddress>? privateIpAddresses,
    List<Ipv4PrefixSpecification>? ipv4Prefixes,
    List<Ipv6PrefixSpecification>? ipv6Prefixes,
    String? requesterId,
    bool? requesterManaged,
    bool? sourceDestCheck,
    NetworkInterfaceStatus? status,
    String? subnetId,
    List<Tag>? tagSet,
    String? vpcId,
    bool? denyAllIgwTraffic,
    bool? ipv6Native,
    String? ipv6Address,
  }) {
    requesterManaged ??= false;
    sourceDestCheck ??= false;
    denyAllIgwTraffic ??= false;
    ipv6Native ??= false;
    return _$NetworkInterface._(
      association: association,
      attachment: attachment,
      availabilityZone: availabilityZone,
      description: description,
      groups: groups == null ? null : _i2.BuiltList(groups),
      interfaceType: interfaceType,
      ipv6Addresses:
          ipv6Addresses == null ? null : _i2.BuiltList(ipv6Addresses),
      macAddress: macAddress,
      networkInterfaceId: networkInterfaceId,
      outpostArn: outpostArn,
      ownerId: ownerId,
      privateDnsName: privateDnsName,
      privateIpAddress: privateIpAddress,
      privateIpAddresses:
          privateIpAddresses == null ? null : _i2.BuiltList(privateIpAddresses),
      ipv4Prefixes: ipv4Prefixes == null ? null : _i2.BuiltList(ipv4Prefixes),
      ipv6Prefixes: ipv6Prefixes == null ? null : _i2.BuiltList(ipv6Prefixes),
      requesterId: requesterId,
      requesterManaged: requesterManaged,
      sourceDestCheck: sourceDestCheck,
      status: status,
      subnetId: subnetId,
      tagSet: tagSet == null ? null : _i2.BuiltList(tagSet),
      vpcId: vpcId,
      denyAllIgwTraffic: denyAllIgwTraffic,
      ipv6Native: ipv6Native,
      ipv6Address: ipv6Address,
    );
  }

  /// Describes a network interface.
  factory NetworkInterface.build(
      [void Function(NetworkInterfaceBuilder) updates]) = _$NetworkInterface;

  const NetworkInterface._();

  static const List<_i3.SmithySerializer<NetworkInterface>> serializers = [
    NetworkInterfaceEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInterfaceBuilder b) {
    b
      ..requesterManaged = false
      ..sourceDestCheck = false
      ..denyAllIgwTraffic = false
      ..ipv6Native = false;
  }

  /// The association information for an Elastic IP address (IPv4) associated with the network interface.
  NetworkInterfaceAssociation? get association;

  /// The network interface attachment.
  NetworkInterfaceAttachment? get attachment;

  /// The Availability Zone.
  String? get availabilityZone;

  /// A description.
  String? get description;

  /// Any security groups for the network interface.
  _i2.BuiltList<GroupIdentifier>? get groups;

  /// The type of network interface.
  NetworkInterfaceType? get interfaceType;

  /// The IPv6 addresses associated with the network interface.
  _i2.BuiltList<NetworkInterfaceIpv6Address>? get ipv6Addresses;

  /// The MAC address.
  String? get macAddress;

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// The Amazon Resource Name (ARN) of the Outpost.
  String? get outpostArn;

  /// The Amazon Web Services account ID of the owner of the network interface.
  String? get ownerId;

  /// The private DNS name.
  String? get privateDnsName;

  /// The IPv4 address of the network interface within the subnet.
  String? get privateIpAddress;

  /// The private IPv4 addresses associated with the network interface.
  _i2.BuiltList<NetworkInterfacePrivateIpAddress>? get privateIpAddresses;

  /// The IPv4 prefixes that are assigned to the network interface.
  _i2.BuiltList<Ipv4PrefixSpecification>? get ipv4Prefixes;

  /// The IPv6 prefixes that are assigned to the network interface.
  _i2.BuiltList<Ipv6PrefixSpecification>? get ipv6Prefixes;

  /// The alias or Amazon Web Services account ID of the principal or service that created the network interface.
  String? get requesterId;

  /// Indicates whether the network interface is being managed by Amazon Web Services.
  bool get requesterManaged;

  /// Indicates whether source/destination checking is enabled.
  bool get sourceDestCheck;

  /// The status of the network interface.
  NetworkInterfaceStatus? get status;

  /// The ID of the subnet.
  String? get subnetId;

  /// Any tags assigned to the network interface.
  _i2.BuiltList<Tag>? get tagSet;

  /// The ID of the VPC.
  String? get vpcId;

  /// Indicates whether a network interface with an IPv6 address is unreachable from the public internet. If the value is `true`, inbound traffic from the internet is dropped and you cannot assign an elastic IP address to the network interface. The network interface is reachable from peered VPCs and resources connected through a transit gateway, including on-premises networks.
  bool get denyAllIgwTraffic;

  /// Indicates whether this is an IPv6 only network interface.
  bool get ipv6Native;

  /// The IPv6 globally unique address associated with the network interface.
  String? get ipv6Address;
  @override
  List<Object?> get props => [
        association,
        attachment,
        availabilityZone,
        description,
        groups,
        interfaceType,
        ipv6Addresses,
        macAddress,
        networkInterfaceId,
        outpostArn,
        ownerId,
        privateDnsName,
        privateIpAddress,
        privateIpAddresses,
        ipv4Prefixes,
        ipv6Prefixes,
        requesterId,
        requesterManaged,
        sourceDestCheck,
        status,
        subnetId,
        tagSet,
        vpcId,
        denyAllIgwTraffic,
        ipv6Native,
        ipv6Address,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkInterface')
      ..add(
        'association',
        association,
      )
      ..add(
        'attachment',
        attachment,
      )
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'groups',
        groups,
      )
      ..add(
        'interfaceType',
        interfaceType,
      )
      ..add(
        'ipv6Addresses',
        ipv6Addresses,
      )
      ..add(
        'macAddress',
        macAddress,
      )
      ..add(
        'networkInterfaceId',
        networkInterfaceId,
      )
      ..add(
        'outpostArn',
        outpostArn,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'privateDnsName',
        privateDnsName,
      )
      ..add(
        'privateIpAddress',
        privateIpAddress,
      )
      ..add(
        'privateIpAddresses',
        privateIpAddresses,
      )
      ..add(
        'ipv4Prefixes',
        ipv4Prefixes,
      )
      ..add(
        'ipv6Prefixes',
        ipv6Prefixes,
      )
      ..add(
        'requesterId',
        requesterId,
      )
      ..add(
        'requesterManaged',
        requesterManaged,
      )
      ..add(
        'sourceDestCheck',
        sourceDestCheck,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'subnetId',
        subnetId,
      )
      ..add(
        'tagSet',
        tagSet,
      )
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'denyAllIgwTraffic',
        denyAllIgwTraffic,
      )
      ..add(
        'ipv6Native',
        ipv6Native,
      )
      ..add(
        'ipv6Address',
        ipv6Address,
      );
    return helper.toString();
  }
}

class NetworkInterfaceEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<NetworkInterface> {
  const NetworkInterfaceEc2QuerySerializer() : super('NetworkInterface');

  @override
  Iterable<Type> get types => const [
        NetworkInterface,
        _$NetworkInterface,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInterface deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInterfaceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'association':
          result.association.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkInterfaceAssociation),
          ) as NetworkInterfaceAssociation));
        case 'attachment':
          result.attachment.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkInterfaceAttachment),
          ) as NetworkInterfaceAttachment));
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'groupSet':
          result.groups.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(GroupIdentifier)],
            ),
          ) as _i2.BuiltList<GroupIdentifier>));
        case 'interfaceType':
          result.interfaceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkInterfaceType),
          ) as NetworkInterfaceType);
        case 'ipv6AddressesSet':
          result.ipv6Addresses.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(NetworkInterfaceIpv6Address)],
            ),
          ) as _i2.BuiltList<NetworkInterfaceIpv6Address>));
        case 'macAddress':
          result.macAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'outpostArn':
          result.outpostArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'privateDnsName':
          result.privateDnsName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'privateIpAddress':
          result.privateIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'privateIpAddressesSet':
          result.privateIpAddresses.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(NetworkInterfacePrivateIpAddress)],
            ),
          ) as _i2.BuiltList<NetworkInterfacePrivateIpAddress>));
        case 'ipv4PrefixSet':
          result.ipv4Prefixes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Ipv4PrefixSpecification)],
            ),
          ) as _i2.BuiltList<Ipv4PrefixSpecification>));
        case 'ipv6PrefixSet':
          result.ipv6Prefixes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Ipv6PrefixSpecification)],
            ),
          ) as _i2.BuiltList<Ipv6PrefixSpecification>));
        case 'requesterId':
          result.requesterId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'requesterManaged':
          result.requesterManaged = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'sourceDestCheck':
          result.sourceDestCheck = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkInterfaceStatus),
          ) as NetworkInterfaceStatus);
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tagSet':
          result.tagSet.replace((const _i3.XmlBuiltListSerializer(
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
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'denyAllIgwTraffic':
          result.denyAllIgwTraffic = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ipv6Native':
          result.ipv6Native = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ipv6Address':
          result.ipv6Address = (serializers.deserialize(
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
    NetworkInterface object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'NetworkInterfaceResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkInterface(
      :association,
      :attachment,
      :availabilityZone,
      :description,
      :groups,
      :interfaceType,
      :ipv6Addresses,
      :macAddress,
      :networkInterfaceId,
      :outpostArn,
      :ownerId,
      :privateDnsName,
      :privateIpAddress,
      :privateIpAddresses,
      :ipv4Prefixes,
      :ipv6Prefixes,
      :requesterId,
      :requesterManaged,
      :sourceDestCheck,
      :status,
      :subnetId,
      :tagSet,
      :vpcId,
      :denyAllIgwTraffic,
      :ipv6Native,
      :ipv6Address
    ) = object;
    if (association != null) {
      result$
        ..add(const _i3.XmlElementName('Association'))
        ..add(serializers.serialize(
          association,
          specifiedType: const FullType(NetworkInterfaceAssociation),
        ));
    }
    if (attachment != null) {
      result$
        ..add(const _i3.XmlElementName('Attachment'))
        ..add(serializers.serialize(
          attachment,
          specifiedType: const FullType(NetworkInterfaceAttachment),
        ));
    }
    if (availabilityZone != null) {
      result$
        ..add(const _i3.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (groups != null) {
      result$
        ..add(const _i3.XmlElementName('GroupSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          groups,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(GroupIdentifier)],
          ),
        ));
    }
    if (interfaceType != null) {
      result$
        ..add(const _i3.XmlElementName('InterfaceType'))
        ..add(serializers.serialize(
          interfaceType,
          specifiedType: const FullType(NetworkInterfaceType),
        ));
    }
    if (ipv6Addresses != null) {
      result$
        ..add(const _i3.XmlElementName('Ipv6AddressesSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv6Addresses,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(NetworkInterfaceIpv6Address)],
          ),
        ));
    }
    if (macAddress != null) {
      result$
        ..add(const _i3.XmlElementName('MacAddress'))
        ..add(serializers.serialize(
          macAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInterfaceId != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
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
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (privateDnsName != null) {
      result$
        ..add(const _i3.XmlElementName('PrivateDnsName'))
        ..add(serializers.serialize(
          privateDnsName,
          specifiedType: const FullType(String),
        ));
    }
    if (privateIpAddress != null) {
      result$
        ..add(const _i3.XmlElementName('PrivateIpAddress'))
        ..add(serializers.serialize(
          privateIpAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (privateIpAddresses != null) {
      result$
        ..add(const _i3.XmlElementName('PrivateIpAddressesSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          privateIpAddresses,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(NetworkInterfacePrivateIpAddress)],
          ),
        ));
    }
    if (ipv4Prefixes != null) {
      result$
        ..add(const _i3.XmlElementName('Ipv4PrefixSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv4Prefixes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Ipv4PrefixSpecification)],
          ),
        ));
    }
    if (ipv6Prefixes != null) {
      result$
        ..add(const _i3.XmlElementName('Ipv6PrefixSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv6Prefixes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Ipv6PrefixSpecification)],
          ),
        ));
    }
    if (requesterId != null) {
      result$
        ..add(const _i3.XmlElementName('RequesterId'))
        ..add(serializers.serialize(
          requesterId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('RequesterManaged'))
      ..add(serializers.serialize(
        requesterManaged,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i3.XmlElementName('SourceDestCheck'))
      ..add(serializers.serialize(
        sourceDestCheck,
        specifiedType: const FullType(bool),
      ));
    if (status != null) {
      result$
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(NetworkInterfaceStatus),
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
    if (tagSet != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSet,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
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
    result$
      ..add(const _i3.XmlElementName('DenyAllIgwTraffic'))
      ..add(serializers.serialize(
        denyAllIgwTraffic,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i3.XmlElementName('Ipv6Native'))
      ..add(serializers.serialize(
        ipv6Native,
        specifiedType: const FullType(bool),
      ));
    if (ipv6Address != null) {
      result$
        ..add(const _i3.XmlElementName('Ipv6Address'))
        ..add(serializers.serialize(
          ipv6Address,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
