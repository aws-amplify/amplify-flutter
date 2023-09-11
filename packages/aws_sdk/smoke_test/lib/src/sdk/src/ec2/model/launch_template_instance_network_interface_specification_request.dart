// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_instance_network_interface_specification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv6_address_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv4_prefix_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_prefix_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/private_ip_address_specification.dart';

part 'launch_template_instance_network_interface_specification_request.g.dart';

/// The parameters for a network interface.
abstract class LaunchTemplateInstanceNetworkInterfaceSpecificationRequest
    with
        _i1.AWSEquatable<
            LaunchTemplateInstanceNetworkInterfaceSpecificationRequest>
    implements
        Built<LaunchTemplateInstanceNetworkInterfaceSpecificationRequest,
            LaunchTemplateInstanceNetworkInterfaceSpecificationRequestBuilder> {
  /// The parameters for a network interface.
  factory LaunchTemplateInstanceNetworkInterfaceSpecificationRequest({
    bool? associateCarrierIpAddress,
    bool? associatePublicIpAddress,
    bool? deleteOnTermination,
    String? description,
    int? deviceIndex,
    List<String>? groups,
    String? interfaceType,
    int? ipv6AddressCount,
    List<InstanceIpv6AddressRequest>? ipv6Addresses,
    String? networkInterfaceId,
    String? privateIpAddress,
    List<PrivateIpAddressSpecification>? privateIpAddresses,
    int? secondaryPrivateIpAddressCount,
    String? subnetId,
    int? networkCardIndex,
    List<Ipv4PrefixSpecificationRequest>? ipv4Prefixes,
    int? ipv4PrefixCount,
    List<Ipv6PrefixSpecificationRequest>? ipv6Prefixes,
    int? ipv6PrefixCount,
    bool? primaryIpv6,
  }) {
    associateCarrierIpAddress ??= false;
    associatePublicIpAddress ??= false;
    deleteOnTermination ??= false;
    deviceIndex ??= 0;
    ipv6AddressCount ??= 0;
    secondaryPrivateIpAddressCount ??= 0;
    networkCardIndex ??= 0;
    ipv4PrefixCount ??= 0;
    ipv6PrefixCount ??= 0;
    primaryIpv6 ??= false;
    return _$LaunchTemplateInstanceNetworkInterfaceSpecificationRequest._(
      associateCarrierIpAddress: associateCarrierIpAddress,
      associatePublicIpAddress: associatePublicIpAddress,
      deleteOnTermination: deleteOnTermination,
      description: description,
      deviceIndex: deviceIndex,
      groups: groups == null ? null : _i2.BuiltList(groups),
      interfaceType: interfaceType,
      ipv6AddressCount: ipv6AddressCount,
      ipv6Addresses:
          ipv6Addresses == null ? null : _i2.BuiltList(ipv6Addresses),
      networkInterfaceId: networkInterfaceId,
      privateIpAddress: privateIpAddress,
      privateIpAddresses:
          privateIpAddresses == null ? null : _i2.BuiltList(privateIpAddresses),
      secondaryPrivateIpAddressCount: secondaryPrivateIpAddressCount,
      subnetId: subnetId,
      networkCardIndex: networkCardIndex,
      ipv4Prefixes: ipv4Prefixes == null ? null : _i2.BuiltList(ipv4Prefixes),
      ipv4PrefixCount: ipv4PrefixCount,
      ipv6Prefixes: ipv6Prefixes == null ? null : _i2.BuiltList(ipv6Prefixes),
      ipv6PrefixCount: ipv6PrefixCount,
      primaryIpv6: primaryIpv6,
    );
  }

  /// The parameters for a network interface.
  factory LaunchTemplateInstanceNetworkInterfaceSpecificationRequest.build(
      [void Function(
              LaunchTemplateInstanceNetworkInterfaceSpecificationRequestBuilder)
          updates]) = _$LaunchTemplateInstanceNetworkInterfaceSpecificationRequest;

  const LaunchTemplateInstanceNetworkInterfaceSpecificationRequest._();

  static const List<
          _i3.SmithySerializer<
              LaunchTemplateInstanceNetworkInterfaceSpecificationRequest>>
      serializers = [
    LaunchTemplateInstanceNetworkInterfaceSpecificationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      LaunchTemplateInstanceNetworkInterfaceSpecificationRequestBuilder b) {
    b
      ..associateCarrierIpAddress = false
      ..associatePublicIpAddress = false
      ..deleteOnTermination = false
      ..deviceIndex = 0
      ..ipv6AddressCount = 0
      ..secondaryPrivateIpAddressCount = 0
      ..networkCardIndex = 0
      ..ipv4PrefixCount = 0
      ..ipv6PrefixCount = 0
      ..primaryIpv6 = false;
  }

  /// Associates a Carrier IP address with eth0 for a new network interface.
  ///
  /// Use this option when you launch an instance in a Wavelength Zone and want to associate a Carrier IP address with the network interface. For more information about Carrier IP addresses, see [Carrier IP addresses](https://docs.aws.amazon.com/wavelength/latest/developerguide/how-wavelengths-work.html#provider-owned-ip) in the _Wavelength Developer Guide_.
  bool get associateCarrierIpAddress;

  /// Associates a public IPv4 address with eth0 for a new network interface.
  bool get associatePublicIpAddress;

  /// Indicates whether the network interface is deleted when the instance is terminated.
  bool get deleteOnTermination;

  /// A description for the network interface.
  String? get description;

  /// The device index for the network interface attachment.
  int get deviceIndex;

  /// The IDs of one or more security groups.
  _i2.BuiltList<String>? get groups;

  /// The type of network interface. To create an Elastic Fabric Adapter (EFA), specify `efa`. For more information, see [Elastic Fabric Adapter](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/efa.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// If you are not creating an EFA, specify `interface` or omit this parameter.
  ///
  /// Valid values: `interface` | `efa`
  String? get interfaceType;

  /// The number of IPv6 addresses to assign to a network interface. Amazon EC2 automatically selects the IPv6 addresses from the subnet range. You can't use this option if specifying specific IPv6 addresses.
  int get ipv6AddressCount;

  /// One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. You can't use this option if you're specifying a number of IPv6 addresses.
  _i2.BuiltList<InstanceIpv6AddressRequest>? get ipv6Addresses;

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// The primary private IPv4 address of the network interface.
  String? get privateIpAddress;

  /// One or more private IPv4 addresses.
  _i2.BuiltList<PrivateIpAddressSpecification>? get privateIpAddresses;

  /// The number of secondary private IPv4 addresses to assign to a network interface.
  int get secondaryPrivateIpAddressCount;

  /// The ID of the subnet for the network interface.
  String? get subnetId;

  /// The index of the network card. Some instance types support multiple network cards. The primary network interface must be assigned to network card index 0. The default is network card index 0.
  int get networkCardIndex;

  /// One or more IPv4 prefixes to be assigned to the network interface. You cannot use this option if you use the `Ipv4PrefixCount` option.
  _i2.BuiltList<Ipv4PrefixSpecificationRequest>? get ipv4Prefixes;

  /// The number of IPv4 prefixes to be automatically assigned to the network interface. You cannot use this option if you use the `Ipv4Prefix` option.
  int get ipv4PrefixCount;

  /// One or more IPv6 prefixes to be assigned to the network interface. You cannot use this option if you use the `Ipv6PrefixCount` option.
  _i2.BuiltList<Ipv6PrefixSpecificationRequest>? get ipv6Prefixes;

  /// The number of IPv6 prefixes to be automatically assigned to the network interface. You cannot use this option if you use the `Ipv6Prefix` option.
  int get ipv6PrefixCount;

  /// The primary IPv6 address of the network interface. When you enable an IPv6 GUA address to be a primary IPv6, the first IPv6 GUA will be made the primary IPv6 address until the instance is terminated or the network interface is detached. For more information about primary IPv6 addresses, see [RunInstances](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html).
  bool get primaryIpv6;
  @override
  List<Object?> get props => [
        associateCarrierIpAddress,
        associatePublicIpAddress,
        deleteOnTermination,
        description,
        deviceIndex,
        groups,
        interfaceType,
        ipv6AddressCount,
        ipv6Addresses,
        networkInterfaceId,
        privateIpAddress,
        privateIpAddresses,
        secondaryPrivateIpAddressCount,
        subnetId,
        networkCardIndex,
        ipv4Prefixes,
        ipv4PrefixCount,
        ipv6Prefixes,
        ipv6PrefixCount,
        primaryIpv6,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'LaunchTemplateInstanceNetworkInterfaceSpecificationRequest')
      ..add(
        'associateCarrierIpAddress',
        associateCarrierIpAddress,
      )
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
        'interfaceType',
        interfaceType,
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

class LaunchTemplateInstanceNetworkInterfaceSpecificationRequestEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        LaunchTemplateInstanceNetworkInterfaceSpecificationRequest> {
  const LaunchTemplateInstanceNetworkInterfaceSpecificationRequestEc2QuerySerializer()
      : super('LaunchTemplateInstanceNetworkInterfaceSpecificationRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateInstanceNetworkInterfaceSpecificationRequest,
        _$LaunchTemplateInstanceNetworkInterfaceSpecificationRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateInstanceNetworkInterfaceSpecificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        LaunchTemplateInstanceNetworkInterfaceSpecificationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AssociateCarrierIpAddress':
          result.associateCarrierIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'AssociatePublicIpAddress':
          result.associatePublicIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'DeleteOnTermination':
          result.deleteOnTermination = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DeviceIndex':
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
        case 'InterfaceType':
          result.interfaceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Ipv6AddressCount':
          result.ipv6AddressCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Ipv6Addresses':
          result.ipv6Addresses.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'InstanceIpv6Address',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceIpv6AddressRequest)],
            ),
          ) as _i2.BuiltList<InstanceIpv6AddressRequest>));
        case 'NetworkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PrivateIpAddress':
          result.privateIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PrivateIpAddresses':
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
        case 'SecondaryPrivateIpAddressCount':
          result.secondaryPrivateIpAddressCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'SubnetId':
          result.subnetId = (serializers.deserialize(
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
    LaunchTemplateInstanceNetworkInterfaceSpecificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'LaunchTemplateInstanceNetworkInterfaceSpecificationRequestResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateInstanceNetworkInterfaceSpecificationRequest(
      :associateCarrierIpAddress,
      :associatePublicIpAddress,
      :deleteOnTermination,
      :description,
      :deviceIndex,
      :groups,
      :interfaceType,
      :ipv6AddressCount,
      :ipv6Addresses,
      :networkInterfaceId,
      :privateIpAddress,
      :privateIpAddresses,
      :secondaryPrivateIpAddressCount,
      :subnetId,
      :networkCardIndex,
      :ipv4Prefixes,
      :ipv4PrefixCount,
      :ipv6Prefixes,
      :ipv6PrefixCount,
      :primaryIpv6
    ) = object;
    result$
      ..add(const _i3.XmlElementName('AssociateCarrierIpAddress'))
      ..add(serializers.serialize(
        associateCarrierIpAddress,
        specifiedType: const FullType(bool),
      ));
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
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
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
          memberName: 'InstanceIpv6Address',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv6Addresses,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(InstanceIpv6AddressRequest)],
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
          specifiedType: const FullType(
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
          specifiedType: const FullType(
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
          specifiedType: const FullType(
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
