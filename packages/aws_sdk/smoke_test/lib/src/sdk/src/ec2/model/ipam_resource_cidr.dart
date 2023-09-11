// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_resource_cidr; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_compliance_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_management_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_overlap_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_type.dart';

part 'ipam_resource_cidr.g.dart';

/// The CIDR for an IPAM resource.
abstract class IpamResourceCidr
    with _i1.AWSEquatable<IpamResourceCidr>
    implements Built<IpamResourceCidr, IpamResourceCidrBuilder> {
  /// The CIDR for an IPAM resource.
  factory IpamResourceCidr({
    String? ipamId,
    String? ipamScopeId,
    String? ipamPoolId,
    String? resourceRegion,
    String? resourceOwnerId,
    String? resourceId,
    String? resourceName,
    String? resourceCidr,
    IpamResourceType? resourceType,
    List<IpamResourceTag>? resourceTags,
    double? ipUsage,
    IpamComplianceStatus? complianceStatus,
    IpamManagementState? managementState,
    IpamOverlapStatus? overlapStatus,
    String? vpcId,
  }) {
    return _$IpamResourceCidr._(
      ipamId: ipamId,
      ipamScopeId: ipamScopeId,
      ipamPoolId: ipamPoolId,
      resourceRegion: resourceRegion,
      resourceOwnerId: resourceOwnerId,
      resourceId: resourceId,
      resourceName: resourceName,
      resourceCidr: resourceCidr,
      resourceType: resourceType,
      resourceTags: resourceTags == null ? null : _i2.BuiltList(resourceTags),
      ipUsage: ipUsage,
      complianceStatus: complianceStatus,
      managementState: managementState,
      overlapStatus: overlapStatus,
      vpcId: vpcId,
    );
  }

  /// The CIDR for an IPAM resource.
  factory IpamResourceCidr.build(
      [void Function(IpamResourceCidrBuilder) updates]) = _$IpamResourceCidr;

  const IpamResourceCidr._();

  static const List<_i3.SmithySerializer<IpamResourceCidr>> serializers = [
    IpamResourceCidrEc2QuerySerializer()
  ];

  /// The IPAM ID for an IPAM resource.
  String? get ipamId;

  /// The scope ID for an IPAM resource.
  String? get ipamScopeId;

  /// The pool ID for an IPAM resource.
  String? get ipamPoolId;

  /// The Amazon Web Services Region for an IPAM resource.
  String? get resourceRegion;

  /// The Amazon Web Services account number of the owner of an IPAM resource.
  String? get resourceOwnerId;

  /// The ID of an IPAM resource.
  String? get resourceId;

  /// The name of an IPAM resource.
  String? get resourceName;

  /// The CIDR for an IPAM resource.
  String? get resourceCidr;

  /// The type of IPAM resource.
  IpamResourceType? get resourceType;

  /// The tags for an IPAM resource.
  _i2.BuiltList<IpamResourceTag>? get resourceTags;

  /// The percentage of IP address space in use. To convert the decimal to a percentage, multiply the decimal by 100. Note the following:
  ///
  /// *   For resources that are VPCs, this is the percentage of IP address space in the VPC that's taken up by subnet CIDRs.
  ///
  /// *   For resources that are subnets, if the subnet has an IPv4 CIDR provisioned to it, this is the percentage of IPv4 address space in the subnet that's in use. If the subnet has an IPv6 CIDR provisioned to it, the percentage of IPv6 address space in use is not represented. The percentage of IPv6 address space in use cannot currently be calculated.
  ///
  /// *   For resources that are public IPv4 pools, this is the percentage of IP address space in the pool that's been allocated to Elastic IP addresses (EIPs).
  double? get ipUsage;

  /// The compliance status of the IPAM resource. For more information on compliance statuses, see [Monitor CIDR usage by resource](https://docs.aws.amazon.com/vpc/latest/ipam/monitor-cidr-compliance-ipam.html) in the _Amazon VPC IPAM User Guide_.
  IpamComplianceStatus? get complianceStatus;

  /// The management state of the resource. For more information about management states, see [Monitor CIDR usage by resource](https://docs.aws.amazon.com/vpc/latest/ipam/monitor-cidr-compliance-ipam.html) in the _Amazon VPC IPAM User Guide_.
  IpamManagementState? get managementState;

  /// The overlap status of an IPAM resource. The overlap status tells you if the CIDR for a resource overlaps with another CIDR in the scope. For more information on overlap statuses, see [Monitor CIDR usage by resource](https://docs.aws.amazon.com/vpc/latest/ipam/monitor-cidr-compliance-ipam.html) in the _Amazon VPC IPAM User Guide_.
  IpamOverlapStatus? get overlapStatus;

  /// The ID of a VPC.
  String? get vpcId;
  @override
  List<Object?> get props => [
        ipamId,
        ipamScopeId,
        ipamPoolId,
        resourceRegion,
        resourceOwnerId,
        resourceId,
        resourceName,
        resourceCidr,
        resourceType,
        resourceTags,
        ipUsage,
        complianceStatus,
        managementState,
        overlapStatus,
        vpcId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpamResourceCidr')
      ..add(
        'ipamId',
        ipamId,
      )
      ..add(
        'ipamScopeId',
        ipamScopeId,
      )
      ..add(
        'ipamPoolId',
        ipamPoolId,
      )
      ..add(
        'resourceRegion',
        resourceRegion,
      )
      ..add(
        'resourceOwnerId',
        resourceOwnerId,
      )
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'resourceName',
        resourceName,
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
        'complianceStatus',
        complianceStatus,
      )
      ..add(
        'managementState',
        managementState,
      )
      ..add(
        'overlapStatus',
        overlapStatus,
      )
      ..add(
        'vpcId',
        vpcId,
      );
    return helper.toString();
  }
}

class IpamResourceCidrEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<IpamResourceCidr> {
  const IpamResourceCidrEc2QuerySerializer() : super('IpamResourceCidr');

  @override
  Iterable<Type> get types => const [
        IpamResourceCidr,
        _$IpamResourceCidr,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpamResourceCidr deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamResourceCidrBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipamId':
          result.ipamId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamScopeId':
          result.ipamScopeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamPoolId':
          result.ipamPoolId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceRegion':
          result.resourceRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceOwnerId':
          result.resourceOwnerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceName':
          result.resourceName = (serializers.deserialize(
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
        case 'complianceStatus':
          result.complianceStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(IpamComplianceStatus),
          ) as IpamComplianceStatus);
        case 'managementState':
          result.managementState = (serializers.deserialize(
            value,
            specifiedType: const FullType(IpamManagementState),
          ) as IpamManagementState);
        case 'overlapStatus':
          result.overlapStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(IpamOverlapStatus),
          ) as IpamOverlapStatus);
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
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
    IpamResourceCidr object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'IpamResourceCidrResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IpamResourceCidr(
      :ipamId,
      :ipamScopeId,
      :ipamPoolId,
      :resourceRegion,
      :resourceOwnerId,
      :resourceId,
      :resourceName,
      :resourceCidr,
      :resourceType,
      :resourceTags,
      :ipUsage,
      :complianceStatus,
      :managementState,
      :overlapStatus,
      :vpcId
    ) = object;
    if (ipamId != null) {
      result$
        ..add(const _i3.XmlElementName('IpamId'))
        ..add(serializers.serialize(
          ipamId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamScopeId != null) {
      result$
        ..add(const _i3.XmlElementName('IpamScopeId'))
        ..add(serializers.serialize(
          ipamScopeId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamPoolId != null) {
      result$
        ..add(const _i3.XmlElementName('IpamPoolId'))
        ..add(serializers.serialize(
          ipamPoolId,
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
    if (resourceOwnerId != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceOwnerId'))
        ..add(serializers.serialize(
          resourceOwnerId,
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
    if (resourceName != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceName'))
        ..add(serializers.serialize(
          resourceName,
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
    if (complianceStatus != null) {
      result$
        ..add(const _i3.XmlElementName('ComplianceStatus'))
        ..add(serializers.serialize(
          complianceStatus,
          specifiedType: const FullType(IpamComplianceStatus),
        ));
    }
    if (managementState != null) {
      result$
        ..add(const _i3.XmlElementName('ManagementState'))
        ..add(serializers.serialize(
          managementState,
          specifiedType: const FullType(IpamManagementState),
        ));
    }
    if (overlapStatus != null) {
      result$
        ..add(const _i3.XmlElementName('OverlapStatus'))
        ..add(serializers.serialize(
          overlapStatus,
          specifiedType: const FullType(IpamOverlapStatus),
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
    return result$;
  }
}
