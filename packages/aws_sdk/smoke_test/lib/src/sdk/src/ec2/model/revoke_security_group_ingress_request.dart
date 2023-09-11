// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.revoke_security_group_ingress_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_permission.dart';

part 'revoke_security_group_ingress_request.g.dart';

abstract class RevokeSecurityGroupIngressRequest
    with
        _i1.HttpInput<RevokeSecurityGroupIngressRequest>,
        _i2.AWSEquatable<RevokeSecurityGroupIngressRequest>
    implements
        Built<RevokeSecurityGroupIngressRequest,
            RevokeSecurityGroupIngressRequestBuilder> {
  factory RevokeSecurityGroupIngressRequest({
    String? cidrIp,
    int? fromPort,
    String? groupId,
    String? groupName,
    List<IpPermission>? ipPermissions,
    String? ipProtocol,
    String? sourceSecurityGroupName,
    String? sourceSecurityGroupOwnerId,
    int? toPort,
    bool? dryRun,
    List<String>? securityGroupRuleIds,
  }) {
    fromPort ??= 0;
    toPort ??= 0;
    dryRun ??= false;
    return _$RevokeSecurityGroupIngressRequest._(
      cidrIp: cidrIp,
      fromPort: fromPort,
      groupId: groupId,
      groupName: groupName,
      ipPermissions:
          ipPermissions == null ? null : _i3.BuiltList(ipPermissions),
      ipProtocol: ipProtocol,
      sourceSecurityGroupName: sourceSecurityGroupName,
      sourceSecurityGroupOwnerId: sourceSecurityGroupOwnerId,
      toPort: toPort,
      dryRun: dryRun,
      securityGroupRuleIds: securityGroupRuleIds == null
          ? null
          : _i3.BuiltList(securityGroupRuleIds),
    );
  }

  factory RevokeSecurityGroupIngressRequest.build(
          [void Function(RevokeSecurityGroupIngressRequestBuilder) updates]) =
      _$RevokeSecurityGroupIngressRequest;

  const RevokeSecurityGroupIngressRequest._();

  factory RevokeSecurityGroupIngressRequest.fromRequest(
    RevokeSecurityGroupIngressRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<RevokeSecurityGroupIngressRequest>>
      serializers = [RevokeSecurityGroupIngressRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RevokeSecurityGroupIngressRequestBuilder b) {
    b
      ..fromPort = 0
      ..toPort = 0
      ..dryRun = false;
  }

  /// The CIDR IP address range. You can't specify this parameter when specifying a source security group.
  String? get cidrIp;

  /// If the protocol is TCP or UDP, this is the start of the port range. If the protocol is ICMP, this is the type number. A value of -1 indicates all ICMP types.
  int get fromPort;

  /// The ID of the security group.
  String? get groupId;

  /// \[Default VPC\] The name of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.
  String? get groupName;

  /// The sets of IP permissions. You can't specify a source security group and a CIDR IP address range in the same set of permissions.
  _i3.BuiltList<IpPermission>? get ipPermissions;

  /// The IP protocol name (`tcp`, `udp`, `icmp`) or number (see [Protocol Numbers](http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)). Use `-1` to specify all.
  String? get ipProtocol;

  /// \[Default VPC\] The name of the source security group. You can't specify this parameter in combination with the following parameters: the CIDR IP address range, the start of the port range, the IP protocol, and the end of the port range. The source security group must be in the same VPC. To revoke a specific rule for an IP protocol and port range, use a set of IP permissions instead.
  String? get sourceSecurityGroupName;

  /// Not supported.
  String? get sourceSecurityGroupOwnerId;

  /// If the protocol is TCP or UDP, this is the end of the port range. If the protocol is ICMP, this is the code. A value of -1 indicates all ICMP codes.
  int get toPort;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of the security group rules.
  _i3.BuiltList<String>? get securityGroupRuleIds;
  @override
  RevokeSecurityGroupIngressRequest getPayload() => this;
  @override
  List<Object?> get props => [
        cidrIp,
        fromPort,
        groupId,
        groupName,
        ipPermissions,
        ipProtocol,
        sourceSecurityGroupName,
        sourceSecurityGroupOwnerId,
        toPort,
        dryRun,
        securityGroupRuleIds,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RevokeSecurityGroupIngressRequest')
          ..add(
            'cidrIp',
            cidrIp,
          )
          ..add(
            'fromPort',
            fromPort,
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
            'ipPermissions',
            ipPermissions,
          )
          ..add(
            'ipProtocol',
            ipProtocol,
          )
          ..add(
            'sourceSecurityGroupName',
            sourceSecurityGroupName,
          )
          ..add(
            'sourceSecurityGroupOwnerId',
            sourceSecurityGroupOwnerId,
          )
          ..add(
            'toPort',
            toPort,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'securityGroupRuleIds',
            securityGroupRuleIds,
          );
    return helper.toString();
  }
}

class RevokeSecurityGroupIngressRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<RevokeSecurityGroupIngressRequest> {
  const RevokeSecurityGroupIngressRequestEc2QuerySerializer()
      : super('RevokeSecurityGroupIngressRequest');

  @override
  Iterable<Type> get types => const [
        RevokeSecurityGroupIngressRequest,
        _$RevokeSecurityGroupIngressRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RevokeSecurityGroupIngressRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RevokeSecurityGroupIngressRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CidrIp':
          result.cidrIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'FromPort':
          result.fromPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'GroupId':
          result.groupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'GroupName':
          result.groupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IpPermissions':
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
        case 'IpProtocol':
          result.ipProtocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SourceSecurityGroupName':
          result.sourceSecurityGroupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SourceSecurityGroupOwnerId':
          result.sourceSecurityGroupOwnerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ToPort':
          result.toPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RevokeSecurityGroupIngressRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RevokeSecurityGroupIngressRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RevokeSecurityGroupIngressRequest(
      :cidrIp,
      :fromPort,
      :groupId,
      :groupName,
      :ipPermissions,
      :ipProtocol,
      :sourceSecurityGroupName,
      :sourceSecurityGroupOwnerId,
      :toPort,
      :dryRun,
      :securityGroupRuleIds
    ) = object;
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
    if (groupId != null) {
      result$
        ..add(const _i1.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          groupId,
          specifiedType: const FullType(String),
        ));
    }
    if (groupName != null) {
      result$
        ..add(const _i1.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          groupName,
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
    if (ipProtocol != null) {
      result$
        ..add(const _i1.XmlElementName('IpProtocol'))
        ..add(serializers.serialize(
          ipProtocol,
          specifiedType: const FullType(String),
        ));
    }
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
    result$
      ..add(const _i1.XmlElementName('ToPort'))
      ..add(serializers.serialize(
        toPort,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
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
    return result$;
  }
}
