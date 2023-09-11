// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.stale_security_group; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/stale_ip_permission.dart';

part 'stale_security_group.g.dart';

/// Describes a stale security group (a security group that contains stale rules).
abstract class StaleSecurityGroup
    with _i1.AWSEquatable<StaleSecurityGroup>
    implements Built<StaleSecurityGroup, StaleSecurityGroupBuilder> {
  /// Describes a stale security group (a security group that contains stale rules).
  factory StaleSecurityGroup({
    String? description,
    String? groupId,
    String? groupName,
    List<StaleIpPermission>? staleIpPermissions,
    List<StaleIpPermission>? staleIpPermissionsEgress,
    String? vpcId,
  }) {
    return _$StaleSecurityGroup._(
      description: description,
      groupId: groupId,
      groupName: groupName,
      staleIpPermissions:
          staleIpPermissions == null ? null : _i2.BuiltList(staleIpPermissions),
      staleIpPermissionsEgress: staleIpPermissionsEgress == null
          ? null
          : _i2.BuiltList(staleIpPermissionsEgress),
      vpcId: vpcId,
    );
  }

  /// Describes a stale security group (a security group that contains stale rules).
  factory StaleSecurityGroup.build(
          [void Function(StaleSecurityGroupBuilder) updates]) =
      _$StaleSecurityGroup;

  const StaleSecurityGroup._();

  static const List<_i3.SmithySerializer<StaleSecurityGroup>> serializers = [
    StaleSecurityGroupEc2QuerySerializer()
  ];

  /// The description of the security group.
  String? get description;

  /// The ID of the security group.
  String? get groupId;

  /// The name of the security group.
  String? get groupName;

  /// Information about the stale inbound rules in the security group.
  _i2.BuiltList<StaleIpPermission>? get staleIpPermissions;

  /// Information about the stale outbound rules in the security group.
  _i2.BuiltList<StaleIpPermission>? get staleIpPermissionsEgress;

  /// The ID of the VPC for the security group.
  String? get vpcId;
  @override
  List<Object?> get props => [
        description,
        groupId,
        groupName,
        staleIpPermissions,
        staleIpPermissionsEgress,
        vpcId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StaleSecurityGroup')
      ..add(
        'description',
        description,
      )
      ..add(
        'groupId',
        groupId,
      )
      ..add(
        'groupName',
        groupName,
      )
      ..add(
        'staleIpPermissions',
        staleIpPermissions,
      )
      ..add(
        'staleIpPermissionsEgress',
        staleIpPermissionsEgress,
      )
      ..add(
        'vpcId',
        vpcId,
      );
    return helper.toString();
  }
}

class StaleSecurityGroupEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<StaleSecurityGroup> {
  const StaleSecurityGroupEc2QuerySerializer() : super('StaleSecurityGroup');

  @override
  Iterable<Type> get types => const [
        StaleSecurityGroup,
        _$StaleSecurityGroup,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StaleSecurityGroup deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StaleSecurityGroupBuilder();
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
        case 'groupId':
          result.groupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'groupName':
          result.groupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'staleIpPermissions':
          result.staleIpPermissions.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(StaleIpPermission)],
            ),
          ) as _i2.BuiltList<StaleIpPermission>));
        case 'staleIpPermissionsEgress':
          result.staleIpPermissionsEgress
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(StaleIpPermission)],
            ),
          ) as _i2.BuiltList<StaleIpPermission>));
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
    StaleSecurityGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'StaleSecurityGroupResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final StaleSecurityGroup(
      :description,
      :groupId,
      :groupName,
      :staleIpPermissions,
      :staleIpPermissionsEgress,
      :vpcId
    ) = object;
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (groupId != null) {
      result$
        ..add(const _i3.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          groupId,
          specifiedType: const FullType(String),
        ));
    }
    if (groupName != null) {
      result$
        ..add(const _i3.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          groupName,
          specifiedType: const FullType(String),
        ));
    }
    if (staleIpPermissions != null) {
      result$
        ..add(const _i3.XmlElementName('StaleIpPermissions'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          staleIpPermissions,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(StaleIpPermission)],
          ),
        ));
    }
    if (staleIpPermissionsEgress != null) {
      result$
        ..add(const _i3.XmlElementName('StaleIpPermissionsEgress'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          staleIpPermissionsEgress,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(StaleIpPermission)],
          ),
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
