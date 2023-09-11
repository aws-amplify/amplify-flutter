// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.address; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/domain_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'address.g.dart';

/// Describes an Elastic IP address, or a carrier IP address.
abstract class Address
    with _i1.AWSEquatable<Address>
    implements Built<Address, AddressBuilder> {
  /// Describes an Elastic IP address, or a carrier IP address.
  factory Address({
    String? instanceId,
    String? publicIp,
    String? allocationId,
    String? associationId,
    DomainType? domain,
    String? networkInterfaceId,
    String? networkInterfaceOwnerId,
    String? privateIpAddress,
    List<Tag>? tags,
    String? publicIpv4Pool,
    String? networkBorderGroup,
    String? customerOwnedIp,
    String? customerOwnedIpv4Pool,
    String? carrierIp,
  }) {
    return _$Address._(
      instanceId: instanceId,
      publicIp: publicIp,
      allocationId: allocationId,
      associationId: associationId,
      domain: domain,
      networkInterfaceId: networkInterfaceId,
      networkInterfaceOwnerId: networkInterfaceOwnerId,
      privateIpAddress: privateIpAddress,
      tags: tags == null ? null : _i2.BuiltList(tags),
      publicIpv4Pool: publicIpv4Pool,
      networkBorderGroup: networkBorderGroup,
      customerOwnedIp: customerOwnedIp,
      customerOwnedIpv4Pool: customerOwnedIpv4Pool,
      carrierIp: carrierIp,
    );
  }

  /// Describes an Elastic IP address, or a carrier IP address.
  factory Address.build([void Function(AddressBuilder) updates]) = _$Address;

  const Address._();

  static const List<_i3.SmithySerializer<Address>> serializers = [
    AddressEc2QuerySerializer()
  ];

  /// The ID of the instance that the address is associated with (if any).
  String? get instanceId;

  /// The Elastic IP address.
  String? get publicIp;

  /// The ID representing the allocation of the address.
  String? get allocationId;

  /// The ID representing the association of the address with an instance.
  String? get associationId;

  /// The network (`vpc`).
  DomainType? get domain;

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// The ID of the Amazon Web Services account that owns the network interface.
  String? get networkInterfaceOwnerId;

  /// The private IP address associated with the Elastic IP address.
  String? get privateIpAddress;

  /// Any tags assigned to the Elastic IP address.
  _i2.BuiltList<Tag>? get tags;

  /// The ID of an address pool.
  String? get publicIpv4Pool;

  /// The name of the unique set of Availability Zones, Local Zones, or Wavelength Zones from which Amazon Web Services advertises IP addresses.
  String? get networkBorderGroup;

  /// The customer-owned IP address.
  String? get customerOwnedIp;

  /// The ID of the customer-owned address pool.
  String? get customerOwnedIpv4Pool;

  /// The carrier IP address associated. This option is only available for network interfaces which reside in a subnet in a Wavelength Zone (for example an EC2 instance).
  String? get carrierIp;
  @override
  List<Object?> get props => [
        instanceId,
        publicIp,
        allocationId,
        associationId,
        domain,
        networkInterfaceId,
        networkInterfaceOwnerId,
        privateIpAddress,
        tags,
        publicIpv4Pool,
        networkBorderGroup,
        customerOwnedIp,
        customerOwnedIpv4Pool,
        carrierIp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Address')
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'publicIp',
        publicIp,
      )
      ..add(
        'allocationId',
        allocationId,
      )
      ..add(
        'associationId',
        associationId,
      )
      ..add(
        'domain',
        domain,
      )
      ..add(
        'networkInterfaceId',
        networkInterfaceId,
      )
      ..add(
        'networkInterfaceOwnerId',
        networkInterfaceOwnerId,
      )
      ..add(
        'privateIpAddress',
        privateIpAddress,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'publicIpv4Pool',
        publicIpv4Pool,
      )
      ..add(
        'networkBorderGroup',
        networkBorderGroup,
      )
      ..add(
        'customerOwnedIp',
        customerOwnedIp,
      )
      ..add(
        'customerOwnedIpv4Pool',
        customerOwnedIpv4Pool,
      )
      ..add(
        'carrierIp',
        carrierIp,
      );
    return helper.toString();
  }
}

class AddressEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<Address> {
  const AddressEc2QuerySerializer() : super('Address');

  @override
  Iterable<Type> get types => const [
        Address,
        _$Address,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Address deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddressBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'publicIp':
          result.publicIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'allocationId':
          result.allocationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'associationId':
          result.associationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'domain':
          result.domain = (serializers.deserialize(
            value,
            specifiedType: const FullType(DomainType),
          ) as DomainType);
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInterfaceOwnerId':
          result.networkInterfaceOwnerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'privateIpAddress':
          result.privateIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'publicIpv4Pool':
          result.publicIpv4Pool = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkBorderGroup':
          result.networkBorderGroup = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'customerOwnedIp':
          result.customerOwnedIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'customerOwnedIpv4Pool':
          result.customerOwnedIpv4Pool = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'carrierIp':
          result.carrierIp = (serializers.deserialize(
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
    Address object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AddressResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Address(
      :instanceId,
      :publicIp,
      :allocationId,
      :associationId,
      :domain,
      :networkInterfaceId,
      :networkInterfaceOwnerId,
      :privateIpAddress,
      :tags,
      :publicIpv4Pool,
      :networkBorderGroup,
      :customerOwnedIp,
      :customerOwnedIpv4Pool,
      :carrierIp
    ) = object;
    if (instanceId != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (publicIp != null) {
      result$
        ..add(const _i3.XmlElementName('PublicIp'))
        ..add(serializers.serialize(
          publicIp,
          specifiedType: const FullType(String),
        ));
    }
    if (allocationId != null) {
      result$
        ..add(const _i3.XmlElementName('AllocationId'))
        ..add(serializers.serialize(
          allocationId,
          specifiedType: const FullType(String),
        ));
    }
    if (associationId != null) {
      result$
        ..add(const _i3.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          associationId,
          specifiedType: const FullType(String),
        ));
    }
    if (domain != null) {
      result$
        ..add(const _i3.XmlElementName('Domain'))
        ..add(serializers.serialize(
          domain,
          specifiedType: const FullType(DomainType),
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
    if (networkInterfaceOwnerId != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInterfaceOwnerId'))
        ..add(serializers.serialize(
          networkInterfaceOwnerId,
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
    if (publicIpv4Pool != null) {
      result$
        ..add(const _i3.XmlElementName('PublicIpv4Pool'))
        ..add(serializers.serialize(
          publicIpv4Pool,
          specifiedType: const FullType(String),
        ));
    }
    if (networkBorderGroup != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkBorderGroup'))
        ..add(serializers.serialize(
          networkBorderGroup,
          specifiedType: const FullType(String),
        ));
    }
    if (customerOwnedIp != null) {
      result$
        ..add(const _i3.XmlElementName('CustomerOwnedIp'))
        ..add(serializers.serialize(
          customerOwnedIp,
          specifiedType: const FullType(String),
        ));
    }
    if (customerOwnedIpv4Pool != null) {
      result$
        ..add(const _i3.XmlElementName('CustomerOwnedIpv4Pool'))
        ..add(serializers.serialize(
          customerOwnedIpv4Pool,
          specifiedType: const FullType(String),
        ));
    }
    if (carrierIp != null) {
      result$
        ..add(const _i3.XmlElementName('CarrierIp'))
        ..add(serializers.serialize(
          carrierIp,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
