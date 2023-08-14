// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_network_interface_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv6_address.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv4_prefix_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_prefix_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/private_ip_address_specification.dart';

part 'instance_network_interface_specification.g.dart';

/// Describes a network interface.
abstract class InstanceNetworkInterfaceSpecification
    with
        _i1.AWSEquatable<InstanceNetworkInterfaceSpecification>
    implements
        Built<InstanceNetworkInterfaceSpecification,
            InstanceNetworkInterfaceSpecificationBuilder> {
  /// Describes a network interface.
  factory InstanceNetworkInterfaceSpecification({
    bool? associatePublicIpAddress,
    bool? deleteOnTermination,
    String? description,
    int? deviceIndex,
    List<String>? groups,
    int? ipv6AddressCount,
    List<InstanceIpv6Address>? ipv6Addresses,
    String? networkInterfaceId,
    String? privateIpAddress,
    List<PrivateIpAddressSpecification>? privateIpAddresses,
    int? secondaryPrivateIpAddressCount,
    String? subnetId,
    bool? associateCarrierIpAddress,
    String? interfaceType,
    int? networkCardIndex,
    List<Ipv4PrefixSpecificationRequest>? ipv4Prefixes,
    int? ipv4PrefixCount,
    List<Ipv6PrefixSpecificationRequest>? ipv6Prefixes,
    int? ipv6PrefixCount,
    bool? primaryIpv6,
  }) {
    associatePublicIpAddress ??= false;
    deleteOnTermination ??= false;
    deviceIndex ??= 0;
    ipv6AddressCount ??= 0;
    secondaryPrivateIpAddressCount ??= 0;
    associateCarrierIpAddress ??= false;
    networkCardIndex ??= 0;
    ipv4PrefixCount ??= 0;
    ipv6PrefixCount ??= 0;
    primaryIpv6 ??= false;
    return _$InstanceNetworkInterfaceSpecification._(
      associatePublicIpAddress: associatePublicIpAddress,
      deleteOnTermination: deleteOnTermination,
      description: description,
      deviceIndex: deviceIndex,
      groups: groups == null ? null : _i2.BuiltList(groups),
      ipv6AddressCount: ipv6AddressCount,
      ipv6Addresses:
          ipv6Addresses == null ? null : _i2.BuiltList(ipv6Addresses),
      networkInterfaceId: networkInterfaceId,
      privateIpAddress: privateIpAddress,
      privateIpAddresses:
          privateIpAddresses == null ? null : _i2.BuiltList(privateIpAddresses),
      secondaryPrivateIpAddressCount: secondaryPrivateIpAddressCount,
      subnetId: subnetId,
      associateCarrierIpAddress: associateCarrierIpAddress,
      interfaceType: interfaceType,
      networkCardIndex: networkCardIndex,
      ipv4Prefixes: ipv4Prefixes == null ? null : _i2.BuiltList(ipv4Prefixes),
      ipv4PrefixCount: ipv4PrefixCount,
      ipv6Prefixes: ipv6Prefixes == null ? null : _i2.BuiltList(ipv6Prefixes),
      ipv6PrefixCount: ipv6PrefixCount,
      primaryIpv6: primaryIpv6,
    );
  }

  /// Describes a network interface.
  factory InstanceNetworkInterfaceSpecification.build(
      [void Function(InstanceNetworkInterfaceSpecificationBuilder)
          updates]) = _$InstanceNetworkInterfaceSpecification;

  const InstanceNetworkInterfaceSpecification._();

  static const List<_i3.SmithySerializer<InstanceNetworkInterfaceSpecification>>
      serializers = [InstanceNetworkInterfaceSpecificationEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceNetworkInterfaceSpecificationBuilder b) {
    b
      ..associatePublicIpAddress = false
      ..deleteOnTermination = false
      ..deviceIndex = 0
      ..ipv6AddressCount = 0
      ..secondaryPrivateIpAddressCount = 0
      ..associateCarrierIpAddress = false
      ..networkCardIndex = 0
      ..ipv4PrefixCount = 0
      ..ipv6PrefixCount = 0
      ..primaryIpv6 = false;
  }

  /// Indicates whether to assign a public IPv4 address to an instance you launch in a VPC. The public IP address can only be assigned to a network interface for eth0, and can only be assigned to a new network interface, not an existing one. You cannot specify more than one network interface in the request. If launching into a default subnet, the default value is `true`.
  bool get associatePublicIpAddress;

  /// If set to `true`, the interface is deleted when the instance is terminated. You can specify `true` only if creating a new network interface when launching an instance.
  bool get deleteOnTermination;

  /// The description of the network interface. Applies only if creating a network interface when launching an instance.
  String? get description;

  /// The position of the network interface in the attachment order. A primary network interface has a device index of 0.
  ///
  /// If you specify a network interface when launching an instance, you must specify the device index.
  int get deviceIndex;

  /// The IDs of the security groups for the network interface. Applies only if creating a network interface when launching an instance.
  _i2.BuiltList<String>? get groups;

  /// A number of IPv6 addresses to assign to the network interface. Amazon EC2 chooses the IPv6 addresses from the range of the subnet. You cannot specify this option and the option to assign specific IPv6 addresses in the same request. You can specify this option if you've specified a minimum number of instances to launch.
  int get ipv6AddressCount;

  /// The IPv6 addresses to assign to the network interface. You cannot specify this option and the option to assign a number of IPv6 addresses in the same request. You cannot specify this option if you've specified a minimum number of instances to launch.
  _i2.BuiltList<InstanceIpv6Address>? get ipv6Addresses;

  /// The ID of the network interface.
  ///
  /// If you are creating a Spot Fleet, omit this parameter because you can’t specify a network interface ID in a launch specification.
  String? get networkInterfaceId;

  /// The private IPv4 address of the network interface. Applies only if creating a network interface when launching an instance. You cannot specify this option if you're launching more than one instance in a [RunInstances](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html) request.
  String? get privateIpAddress;

  /// The private IPv4 addresses to assign to the network interface. Only one private IPv4 address can be designated as primary. You cannot specify this option if you're launching more than one instance in a [RunInstances](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html) request.
  _i2.BuiltList<PrivateIpAddressSpecification>? get privateIpAddresses;

  /// The number of secondary private IPv4 addresses. You can't specify this option and specify more than one private IP address using the private IP addresses option. You cannot specify this option if you're launching more than one instance in a [RunInstances](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html) request.
  int get secondaryPrivateIpAddressCount;

  /// The ID of the subnet associated with the network interface. Applies only if creating a network interface when launching an instance.
  String? get subnetId;

  /// Indicates whether to assign a carrier IP address to the network interface.
  ///
  /// You can only assign a carrier IP address to a network interface that is in a subnet in a Wavelength Zone. For more information about carrier IP addresses, see [Carrier IP address](https://docs.aws.amazon.com/wavelength/latest/developerguide/how-wavelengths-work.html#provider-owned-ip) in the _Amazon Web Services Wavelength Developer Guide_.
  bool get associateCarrierIpAddress;

  /// The type of network interface.
  ///
  /// Valid values: `interface` | `efa`
  String? get interfaceType;

  /// The index of the network card. Some instance types support multiple network cards. The primary network interface must be assigned to network card index 0. The default is network card index 0.
  ///
  /// If you are using [RequestSpotInstances](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html) to create Spot Instances, omit this parameter because you can’t specify the network card index when using this API. To specify the network card index, use [RunInstances](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html).
  int get networkCardIndex;

  /// The IPv4 delegated prefixes to be assigned to the network interface. You cannot use this option if you use the `Ipv4PrefixCount` option.
  _i2.BuiltList<Ipv4PrefixSpecificationRequest>? get ipv4Prefixes;

  /// The number of IPv4 delegated prefixes to be automatically assigned to the network interface. You cannot use this option if you use the `Ipv4Prefix` option.
  int get ipv4PrefixCount;

  /// The IPv6 delegated prefixes to be assigned to the network interface. You cannot use this option if you use the `Ipv6PrefixCount` option.
  _i2.BuiltList<Ipv6PrefixSpecificationRequest>? get ipv6Prefixes;

  /// The number of IPv6 delegated prefixes to be automatically assigned to the network interface. You cannot use this option if you use the `Ipv6Prefix` option.
  int get ipv6PrefixCount;

  /// The primary IPv6 address of the network interface. When you enable an IPv6 GUA address to be a primary IPv6, the first IPv6 GUA will be made the primary IPv6 address until the instance is terminated or the network interface is detached. For more information about primary IPv6 addresses, see [RunInstances](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html).
  bool get primaryIpv6;
  @override
  List<Object?> get props => [
        associatePublicIpAddress,
        deleteOnTermination,
        description,
        deviceIndex,
        groups,
        ipv6AddressCount,
        ipv6Addresses,
        networkInterfaceId,
        privateIpAddress,
        privateIpAddresses,
        secondaryPrivateIpAddressCount,
        subnetId,
        associateCarrierIpAddress,
        interfaceType,
        networkCardIndex,
        ipv4Prefixes,
        ipv4PrefixCount,
        ipv6Prefixes,
        ipv6PrefixCount,
        primaryIpv6,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InstanceNetworkInterfaceSpecification')
          ..add(
            'associatePublicIpAddress',
            associatePublicIpAddress,
          )
          ..add(
            'deleteOnTermination',
            deleteOnTermination,
          )
          ..add(
            'description',
            description,
          )
          ..add(
            'deviceIndex',
            deviceIndex,
          )
          ..add(
            'groups',
            groups,
          )
          ..add(
            'ipv6AddressCount',
            ipv6AddressCount,
          )
          ..add(
            'ipv6Addresses',
            ipv6Addresses,
          )
          ..add(
            'networkInterfaceId',
            networkInterfaceId,
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
            'secondaryPrivateIpAddressCount',
            secondaryPrivateIpAddressCount,
          )
          ..add(
            'subnetId',
            subnetId,
          )
          ..add(
            'associateCarrierIpAddress',
            associateCarrierIpAddress,
          )
          ..add(
            'interfaceType',
            interfaceType,
          )
          ..add(
            'networkCardIndex',
            networkCardIndex,
          )
          ..add(
            'ipv4Prefixes',
            ipv4Prefixes,
          )
          ..add(
            'ipv4PrefixCount',
            ipv4PrefixCount,
          )
          ..add(
            'ipv6Prefixes',
            ipv6Prefixes,
          )
          ..add(
            'ipv6PrefixCount',
            ipv6PrefixCount,
          )
          ..add(
            'primaryIpv6',
            primaryIpv6,
          );
    return helper.toString();
  }
}

class InstanceNetworkInterfaceSpecificationEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<InstanceNetworkInterfaceSpecification> {
  const InstanceNetworkInterfaceSpecificationEc2QuerySerializer()
      : super('InstanceNetworkInterfaceSpecification');

  @override
  Iterable<Type> get types => const [
        InstanceNetworkInterfaceSpecification,
        _$InstanceNetworkInterfaceSpecification,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceNetworkInterfaceSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceNetworkInterfaceSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'associatePublicIpAddress':
          result.associatePublicIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'deleteOnTermination':
          result.deleteOnTermination = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'deviceIndex':
          result.deviceIndex = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'SecurityGroupId':
          result.groups.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'SecurityGroupId',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'ipv6AddressCount':
          result.ipv6AddressCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
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
              [FullType(PrivateIpAddressSpecification)],
            ),
          ) as _i2.BuiltList<PrivateIpAddressSpecification>));
        case 'secondaryPrivateIpAddressCount':
          result.secondaryPrivateIpAddressCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AssociateCarrierIpAddress':
          result.associateCarrierIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'InterfaceType':
          result.interfaceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NetworkCardIndex':
          result.networkCardIndex = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Ipv4Prefix':
          result.ipv4Prefixes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Ipv4PrefixSpecificationRequest)],
            ),
          ) as _i2.BuiltList<Ipv4PrefixSpecificationRequest>));
        case 'Ipv4PrefixCount':
          result.ipv4PrefixCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Ipv6Prefix':
          result.ipv6Prefixes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Ipv6PrefixSpecificationRequest)],
            ),
          ) as _i2.BuiltList<Ipv6PrefixSpecificationRequest>));
        case 'Ipv6PrefixCount':
          result.ipv6PrefixCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'PrimaryIpv6':
          result.primaryIpv6 = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceNetworkInterfaceSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'InstanceNetworkInterfaceSpecificationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceNetworkInterfaceSpecification(
      :associatePublicIpAddress,
      :deleteOnTermination,
      :description,
      :deviceIndex,
      :groups,
      :ipv6AddressCount,
      :ipv6Addresses,
      :networkInterfaceId,
      :privateIpAddress,
      :privateIpAddresses,
      :secondaryPrivateIpAddressCount,
      :subnetId,
      :associateCarrierIpAddress,
      :interfaceType,
      :networkCardIndex,
      :ipv4Prefixes,
      :ipv4PrefixCount,
      :ipv6Prefixes,
      :ipv6PrefixCount,
      :primaryIpv6
    ) = object;
    result$
      ..add(const _i3.XmlElementName('AssociatePublicIpAddress'))
      ..add(serializers.serialize(
        associatePublicIpAddress,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i3.XmlElementName('DeleteOnTermination'))
      ..add(serializers.serialize(
        deleteOnTermination,
        specifiedType: const FullType(bool),
      ));
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('DeviceIndex'))
      ..add(serializers.serialize(
        deviceIndex,
        specifiedType: const FullType(int),
      ));
    if (groups != null) {
      result$
        ..add(const _i3.XmlElementName('SecurityGroupId'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'SecurityGroupId',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          groups,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Ipv6AddressCount'))
      ..add(serializers.serialize(
        ipv6AddressCount,
        specifiedType: const FullType(int),
      ));
    if (ipv6Addresses != null) {
      result$
        ..add(const _i3.XmlElementName('Ipv6Addresses'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv6Addresses,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(InstanceIpv6Address)],
          ),
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
        ..add(const _i3.XmlElementName('PrivateIpAddresses'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          privateIpAddresses,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(PrivateIpAddressSpecification)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('SecondaryPrivateIpAddressCount'))
      ..add(serializers.serialize(
        secondaryPrivateIpAddressCount,
        specifiedType: const FullType(int),
      ));
    if (subnetId != null) {
      result$
        ..add(const _i3.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('AssociateCarrierIpAddress'))
      ..add(serializers.serialize(
        associateCarrierIpAddress,
        specifiedType: const FullType(bool),
      ));
    if (interfaceType != null) {
      result$
        ..add(const _i3.XmlElementName('InterfaceType'))
        ..add(serializers.serialize(
          interfaceType,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('NetworkCardIndex'))
      ..add(serializers.serialize(
        networkCardIndex,
        specifiedType: const FullType(int),
      ));
    if (ipv4Prefixes != null) {
      result$
        ..add(const _i3.XmlElementName('Ipv4Prefix'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv4Prefixes,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Ipv4PrefixSpecificationRequest)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Ipv4PrefixCount'))
      ..add(serializers.serialize(
        ipv4PrefixCount,
        specifiedType: const FullType(int),
      ));
    if (ipv6Prefixes != null) {
      result$
        ..add(const _i3.XmlElementName('Ipv6Prefix'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv6Prefixes,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Ipv6PrefixSpecificationRequest)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Ipv6PrefixCount'))
      ..add(serializers.serialize(
        ipv6PrefixCount,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i3.XmlElementName('PrimaryIpv6'))
      ..add(serializers.serialize(
        primaryIpv6,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
