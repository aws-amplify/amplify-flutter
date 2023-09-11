// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_multicast_group; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/membership_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_resource_type.dart';

part 'transit_gateway_multicast_group.g.dart';

/// Describes the transit gateway multicast group resources.
abstract class TransitGatewayMulticastGroup
    with
        _i1.AWSEquatable<TransitGatewayMulticastGroup>
    implements
        Built<TransitGatewayMulticastGroup,
            TransitGatewayMulticastGroupBuilder> {
  /// Describes the transit gateway multicast group resources.
  factory TransitGatewayMulticastGroup({
    String? groupIpAddress,
    String? transitGatewayAttachmentId,
    String? subnetId,
    String? resourceId,
    TransitGatewayAttachmentResourceType? resourceType,
    String? resourceOwnerId,
    String? networkInterfaceId,
    bool? groupMember,
    bool? groupSource,
    MembershipType? memberType,
    MembershipType? sourceType,
  }) {
    groupMember ??= false;
    groupSource ??= false;
    return _$TransitGatewayMulticastGroup._(
      groupIpAddress: groupIpAddress,
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      subnetId: subnetId,
      resourceId: resourceId,
      resourceType: resourceType,
      resourceOwnerId: resourceOwnerId,
      networkInterfaceId: networkInterfaceId,
      groupMember: groupMember,
      groupSource: groupSource,
      memberType: memberType,
      sourceType: sourceType,
    );
  }

  /// Describes the transit gateway multicast group resources.
  factory TransitGatewayMulticastGroup.build(
          [void Function(TransitGatewayMulticastGroupBuilder) updates]) =
      _$TransitGatewayMulticastGroup;

  const TransitGatewayMulticastGroup._();

  static const List<_i2.SmithySerializer<TransitGatewayMulticastGroup>>
      serializers = [TransitGatewayMulticastGroupEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayMulticastGroupBuilder b) {
    b
      ..groupMember = false
      ..groupSource = false;
  }

  /// The IP address assigned to the transit gateway multicast group.
  String? get groupIpAddress;

  /// The ID of the transit gateway attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the subnet.
  String? get subnetId;

  /// The ID of the resource.
  String? get resourceId;

  /// The type of resource, for example a VPC attachment.
  TransitGatewayAttachmentResourceType? get resourceType;

  /// The ID of the Amazon Web Services account that owns the transit gateway multicast domain group resource.
  String? get resourceOwnerId;

  /// The ID of the transit gateway attachment.
  String? get networkInterfaceId;

  /// Indicates that the resource is a transit gateway multicast group member.
  bool get groupMember;

  /// Indicates that the resource is a transit gateway multicast group member.
  bool get groupSource;

  /// The member type (for example, `static`).
  MembershipType? get memberType;

  /// The source type.
  MembershipType? get sourceType;
  @override
  List<Object?> get props => [
        groupIpAddress,
        transitGatewayAttachmentId,
        subnetId,
        resourceId,
        resourceType,
        resourceOwnerId,
        networkInterfaceId,
        groupMember,
        groupSource,
        memberType,
        sourceType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayMulticastGroup')
      ..add(
        'groupIpAddress',
        groupIpAddress,
      )
      ..add(
        'transitGatewayAttachmentId',
        transitGatewayAttachmentId,
      )
      ..add(
        'subnetId',
        subnetId,
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
        'resourceOwnerId',
        resourceOwnerId,
      )
      ..add(
        'networkInterfaceId',
        networkInterfaceId,
      )
      ..add(
        'groupMember',
        groupMember,
      )
      ..add(
        'groupSource',
        groupSource,
      )
      ..add(
        'memberType',
        memberType,
      )
      ..add(
        'sourceType',
        sourceType,
      );
    return helper.toString();
  }
}

class TransitGatewayMulticastGroupEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<TransitGatewayMulticastGroup> {
  const TransitGatewayMulticastGroupEc2QuerySerializer()
      : super('TransitGatewayMulticastGroup');

  @override
  Iterable<Type> get types => const [
        TransitGatewayMulticastGroup,
        _$TransitGatewayMulticastGroup,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayMulticastGroup deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayMulticastGroupBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'groupIpAddress':
          result.groupIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transitGatewayAttachmentId':
          result.transitGatewayAttachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
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
            specifiedType: const FullType(TransitGatewayAttachmentResourceType),
          ) as TransitGatewayAttachmentResourceType);
        case 'resourceOwnerId':
          result.resourceOwnerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'groupMember':
          result.groupMember = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'groupSource':
          result.groupSource = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'memberType':
          result.memberType = (serializers.deserialize(
            value,
            specifiedType: const FullType(MembershipType),
          ) as MembershipType);
        case 'sourceType':
          result.sourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(MembershipType),
          ) as MembershipType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayMulticastGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TransitGatewayMulticastGroupResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayMulticastGroup(
      :groupIpAddress,
      :transitGatewayAttachmentId,
      :subnetId,
      :resourceId,
      :resourceType,
      :resourceOwnerId,
      :networkInterfaceId,
      :groupMember,
      :groupSource,
      :memberType,
      :sourceType
    ) = object;
    if (groupIpAddress != null) {
      result$
        ..add(const _i2.XmlElementName('GroupIpAddress'))
        ..add(serializers.serialize(
          groupIpAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayAttachmentId != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transitGatewayAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    if (subnetId != null) {
      result$
        ..add(const _i2.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
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
          specifiedType: const FullType(TransitGatewayAttachmentResourceType),
        ));
    }
    if (resourceOwnerId != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceOwnerId'))
        ..add(serializers.serialize(
          resourceOwnerId,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInterfaceId != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('GroupMember'))
      ..add(serializers.serialize(
        groupMember,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i2.XmlElementName('GroupSource'))
      ..add(serializers.serialize(
        groupSource,
        specifiedType: const FullType(bool),
      ));
    if (memberType != null) {
      result$
        ..add(const _i2.XmlElementName('MemberType'))
        ..add(serializers.serialize(
          memberType,
          specifiedType: const FullType(MembershipType),
        ));
    }
    if (sourceType != null) {
      result$
        ..add(const _i2.XmlElementName('SourceType'))
        ..add(serializers.serialize(
          sourceType,
          specifiedType: const FullType(MembershipType),
        ));
    }
    return result$;
  }
}
