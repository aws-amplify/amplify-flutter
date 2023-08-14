// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_address_history_record; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_address_history_resource_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_compliance_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_overlap_status.dart';

part 'ipam_address_history_record.g.dart';

/// The historical record of a CIDR within an IPAM scope. For more information, see [View the history of IP addresses](https://docs.aws.amazon.com/vpc/latest/ipam/view-history-cidr-ipam.html) in the _Amazon VPC IPAM User Guide_.
abstract class IpamAddressHistoryRecord
    with _i1.AWSEquatable<IpamAddressHistoryRecord>
    implements
        Built<IpamAddressHistoryRecord, IpamAddressHistoryRecordBuilder> {
  /// The historical record of a CIDR within an IPAM scope. For more information, see [View the history of IP addresses](https://docs.aws.amazon.com/vpc/latest/ipam/view-history-cidr-ipam.html) in the _Amazon VPC IPAM User Guide_.
  factory IpamAddressHistoryRecord({
    String? resourceOwnerId,
    String? resourceRegion,
    IpamAddressHistoryResourceType? resourceType,
    String? resourceId,
    String? resourceCidr,
    String? resourceName,
    IpamComplianceStatus? resourceComplianceStatus,
    IpamOverlapStatus? resourceOverlapStatus,
    String? vpcId,
    DateTime? sampledStartTime,
    DateTime? sampledEndTime,
  }) {
    return _$IpamAddressHistoryRecord._(
      resourceOwnerId: resourceOwnerId,
      resourceRegion: resourceRegion,
      resourceType: resourceType,
      resourceId: resourceId,
      resourceCidr: resourceCidr,
      resourceName: resourceName,
      resourceComplianceStatus: resourceComplianceStatus,
      resourceOverlapStatus: resourceOverlapStatus,
      vpcId: vpcId,
      sampledStartTime: sampledStartTime,
      sampledEndTime: sampledEndTime,
    );
  }

  /// The historical record of a CIDR within an IPAM scope. For more information, see [View the history of IP addresses](https://docs.aws.amazon.com/vpc/latest/ipam/view-history-cidr-ipam.html) in the _Amazon VPC IPAM User Guide_.
  factory IpamAddressHistoryRecord.build(
          [void Function(IpamAddressHistoryRecordBuilder) updates]) =
      _$IpamAddressHistoryRecord;

  const IpamAddressHistoryRecord._();

  static const List<_i2.SmithySerializer<IpamAddressHistoryRecord>>
      serializers = [IpamAddressHistoryRecordEc2QuerySerializer()];

  /// The ID of the resource owner.
  String? get resourceOwnerId;

  /// The Amazon Web Services Region of the resource.
  String? get resourceRegion;

  /// The type of the resource.
  IpamAddressHistoryResourceType? get resourceType;

  /// The ID of the resource.
  String? get resourceId;

  /// The CIDR of the resource.
  String? get resourceCidr;

  /// The name of the resource.
  String? get resourceName;

  /// The compliance status of a resource. For more information on compliance statuses, see [Monitor CIDR usage by resource](https://docs.aws.amazon.com/vpc/latest/ipam/monitor-cidr-compliance-ipam.html) in the _Amazon VPC IPAM User Guide_.
  IpamComplianceStatus? get resourceComplianceStatus;

  /// The overlap status of an IPAM resource. The overlap status tells you if the CIDR for a resource overlaps with another CIDR in the scope. For more information on overlap statuses, see [Monitor CIDR usage by resource](https://docs.aws.amazon.com/vpc/latest/ipam/monitor-cidr-compliance-ipam.html) in the _Amazon VPC IPAM User Guide_.
  IpamOverlapStatus? get resourceOverlapStatus;

  /// The VPC ID of the resource.
  String? get vpcId;

  /// Sampled start time of the resource-to-CIDR association within the IPAM scope. Changes are picked up in periodic snapshots, so the start time may have occurred before this specific time.
  DateTime? get sampledStartTime;

  /// Sampled end time of the resource-to-CIDR association within the IPAM scope. Changes are picked up in periodic snapshots, so the end time may have occurred before this specific time.
  DateTime? get sampledEndTime;
  @override
  List<Object?> get props => [
        resourceOwnerId,
        resourceRegion,
        resourceType,
        resourceId,
        resourceCidr,
        resourceName,
        resourceComplianceStatus,
        resourceOverlapStatus,
        vpcId,
        sampledStartTime,
        sampledEndTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpamAddressHistoryRecord')
      ..add(
        'resourceOwnerId',
        resourceOwnerId,
      )
      ..add(
        'resourceRegion',
        resourceRegion,
      )
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'resourceCidr',
        resourceCidr,
      )
      ..add(
        'resourceName',
        resourceName,
      )
      ..add(
        'resourceComplianceStatus',
        resourceComplianceStatus,
      )
      ..add(
        'resourceOverlapStatus',
        resourceOverlapStatus,
      )
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'sampledStartTime',
        sampledStartTime,
      )
      ..add(
        'sampledEndTime',
        sampledEndTime,
      );
    return helper.toString();
  }
}

class IpamAddressHistoryRecordEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<IpamAddressHistoryRecord> {
  const IpamAddressHistoryRecordEc2QuerySerializer()
      : super('IpamAddressHistoryRecord');

  @override
  Iterable<Type> get types => const [
        IpamAddressHistoryRecord,
        _$IpamAddressHistoryRecord,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpamAddressHistoryRecord deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamAddressHistoryRecordBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'resourceOwnerId':
          result.resourceOwnerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceRegion':
          result.resourceRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(IpamAddressHistoryResourceType),
          ) as IpamAddressHistoryResourceType);
        case 'resourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceCidr':
          result.resourceCidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceName':
          result.resourceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceComplianceStatus':
          result.resourceComplianceStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(IpamComplianceStatus),
          ) as IpamComplianceStatus);
        case 'resourceOverlapStatus':
          result.resourceOverlapStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(IpamOverlapStatus),
          ) as IpamOverlapStatus);
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'sampledStartTime':
          result.sampledStartTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'sampledEndTime':
          result.sampledEndTime = (serializers.deserialize(
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
    IpamAddressHistoryRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'IpamAddressHistoryRecordResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IpamAddressHistoryRecord(
      :resourceOwnerId,
      :resourceRegion,
      :resourceType,
      :resourceId,
      :resourceCidr,
      :resourceName,
      :resourceComplianceStatus,
      :resourceOverlapStatus,
      :vpcId,
      :sampledStartTime,
      :sampledEndTime
    ) = object;
    if (resourceOwnerId != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceOwnerId'))
        ..add(serializers.serialize(
          resourceOwnerId,
          specifiedType: const FullType(String),
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
    if (resourceType != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          resourceType,
          specifiedType:
              const FullType.nullable(IpamAddressHistoryResourceType),
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
    if (resourceCidr != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceCidr'))
        ..add(serializers.serialize(
          resourceCidr,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceName != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceName'))
        ..add(serializers.serialize(
          resourceName,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceComplianceStatus != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceComplianceStatus'))
        ..add(serializers.serialize(
          resourceComplianceStatus,
          specifiedType: const FullType.nullable(IpamComplianceStatus),
        ));
    }
    if (resourceOverlapStatus != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceOverlapStatus'))
        ..add(serializers.serialize(
          resourceOverlapStatus,
          specifiedType: const FullType.nullable(IpamOverlapStatus),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i2.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (sampledStartTime != null) {
      result$
        ..add(const _i2.XmlElementName('SampledStartTime'))
        ..add(serializers.serialize(
          sampledStartTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (sampledEndTime != null) {
      result$
        ..add(const _i2.XmlElementName('SampledEndTime'))
        ..add(serializers.serialize(
          sampledEndTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
