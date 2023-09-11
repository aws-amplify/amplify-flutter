// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_discovered_resource_cidr; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_type.dart';

part 'ipam_discovered_resource_cidr.g.dart';

/// An IPAM discovered resource CIDR. A discovered resource is a resource CIDR monitored under a resource discovery. The following resources can be discovered: VPCs, Public IPv4 pools, VPC subnets, and Elastic IP addresses. The discovered resource CIDR is the IP address range in CIDR notation that is associated with the resource.
abstract class IpamDiscoveredResourceCidr
    with _i1.AWSEquatable<IpamDiscoveredResourceCidr>
    implements
        Built<IpamDiscoveredResourceCidr, IpamDiscoveredResourceCidrBuilder> {
  /// An IPAM discovered resource CIDR. A discovered resource is a resource CIDR monitored under a resource discovery. The following resources can be discovered: VPCs, Public IPv4 pools, VPC subnets, and Elastic IP addresses. The discovered resource CIDR is the IP address range in CIDR notation that is associated with the resource.
  factory IpamDiscoveredResourceCidr({
    String? ipamResourceDiscoveryId,
    String? resourceRegion,
    String? resourceId,
    String? resourceOwnerId,
    String? resourceCidr,
    IpamResourceType? resourceType,
    List<IpamResourceTag>? resourceTags,
    double? ipUsage,
    String? vpcId,
    DateTime? sampleTime,
  }) {
    return _$IpamDiscoveredResourceCidr._(
      ipamResourceDiscoveryId: ipamResourceDiscoveryId,
      resourceRegion: resourceRegion,
      resourceId: resourceId,
      resourceOwnerId: resourceOwnerId,
      resourceCidr: resourceCidr,
      resourceType: resourceType,
      resourceTags: resourceTags == null ? null : _i2.BuiltList(resourceTags),
      ipUsage: ipUsage,
      vpcId: vpcId,
      sampleTime: sampleTime,
    );
  }

  /// An IPAM discovered resource CIDR. A discovered resource is a resource CIDR monitored under a resource discovery. The following resources can be discovered: VPCs, Public IPv4 pools, VPC subnets, and Elastic IP addresses. The discovered resource CIDR is the IP address range in CIDR notation that is associated with the resource.
  factory IpamDiscoveredResourceCidr.build(
          [void Function(IpamDiscoveredResourceCidrBuilder) updates]) =
      _$IpamDiscoveredResourceCidr;

  const IpamDiscoveredResourceCidr._();

  static const List<_i3.SmithySerializer<IpamDiscoveredResourceCidr>>
      serializers = [IpamDiscoveredResourceCidrEc2QuerySerializer()];

  /// The resource discovery ID.
  String? get ipamResourceDiscoveryId;

  /// The resource Region.
  String? get resourceRegion;

  /// The resource ID.
  String? get resourceId;

  /// The resource owner ID.
  String? get resourceOwnerId;

  /// The resource CIDR.
  String? get resourceCidr;

  /// The resource type.
  IpamResourceType? get resourceType;

  /// The resource tags.
  _i2.BuiltList<IpamResourceTag>? get resourceTags;

  /// The percentage of IP address space in use. To convert the decimal to a percentage, multiply the decimal by 100. Note the following:
  ///
  /// *   For resources that are VPCs, this is the percentage of IP address space in the VPC that's taken up by subnet CIDRs.
  ///
  /// *   For resources that are subnets, if the subnet has an IPv4 CIDR provisioned to it, this is the percentage of IPv4 address space in the subnet that's in use. If the subnet has an IPv6 CIDR provisioned to it, the percentage of IPv6 address space in use is not represented. The percentage of IPv6 address space in use cannot currently be calculated.
  ///
  /// *   For resources that are public IPv4 pools, this is the percentage of IP address space in the pool that's been allocated to Elastic IP addresses (EIPs).
  double? get ipUsage;

  /// The VPC ID.
  String? get vpcId;

  /// The last successful resource discovery time.
  DateTime? get sampleTime;
  @override
  List<Object?> get props => [
        ipamResourceDiscoveryId,
        resourceRegion,
        resourceId,
        resourceOwnerId,
        resourceCidr,
        resourceType,
        resourceTags,
        ipUsage,
        vpcId,
        sampleTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpamDiscoveredResourceCidr')
      ..add(
        'ipamResourceDiscoveryId',
        ipamResourceDiscoveryId,
      )
      ..add(
        'resourceRegion',
        resourceRegion,
      )
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'resourceOwnerId',
        resourceOwnerId,
      )
      ..add(
        'resourceCidr',
        resourceCidr,
      )
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'resourceTags',
        resourceTags,
      )
      ..add(
        'ipUsage',
        ipUsage,
      )
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'sampleTime',
        sampleTime,
      );
    return helper.toString();
  }
}

class IpamDiscoveredResourceCidrEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<IpamDiscoveredResourceCidr> {
  const IpamDiscoveredResourceCidrEc2QuerySerializer()
      : super('IpamDiscoveredResourceCidr');

  @override
  Iterable<Type> get types => const [
        IpamDiscoveredResourceCidr,
        _$IpamDiscoveredResourceCidr,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpamDiscoveredResourceCidr deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamDiscoveredResourceCidrBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipamResourceDiscoveryId':
          result.ipamResourceDiscoveryId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceRegion':
          result.resourceRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceOwnerId':
          result.resourceOwnerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceCidr':
          result.resourceCidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(IpamResourceType),
          ) as IpamResourceType);
        case 'resourceTagSet':
          result.resourceTags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IpamResourceTag)],
            ),
          ) as _i2.BuiltList<IpamResourceTag>));
        case 'ipUsage':
          result.ipUsage = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'sampleTime':
          result.sampleTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    IpamDiscoveredResourceCidr object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'IpamDiscoveredResourceCidrResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IpamDiscoveredResourceCidr(
      :ipamResourceDiscoveryId,
      :resourceRegion,
      :resourceId,
      :resourceOwnerId,
      :resourceCidr,
      :resourceType,
      :resourceTags,
      :ipUsage,
      :vpcId,
      :sampleTime
    ) = object;
    if (ipamResourceDiscoveryId != null) {
      result$
        ..add(const _i3.XmlElementName('IpamResourceDiscoveryId'))
        ..add(serializers.serialize(
          ipamResourceDiscoveryId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceRegion != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceRegion'))
        ..add(serializers.serialize(
          resourceRegion,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceId != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceOwnerId != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceOwnerId'))
        ..add(serializers.serialize(
          resourceOwnerId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceCidr != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceCidr'))
        ..add(serializers.serialize(
          resourceCidr,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceType != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType(IpamResourceType),
        ));
    }
    if (resourceTags != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceTagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          resourceTags,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(IpamResourceTag)],
          ),
        ));
    }
    if (ipUsage != null) {
      result$
        ..add(const _i3.XmlElementName('IpUsage'))
        ..add(serializers.serialize(
          ipUsage,
          specifiedType: const FullType(double),
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
    if (sampleTime != null) {
      result$
        ..add(const _i3.XmlElementName('SampleTime'))
        ..add(serializers.serialize(
          sampleTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
