// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_pool_allocation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_allocation_resource_type.dart';

part 'ipam_pool_allocation.g.dart';

/// In IPAM, an allocation is a CIDR assignment from an IPAM pool to another IPAM pool or to a resource.
abstract class IpamPoolAllocation
    with _i1.AWSEquatable<IpamPoolAllocation>
    implements Built<IpamPoolAllocation, IpamPoolAllocationBuilder> {
  /// In IPAM, an allocation is a CIDR assignment from an IPAM pool to another IPAM pool or to a resource.
  factory IpamPoolAllocation({
    String? cidr,
    String? ipamPoolAllocationId,
    String? description,
    String? resourceId,
    IpamPoolAllocationResourceType? resourceType,
    String? resourceRegion,
    String? resourceOwner,
  }) {
    return _$IpamPoolAllocation._(
      cidr: cidr,
      ipamPoolAllocationId: ipamPoolAllocationId,
      description: description,
      resourceId: resourceId,
      resourceType: resourceType,
      resourceRegion: resourceRegion,
      resourceOwner: resourceOwner,
    );
  }

  /// In IPAM, an allocation is a CIDR assignment from an IPAM pool to another IPAM pool or to a resource.
  factory IpamPoolAllocation.build(
          [void Function(IpamPoolAllocationBuilder) updates]) =
      _$IpamPoolAllocation;

  const IpamPoolAllocation._();

  static const List<_i2.SmithySerializer<IpamPoolAllocation>> serializers = [
    IpamPoolAllocationEc2QuerySerializer()
  ];

  /// The CIDR for the allocation. A CIDR is a representation of an IP address and its associated network mask (or netmask) and refers to a range of IP addresses. An IPv4 CIDR example is `10.24.34.0/23`. An IPv6 CIDR example is `2001:DB8::/32`.
  String? get cidr;

  /// The ID of an allocation.
  String? get ipamPoolAllocationId;

  /// A description of the pool allocation.
  String? get description;

  /// The ID of the resource.
  String? get resourceId;

  /// The type of the resource.
  IpamPoolAllocationResourceType? get resourceType;

  /// The Amazon Web Services Region of the resource.
  String? get resourceRegion;

  /// The owner of the resource.
  String? get resourceOwner;
  @override
  List<Object?> get props => [
        cidr,
        ipamPoolAllocationId,
        description,
        resourceId,
        resourceType,
        resourceRegion,
        resourceOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpamPoolAllocation')
      ..add(
        'cidr',
        cidr,
      )
      ..add(
        'ipamPoolAllocationId',
        ipamPoolAllocationId,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'resourceRegion',
        resourceRegion,
      )
      ..add(
        'resourceOwner',
        resourceOwner,
      );
    return helper.toString();
  }
}

class IpamPoolAllocationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<IpamPoolAllocation> {
  const IpamPoolAllocationEc2QuerySerializer() : super('IpamPoolAllocation');

  @override
  Iterable<Type> get types => const [
        IpamPoolAllocation,
        _$IpamPoolAllocation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpamPoolAllocation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamPoolAllocationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'cidr':
          result.cidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamPoolAllocationId':
          result.ipamPoolAllocationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(IpamPoolAllocationResourceType),
          ) as IpamPoolAllocationResourceType);
        case 'resourceRegion':
          result.resourceRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceOwner':
          result.resourceOwner = (serializers.deserialize(
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
    IpamPoolAllocation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'IpamPoolAllocationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IpamPoolAllocation(
      :cidr,
      :ipamPoolAllocationId,
      :description,
      :resourceId,
      :resourceType,
      :resourceRegion,
      :resourceOwner
    ) = object;
    if (cidr != null) {
      result$
        ..add(const _i2.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          cidr,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamPoolAllocationId != null) {
      result$
        ..add(const _i2.XmlElementName('IpamPoolAllocationId'))
        ..add(serializers.serialize(
          ipamPoolAllocationId,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceId != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceType != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType(IpamPoolAllocationResourceType),
        ));
    }
    if (resourceRegion != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceRegion'))
        ..add(serializers.serialize(
          resourceRegion,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceOwner != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceOwner'))
        ..add(serializers.serialize(
          resourceOwner,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
