// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.update_security_group_rule_descriptions_ingress_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_permission.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_rule_description.dart';

part 'update_security_group_rule_descriptions_ingress_request.g.dart';

abstract class UpdateSecurityGroupRuleDescriptionsIngressRequest
    with
        _i1.HttpInput<UpdateSecurityGroupRuleDescriptionsIngressRequest>,
        _i2.AWSEquatable<UpdateSecurityGroupRuleDescriptionsIngressRequest>
    implements
        Built<UpdateSecurityGroupRuleDescriptionsIngressRequest,
            UpdateSecurityGroupRuleDescriptionsIngressRequestBuilder> {
  factory UpdateSecurityGroupRuleDescriptionsIngressRequest({
    bool? dryRun,
    String? groupId,
    String? groupName,
    List<IpPermission>? ipPermissions,
    List<SecurityGroupRuleDescription>? securityGroupRuleDescriptions,
  }) {
    dryRun ??= false;
    return _$UpdateSecurityGroupRuleDescriptionsIngressRequest._(
      dryRun: dryRun,
      groupId: groupId,
      groupName: groupName,
      ipPermissions:
          ipPermissions == null ? null : _i3.BuiltList(ipPermissions),
      securityGroupRuleDescriptions: securityGroupRuleDescriptions == null
          ? null
          : _i3.BuiltList(securityGroupRuleDescriptions),
    );
  }

  factory UpdateSecurityGroupRuleDescriptionsIngressRequest.build(
      [void Function(UpdateSecurityGroupRuleDescriptionsIngressRequestBuilder)
          updates]) = _$UpdateSecurityGroupRuleDescriptionsIngressRequest;

  const UpdateSecurityGroupRuleDescriptionsIngressRequest._();

  factory UpdateSecurityGroupRuleDescriptionsIngressRequest.fromRequest(
    UpdateSecurityGroupRuleDescriptionsIngressRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1
          .SmithySerializer<UpdateSecurityGroupRuleDescriptionsIngressRequest>>
      serializers = [
    UpdateSecurityGroupRuleDescriptionsIngressRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      UpdateSecurityGroupRuleDescriptionsIngressRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.
  String? get groupId;

  /// \[Default VPC\] The name of the security group. You must specify either the security group ID or the security group name. For security groups in a nondefault VPC, you must specify the security group ID.
  String? get groupName;

  /// The IP permissions for the security group rule. You must specify either IP permissions or a description.
  _i3.BuiltList<IpPermission>? get ipPermissions;

  /// The description for the ingress security group rules. You must specify either a description or IP permissions.
  _i3.BuiltList<SecurityGroupRuleDescription>?
      get securityGroupRuleDescriptions;
  @override
  UpdateSecurityGroupRuleDescriptionsIngressRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        groupId,
        groupName,
        ipPermissions,
        securityGroupRuleDescriptions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'UpdateSecurityGroupRuleDescriptionsIngressRequest')
      ..add(
        'dryRun',
        dryRun,
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
        'securityGroupRuleDescriptions',
        securityGroupRuleDescriptions,
      );
    return helper.toString();
  }
}

class UpdateSecurityGroupRuleDescriptionsIngressRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        UpdateSecurityGroupRuleDescriptionsIngressRequest> {
  const UpdateSecurityGroupRuleDescriptionsIngressRequestEc2QuerySerializer()
      : super('UpdateSecurityGroupRuleDescriptionsIngressRequest');

  @override
  Iterable<Type> get types => const [
        UpdateSecurityGroupRuleDescriptionsIngressRequest,
        _$UpdateSecurityGroupRuleDescriptionsIngressRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UpdateSecurityGroupRuleDescriptionsIngressRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateSecurityGroupRuleDescriptionsIngressRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
        case 'SecurityGroupRuleDescription':
          result.securityGroupRuleDescriptions
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(SecurityGroupRuleDescription)],
            ),
          ) as _i3.BuiltList<SecurityGroupRuleDescription>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateSecurityGroupRuleDescriptionsIngressRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UpdateSecurityGroupRuleDescriptionsIngressRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final UpdateSecurityGroupRuleDescriptionsIngressRequest(
      :dryRun,
      :groupId,
      :groupName,
      :ipPermissions,
      :securityGroupRuleDescriptions
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
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(IpPermission)],
          ),
        ));
    }
    if (securityGroupRuleDescriptions != null) {
      result$
        ..add(const _i1.XmlElementName('SecurityGroupRuleDescription'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroupRuleDescriptions,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(SecurityGroupRuleDescription)],
          ),
        ));
    }
    return result$;
  }
}
