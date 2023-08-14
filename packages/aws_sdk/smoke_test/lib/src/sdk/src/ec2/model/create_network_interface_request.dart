// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_network_interface_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv6_address.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv4_prefix_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_prefix_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_creation_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/private_ip_address_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_network_interface_request.g.dart';

abstract class CreateNetworkInterfaceRequest
    with
        _i1.HttpInput<CreateNetworkInterfaceRequest>,
        _i2.AWSEquatable<CreateNetworkInterfaceRequest>
    implements
        Built<CreateNetworkInterfaceRequest,
            CreateNetworkInterfaceRequestBuilder> {
  factory CreateNetworkInterfaceRequest({
    String? description,
    bool? dryRun,
    List<String>? groups,
    int? ipv6AddressCount,
    List<InstanceIpv6Address>? ipv6Addresses,
    String? privateIpAddress,
    List<PrivateIpAddressSpecification>? privateIpAddresses,
    int? secondaryPrivateIpAddressCount,
    List<Ipv4PrefixSpecificationRequest>? ipv4Prefixes,
    int? ipv4PrefixCount,
    List<Ipv6PrefixSpecificationRequest>? ipv6Prefixes,
    int? ipv6PrefixCount,
    NetworkInterfaceCreationType? interfaceType,
    String? subnetId,
    List<TagSpecification>? tagSpecifications,
    String? clientToken,
    bool? enablePrimaryIpv6,
  }) {
    dryRun ??= false;
    ipv6AddressCount ??= 0;
    secondaryPrivateIpAddressCount ??= 0;
    ipv4PrefixCount ??= 0;
    ipv6PrefixCount ??= 0;
    enablePrimaryIpv6 ??= false;
    return _$CreateNetworkInterfaceRequest._(
      description: description,
      dryRun: dryRun,
      groups: groups == null ? null : _i3.BuiltList(groups),
      ipv6AddressCount: ipv6AddressCount,
      ipv6Addresses:
          ipv6Addresses == null ? null : _i3.BuiltList(ipv6Addresses),
      privateIpAddress: privateIpAddress,
      privateIpAddresses:
          privateIpAddresses == null ? null : _i3.BuiltList(privateIpAddresses),
      secondaryPrivateIpAddressCount: secondaryPrivateIpAddressCount,
      ipv4Prefixes: ipv4Prefixes == null ? null : _i3.BuiltList(ipv4Prefixes),
      ipv4PrefixCount: ipv4PrefixCount,
      ipv6Prefixes: ipv6Prefixes == null ? null : _i3.BuiltList(ipv6Prefixes),
      ipv6PrefixCount: ipv6PrefixCount,
      interfaceType: interfaceType,
      subnetId: subnetId,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      clientToken: clientToken,
      enablePrimaryIpv6: enablePrimaryIpv6,
    );
  }

  factory CreateNetworkInterfaceRequest.build(
          [void Function(CreateNetworkInterfaceRequestBuilder) updates]) =
      _$CreateNetworkInterfaceRequest;

  const CreateNetworkInterfaceRequest._();

  factory CreateNetworkInterfaceRequest.fromRequest(
    CreateNetworkInterfaceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateNetworkInterfaceRequest>>
      serializers = [CreateNetworkInterfaceRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateNetworkInterfaceRequestBuilder b) {
    b
      ..dryRun = false
      ..ipv6AddressCount = 0
      ..secondaryPrivateIpAddressCount = 0
      ..ipv4PrefixCount = 0
      ..ipv6PrefixCount = 0
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..enablePrimaryIpv6 = false;
  }

  /// A description for the network interface.
  String? get description;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of one or more security groups.
  _i3.BuiltList<String>? get groups;

  /// The number of IPv6 addresses to assign to a network interface. Amazon EC2 automatically selects the IPv6 addresses from the subnet range.
  ///
  /// You can't specify a count of IPv6 addresses using this parameter if you've specified one of the following: specific IPv6 addresses, specific IPv6 prefixes, or a count of IPv6 prefixes.
  ///
  /// If your subnet has the `AssignIpv6AddressOnCreation` attribute set, you can override that setting by specifying 0 as the IPv6 address count.
  int get ipv6AddressCount;

  /// The IPv6 addresses from the IPv6 CIDR block range of your subnet.
  ///
  /// You can't specify IPv6 addresses using this parameter if you've specified one of the following: a count of IPv6 addresses, specific IPv6 prefixes, or a count of IPv6 prefixes.
  _i3.BuiltList<InstanceIpv6Address>? get ipv6Addresses;

  /// The primary private IPv4 address of the network interface. If you don't specify an IPv4 address, Amazon EC2 selects one for you from the subnet's IPv4 CIDR range. If you specify an IP address, you cannot indicate any IP addresses specified in `privateIpAddresses` as primary (only one IP address can be designated as primary).
  String? get privateIpAddress;

  /// The private IPv4 addresses.
  ///
  /// You can't specify private IPv4 addresses if you've specified one of the following: a count of private IPv4 addresses, specific IPv4 prefixes, or a count of IPv4 prefixes.
  _i3.BuiltList<PrivateIpAddressSpecification>? get privateIpAddresses;

  /// The number of secondary private IPv4 addresses to assign to a network interface. When you specify a number of secondary IPv4 addresses, Amazon EC2 selects these IP addresses within the subnet's IPv4 CIDR range. You can't specify this option and specify more than one private IP address using `privateIpAddresses`.
  ///
  /// You can't specify a count of private IPv4 addresses if you've specified one of the following: specific private IPv4 addresses, specific IPv4 prefixes, or a count of IPv4 prefixes.
  int get secondaryPrivateIpAddressCount;

  /// The IPv4 prefixes assigned to the network interface.
  ///
  /// You can't specify IPv4 prefixes if you've specified one of the following: a count of IPv4 prefixes, specific private IPv4 addresses, or a count of private IPv4 addresses.
  _i3.BuiltList<Ipv4PrefixSpecificationRequest>? get ipv4Prefixes;

  /// The number of IPv4 prefixes that Amazon Web Services automatically assigns to the network interface.
  ///
  /// You can't specify a count of IPv4 prefixes if you've specified one of the following: specific IPv4 prefixes, specific private IPv4 addresses, or a count of private IPv4 addresses.
  int get ipv4PrefixCount;

  /// The IPv6 prefixes assigned to the network interface.
  ///
  /// You can't specify IPv6 prefixes if you've specified one of the following: a count of IPv6 prefixes, specific IPv6 addresses, or a count of IPv6 addresses.
  _i3.BuiltList<Ipv6PrefixSpecificationRequest>? get ipv6Prefixes;

  /// The number of IPv6 prefixes that Amazon Web Services automatically assigns to the network interface.
  ///
  /// You can't specify a count of IPv6 prefixes if you've specified one of the following: specific IPv6 prefixes, specific IPv6 addresses, or a count of IPv6 addresses.
  int get ipv6PrefixCount;

  /// The type of network interface. The default is `interface`.
  ///
  /// The only supported values are `interface`, `efa`, and `trunk`.
  NetworkInterfaceCreationType? get interfaceType;

  /// The ID of the subnet to associate with the network interface.
  String? get subnetId;

  /// The tags to apply to the new network interface.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// If you’re creating a network interface in a dual-stack or IPv6-only subnet, you have the option to assign a primary IPv6 IP address. A primary IPv6 address is an IPv6 GUA address associated with an ENI that you have enabled to use a primary IPv6 address. Use this option if the instance that this ENI will be attached to relies on its IPv6 address not changing. Amazon Web Services will automatically assign an IPv6 address associated with the ENI attached to your instance to be the primary IPv6 address. Once you enable an IPv6 GUA address to be a primary IPv6, you cannot disable it. When you enable an IPv6 GUA address to be a primary IPv6, the first IPv6 GUA will be made the primary IPv6 address until the instance is terminated or the network interface is detached. If you have multiple IPv6 addresses associated with an ENI attached to your instance and you enable a primary IPv6 address, the first IPv6 GUA address associated with the ENI becomes the primary IPv6 address.
  bool get enablePrimaryIpv6;
  @override
  CreateNetworkInterfaceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        description,
        dryRun,
        groups,
        ipv6AddressCount,
        ipv6Addresses,
        privateIpAddress,
        privateIpAddresses,
        secondaryPrivateIpAddressCount,
        ipv4Prefixes,
        ipv4PrefixCount,
        ipv6Prefixes,
        ipv6PrefixCount,
        interfaceType,
        subnetId,
        tagSpecifications,
        clientToken,
        enablePrimaryIpv6,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateNetworkInterfaceRequest')
      ..add(
        'description',
        description,
      )
      ..add(
        'dryRun',
        dryRun,
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
        'interfaceType',
        interfaceType,
      )
      ..add(
        'subnetId',
        subnetId,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        'enablePrimaryIpv6',
        enablePrimaryIpv6,
      );
    return helper.toString();
  }
}

class CreateNetworkInterfaceRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateNetworkInterfaceRequest> {
  const CreateNetworkInterfaceRequestEc2QuerySerializer()
      : super('CreateNetworkInterfaceRequest');

  @override
  Iterable<Type> get types => const [
        CreateNetworkInterfaceRequest,
        _$CreateNetworkInterfaceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNetworkInterfaceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNetworkInterfaceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'SecurityGroupId':
          result.groups.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'SecurityGroupId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'ipv6AddressCount':
          result.ipv6AddressCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ipv6Addresses':
          result.ipv6Addresses.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(InstanceIpv6Address)],
            ),
          ) as _i3.BuiltList<InstanceIpv6Address>));
        case 'privateIpAddress':
          result.privateIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'privateIpAddresses':
          result.privateIpAddresses.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(PrivateIpAddressSpecification)],
            ),
          ) as _i3.BuiltList<PrivateIpAddressSpecification>));
        case 'secondaryPrivateIpAddressCount':
          result.secondaryPrivateIpAddressCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Ipv4Prefix':
          result.ipv4Prefixes.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Ipv4PrefixSpecificationRequest)],
            ),
          ) as _i3.BuiltList<Ipv4PrefixSpecificationRequest>));
        case 'Ipv4PrefixCount':
          result.ipv4PrefixCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Ipv6Prefix':
          result.ipv6Prefixes.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Ipv6PrefixSpecificationRequest)],
            ),
          ) as _i3.BuiltList<Ipv6PrefixSpecificationRequest>));
        case 'Ipv6PrefixCount':
          result.ipv6PrefixCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'InterfaceType':
          result.interfaceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkInterfaceCreationType),
          ) as NetworkInterfaceCreationType);
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EnablePrimaryIpv6':
          result.enablePrimaryIpv6 = (serializers.deserialize(
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
    CreateNetworkInterfaceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateNetworkInterfaceRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateNetworkInterfaceRequest(
      :description,
      :dryRun,
      :groups,
      :ipv6AddressCount,
      :ipv6Addresses,
      :privateIpAddress,
      :privateIpAddresses,
      :secondaryPrivateIpAddressCount,
      :ipv4Prefixes,
      :ipv4PrefixCount,
      :ipv6Prefixes,
      :ipv6PrefixCount,
      :interfaceType,
      :subnetId,
      :tagSpecifications,
      :clientToken,
      :enablePrimaryIpv6
    ) = object;
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (groups != null) {
      result$
        ..add(const _i1.XmlElementName('SecurityGroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'SecurityGroupId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          groups,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Ipv6AddressCount'))
      ..add(serializers.serialize(
        ipv6AddressCount,
        specifiedType: const FullType(int),
      ));
    if (ipv6Addresses != null) {
      result$
        ..add(const _i1.XmlElementName('Ipv6Addresses'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv6Addresses,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(InstanceIpv6Address)],
          ),
        ));
    }
    if (privateIpAddress != null) {
      result$
        ..add(const _i1.XmlElementName('PrivateIpAddress'))
        ..add(serializers.serialize(
          privateIpAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (privateIpAddresses != null) {
      result$
        ..add(const _i1.XmlElementName('PrivateIpAddresses'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          privateIpAddresses,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(PrivateIpAddressSpecification)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('SecondaryPrivateIpAddressCount'))
      ..add(serializers.serialize(
        secondaryPrivateIpAddressCount,
        specifiedType: const FullType(int),
      ));
    if (ipv4Prefixes != null) {
      result$
        ..add(const _i1.XmlElementName('Ipv4Prefix'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv4Prefixes,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(Ipv4PrefixSpecificationRequest)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Ipv4PrefixCount'))
      ..add(serializers.serialize(
        ipv4PrefixCount,
        specifiedType: const FullType(int),
      ));
    if (ipv6Prefixes != null) {
      result$
        ..add(const _i1.XmlElementName('Ipv6Prefix'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv6Prefixes,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(Ipv6PrefixSpecificationRequest)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Ipv6PrefixCount'))
      ..add(serializers.serialize(
        ipv6PrefixCount,
        specifiedType: const FullType(int),
      ));
    if (interfaceType != null) {
      result$
        ..add(const _i1.XmlElementName('InterfaceType'))
        ..add(serializers.serialize(
          interfaceType,
          specifiedType: const FullType.nullable(NetworkInterfaceCreationType),
        ));
    }
    if (subnetId != null) {
      result$
        ..add(const _i1.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('EnablePrimaryIpv6'))
      ..add(serializers.serialize(
        enablePrimaryIpv6,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
