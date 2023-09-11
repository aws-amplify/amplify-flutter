// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_network_interface; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/group_identifier.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv4_prefix.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv6_address.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv6_prefix.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_private_ip_address.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_status.dart';

part 'instance_network_interface.g.dart';

/// Describes a network interface.
abstract class InstanceNetworkInterface
    with _i1.AWSEquatable<InstanceNetworkInterface>
    implements
        Built<InstanceNetworkInterface, InstanceNetworkInterfaceBuilder> {
  /// Describes a network interface.
  factory InstanceNetworkInterface({
    InstanceNetworkInterfaceAssociation? association,
    InstanceNetworkInterfaceAttachment? attachment,
    String? description,
    List<GroupIdentifier>? groups,
    List<InstanceIpv6Address>? ipv6Addresses,
    String? macAddress,
    String? networkInterfaceId,
    String? ownerId,
    String? privateDnsName,
    String? privateIpAddress,
    List<InstancePrivateIpAddress>? privateIpAddresses,
    bool? sourceDestCheck,
    NetworkInterfaceStatus? status,
    String? subnetId,
    String? vpcId,
    String? interfaceType,
    List<InstanceIpv4Prefix>? ipv4Prefixes,
    List<InstanceIpv6Prefix>? ipv6Prefixes,
  }) {
    sourceDestCheck ??= false;
    return _$InstanceNetworkInterface._(
      association: association,
      attachment: attachment,
      description: description,
      groups: groups == null ? null : _i2.BuiltList(groups),
      ipv6Addresses:
          ipv6Addresses == null ? null : _i2.BuiltList(ipv6Addresses),
      macAddress: macAddress,
      networkInterfaceId: networkInterfaceId,
      ownerId: ownerId,
      privateDnsName: privateDnsName,
      privateIpAddress: privateIpAddress,
      privateIpAddresses:
          privateIpAddresses == null ? null : _i2.BuiltList(privateIpAddresses),
      sourceDestCheck: sourceDestCheck,
      status: status,
      subnetId: subnetId,
      vpcId: vpcId,
      interfaceType: interfaceType,
      ipv4Prefixes: ipv4Prefixes == null ? null : _i2.BuiltList(ipv4Prefixes),
      ipv6Prefixes: ipv6Prefixes == null ? null : _i2.BuiltList(ipv6Prefixes),
    );
  }

  /// Describes a network interface.
  factory InstanceNetworkInterface.build(
          [void Function(InstanceNetworkInterfaceBuilder) updates]) =
      _$InstanceNetworkInterface;

  const InstanceNetworkInterface._();

  static const List<_i3.SmithySerializer<InstanceNetworkInterface>>
      serializers = [InstanceNetworkInterfaceEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceNetworkInterfaceBuilder b) {
    b.sourceDestCheck = false;
  }

  /// The association information for an Elastic IPv4 associated with the network interface.
  InstanceNetworkInterfaceAssociation? get association;

  /// The network interface attachment.
  InstanceNetworkInterfaceAttachment? get attachment;

  /// The description.
  String? get description;

  /// The security groups.
  _i2.BuiltList<GroupIdentifier>? get groups;

  /// The IPv6 addresses associated with the network interface.
  _i2.BuiltList<InstanceIpv6Address>? get ipv6Addresses;

  /// The MAC address.
  String? get macAddress;

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// The ID of the Amazon Web Services account that created the network interface.
  String? get ownerId;

  /// The private DNS name.
  String? get privateDnsName;

  /// The IPv4 address of the network interface within the subnet.
  String? get privateIpAddress;

  /// The private IPv4 addresses associated with the network interface.
  _i2.BuiltList<InstancePrivateIpAddress>? get privateIpAddresses;

  /// Indicates whether source/destination checking is enabled.
  bool get sourceDestCheck;

  /// The status of the network interface.
  NetworkInterfaceStatus? get status;

  /// The ID of the subnet.
  String? get subnetId;

  /// The ID of the VPC.
  String? get vpcId;

  /// The type of network interface.
  ///
  /// Valid values: `interface` | `efa` | `trunk`
  String? get interfaceType;

  /// The IPv4 delegated prefixes that are assigned to the network interface.
  _i2.BuiltList<InstanceIpv4Prefix>? get ipv4Prefixes;

  /// The IPv6 delegated prefixes that are assigned to the network interface.
  _i2.BuiltList<InstanceIpv6Prefix>? get ipv6Prefixes;
  @override
  List<Object?> get props => [
        association,
        attachment,
        description,
        groups,
        ipv6Addresses,
        macAddress,
        networkInterfaceId,
        ownerId,
        privateDnsName,
        privateIpAddress,
        privateIpAddresses,
        sourceDestCheck,
        status,
        subnetId,
        vpcId,
        interfaceType,
        ipv4Prefixes,
        ipv6Prefixes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceNetworkInterface')
      ..add(
        'association',
        association,
      )
      ..add(
        'attachment',
        attachment,
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
        'vpcId',
        vpcId,
      )
      ..add(
        'interfaceType',
        interfaceType,
      )
      ..add(
        'ipv4Prefixes',
        ipv4Prefixes,
      )
      ..add(
        'ipv6Prefixes',
        ipv6Prefixes,
      );
    return helper.toString();
  }
}

class InstanceNetworkInterfaceEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceNetworkInterface> {
  const InstanceNetworkInterfaceEc2QuerySerializer()
      : super('InstanceNetworkInterface');

  @override
  Iterable<Type> get types => const [
        InstanceNetworkInterface,
        _$InstanceNetworkInterface,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceNetworkInterface deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceNetworkInterfaceBuilder();
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
            specifiedType: const FullType(InstanceNetworkInterfaceAssociation),
          ) as InstanceNetworkInterfaceAssociation));
        case 'attachment':
          result.attachment.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceNetworkInterfaceAttachment),
          ) as InstanceNetworkInterfaceAttachment));
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
        case 'ipv6AddressesSet':
          result.ipv6Addresses.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceIpv6Address)],
            ),
          ) as _i2.BuiltList<InstanceIpv6Address>));
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
              [FullType(InstancePrivateIpAddress)],
            ),
          ) as _i2.BuiltList<InstancePrivateIpAddress>));
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
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'interfaceType':
          result.interfaceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipv4PrefixSet':
          result.ipv4Prefixes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceIpv4Prefix)],
            ),
          ) as _i2.BuiltList<InstanceIpv4Prefix>));
        case 'ipv6PrefixSet':
          result.ipv6Prefixes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceIpv6Prefix)],
            ),
          ) as _i2.BuiltList<InstanceIpv6Prefix>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceNetworkInterface object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'InstanceNetworkInterfaceResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceNetworkInterface(
      :association,
      :attachment,
      :description,
      :groups,
      :ipv6Addresses,
      :macAddress,
      :networkInterfaceId,
      :ownerId,
      :privateDnsName,
      :privateIpAddress,
      :privateIpAddresses,
      :sourceDestCheck,
      :status,
      :subnetId,
      :vpcId,
      :interfaceType,
      :ipv4Prefixes,
      :ipv6Prefixes
    ) = object;
    if (association != null) {
      result$
        ..add(const _i3.XmlElementName('Association'))
        ..add(serializers.serialize(
          association,
          specifiedType: const FullType(InstanceNetworkInterfaceAssociation),
        ));
    }
    if (attachment != null) {
      result$
        ..add(const _i3.XmlElementName('Attachment'))
        ..add(serializers.serialize(
          attachment,
          specifiedType: const FullType(InstanceNetworkInterfaceAttachment),
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
            [FullType(InstanceIpv6Address)],
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
            [FullType(InstancePrivateIpAddress)],
          ),
        ));
    }
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
    if (vpcId != null) {
      result$
        ..add(const _i3.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (interfaceType != null) {
      result$
        ..add(const _i3.XmlElementName('InterfaceType'))
        ..add(serializers.serialize(
          interfaceType,
          specifiedType: const FullType(String),
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
            [FullType(InstanceIpv4Prefix)],
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
            [FullType(InstanceIpv6Prefix)],
          ),
        ));
    }
    return result$;
  }
}
