// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.revoke_security_group_egress_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_permission.dart';

part 'revoke_security_group_egress_request.g.dart';

abstract class RevokeSecurityGroupEgressRequest
    with
        _i1.HttpInput<RevokeSecurityGroupEgressRequest>,
        _i2.AWSEquatable<RevokeSecurityGroupEgressRequest>
    implements
        Built<RevokeSecurityGroupEgressRequest,
            RevokeSecurityGroupEgressRequestBuilder> {
  factory RevokeSecurityGroupEgressRequest({
    bool? dryRun,
    String? groupId,
    List<IpPermission>? ipPermissions,
    List<String>? securityGroupRuleIds,
    String? cidrIp,
    int? fromPort,
    String? ipProtocol,
    int? toPort,
    String? sourceSecurityGroupName,
    String? sourceSecurityGroupOwnerId,
  }) {
    dryRun ??= false;
    fromPort ??= 0;
    toPort ??= 0;
    return _$RevokeSecurityGroupEgressRequest._(
      dryRun: dryRun,
      groupId: groupId,
      ipPermissions:
          ipPermissions == null ? null : _i3.BuiltList(ipPermissions),
      securityGroupRuleIds: securityGroupRuleIds == null
          ? null
          : _i3.BuiltList(securityGroupRuleIds),
      cidrIp: cidrIp,
      fromPort: fromPort,
      ipProtocol: ipProtocol,
      toPort: toPort,
      sourceSecurityGroupName: sourceSecurityGroupName,
      sourceSecurityGroupOwnerId: sourceSecurityGroupOwnerId,
    );
  }

  factory RevokeSecurityGroupEgressRequest.build(
          [void Function(RevokeSecurityGroupEgressRequestBuilder) updates]) =
      _$RevokeSecurityGroupEgressRequest;

  const RevokeSecurityGroupEgressRequest._();

  factory RevokeSecurityGroupEgressRequest.fromRequest(
    RevokeSecurityGroupEgressRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<RevokeSecurityGroupEgressRequest>>
      serializers = [RevokeSecurityGroupEgressRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RevokeSecurityGroupEgressRequestBuilder b) {
    b
      ..dryRun = false
      ..fromPort = 0
      ..toPort = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the security group.
  String? get groupId;

  /// The sets of IP permissions. You can't specify a destination security group and a CIDR IP address range in the same set of permissions.
  _i3.BuiltList<IpPermission>? get ipPermissions;

  /// The IDs of the security group rules.
  _i3.BuiltList<String>? get securityGroupRuleIds;

  /// Not supported. Use a set of IP permissions to specify the CIDR.
  String? get cidrIp;

  /// Not supported. Use a set of IP permissions to specify the port.
  int get fromPort;

  /// Not supported. Use a set of IP permissions to specify the protocol name or number.
  String? get ipProtocol;

  /// Not supported. Use a set of IP permissions to specify the port.
  int get toPort;

  /// Not supported. Use a set of IP permissions to specify a destination security group.
  String? get sourceSecurityGroupName;

  /// Not supported. Use a set of IP permissions to specify a destination security group.
  String? get sourceSecurityGroupOwnerId;
  @override
  RevokeSecurityGroupEgressRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        groupId,
        ipPermissions,
        securityGroupRuleIds,
        cidrIp,
        fromPort,
        ipProtocol,
        toPort,
        sourceSecurityGroupName,
        sourceSecurityGroupOwnerId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RevokeSecurityGroupEgressRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'groupId',
            groupId,
          )
          ..add(
            'ipPermissions',
            ipPermissions,
          )
          ..add(
            'securityGroupRuleIds',
            securityGroupRuleIds,
          )
          ..add(
            'cidrIp',
            cidrIp,
          )
          ..add(
            'fromPort',
            fromPort,
          )
          ..add(
            'ipProtocol',
            ipProtocol,
          )
          ..add(
            'toPort',
            toPort,
          )
          ..add(
            'sourceSecurityGroupName',
            sourceSecurityGroupName,
          )
          ..add(
            'sourceSecurityGroupOwnerId',
            sourceSecurityGroupOwnerId,
          );
    return helper.toString();
  }
}

class RevokeSecurityGroupEgressRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<RevokeSecurityGroupEgressRequest> {
  const RevokeSecurityGroupEgressRequestEc2QuerySerializer()
      : super('RevokeSecurityGroupEgressRequest');

  @override
  Iterable<Type> get types => const [
        RevokeSecurityGroupEgressRequest,
        _$RevokeSecurityGroupEgressRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RevokeSecurityGroupEgressRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RevokeSecurityGroupEgressRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'groupId':
          result.groupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipPermissions':
          result.ipPermissions.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(IpPermission)],
            ),
          ) as _i3.BuiltList<IpPermission>));
        case 'SecurityGroupRuleId':
          result.securityGroupRuleIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'cidrIp':
          result.cidrIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'fromPort':
          result.fromPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ipProtocol':
          result.ipProtocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'toPort':
          result.toPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'sourceSecurityGroupName':
          result.sourceSecurityGroupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'sourceSecurityGroupOwnerId':
          result.sourceSecurityGroupOwnerId = (serializers.deserialize(
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
    RevokeSecurityGroupEgressRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RevokeSecurityGroupEgressRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RevokeSecurityGroupEgressRequest(
      :dryRun,
      :groupId,
      :ipPermissions,
      :securityGroupRuleIds,
      :cidrIp,
      :fromPort,
      :ipProtocol,
      :toPort,
      :sourceSecurityGroupName,
      :sourceSecurityGroupOwnerId
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (groupId != null) {
      result$
        ..add(const _i1.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          groupId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipPermissions != null) {
      result$
        ..add(const _i1.XmlElementName('IpPermissions'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipPermissions,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(IpPermission)],
          ),
        ));
    }
    if (securityGroupRuleIds != null) {
      result$
        ..add(const _i1.XmlElementName('SecurityGroupRuleId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroupRuleIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (cidrIp != null) {
      result$
        ..add(const _i1.XmlElementName('CidrIp'))
        ..add(serializers.serialize(
          cidrIp,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('FromPort'))
      ..add(serializers.serialize(
        fromPort,
        specifiedType: const FullType(int),
      ));
    if (ipProtocol != null) {
      result$
        ..add(const _i1.XmlElementName('IpProtocol'))
        ..add(serializers.serialize(
          ipProtocol,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('ToPort'))
      ..add(serializers.serialize(
        toPort,
        specifiedType: const FullType(int),
      ));
    if (sourceSecurityGroupName != null) {
      result$
        ..add(const _i1.XmlElementName('SourceSecurityGroupName'))
        ..add(serializers.serialize(
          sourceSecurityGroupName,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceSecurityGroupOwnerId != null) {
      result$
        ..add(const _i1.XmlElementName('SourceSecurityGroupOwnerId'))
        ..add(serializers.serialize(
          sourceSecurityGroupOwnerId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
