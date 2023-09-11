// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.security_group_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/referenced_security_group.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'security_group_rule.g.dart';

/// Describes a security group rule.
abstract class SecurityGroupRule
    with _i1.AWSEquatable<SecurityGroupRule>
    implements Built<SecurityGroupRule, SecurityGroupRuleBuilder> {
  /// Describes a security group rule.
  factory SecurityGroupRule({
    String? securityGroupRuleId,
    String? groupId,
    String? groupOwnerId,
    bool? isEgress,
    String? ipProtocol,
    int? fromPort,
    int? toPort,
    String? cidrIpv4,
    String? cidrIpv6,
    String? prefixListId,
    ReferencedSecurityGroup? referencedGroupInfo,
    String? description,
    List<Tag>? tags,
  }) {
    isEgress ??= false;
    fromPort ??= 0;
    toPort ??= 0;
    return _$SecurityGroupRule._(
      securityGroupRuleId: securityGroupRuleId,
      groupId: groupId,
      groupOwnerId: groupOwnerId,
      isEgress: isEgress,
      ipProtocol: ipProtocol,
      fromPort: fromPort,
      toPort: toPort,
      cidrIpv4: cidrIpv4,
      cidrIpv6: cidrIpv6,
      prefixListId: prefixListId,
      referencedGroupInfo: referencedGroupInfo,
      description: description,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a security group rule.
  factory SecurityGroupRule.build(
      [void Function(SecurityGroupRuleBuilder) updates]) = _$SecurityGroupRule;

  const SecurityGroupRule._();

  static const List<_i3.SmithySerializer<SecurityGroupRule>> serializers = [
    SecurityGroupRuleEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SecurityGroupRuleBuilder b) {
    b
      ..isEgress = false
      ..fromPort = 0
      ..toPort = 0;
  }

  /// The ID of the security group rule.
  String? get securityGroupRuleId;

  /// The ID of the security group.
  String? get groupId;

  /// The ID of the Amazon Web Services account that owns the security group.
  String? get groupOwnerId;

  /// Indicates whether the security group rule is an outbound rule.
  bool get isEgress;

  /// The IP protocol name (`tcp`, `udp`, `icmp`, `icmpv6`) or number (see [Protocol Numbers](http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)).
  ///
  /// Use `-1` to specify all protocols.
  String? get ipProtocol;

  /// If the protocol is TCP or UDP, this is the start of the port range. If the protocol is ICMP or ICMPv6, this is the type number. A value of -1 indicates all ICMP/ICMPv6 types. If you specify all ICMP/ICMPv6 types, you must specify all ICMP/ICMPv6 codes.
  int get fromPort;

  /// If the protocol is TCP or UDP, this is the end of the port range. If the protocol is ICMP or ICMPv6, this is the type number. A value of -1 indicates all ICMP/ICMPv6 codes. If you specify all ICMP/ICMPv6 types, you must specify all ICMP/ICMPv6 codes.
  int get toPort;

  /// The IPv4 CIDR range.
  String? get cidrIpv4;

  /// The IPv6 CIDR range.
  String? get cidrIpv6;

  /// The ID of the prefix list.
  String? get prefixListId;

  /// Describes the security group that is referenced in the rule.
  ReferencedSecurityGroup? get referencedGroupInfo;

  /// The security group rule description.
  String? get description;

  /// The tags applied to the security group rule.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        securityGroupRuleId,
        groupId,
        groupOwnerId,
        isEgress,
        ipProtocol,
        fromPort,
        toPort,
        cidrIpv4,
        cidrIpv6,
        prefixListId,
        referencedGroupInfo,
        description,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SecurityGroupRule')
      ..add(
        'securityGroupRuleId',
        securityGroupRuleId,
      )
      ..add(
        'groupId',
        groupId,
      )
      ..add(
        'groupOwnerId',
        groupOwnerId,
      )
      ..add(
        'isEgress',
        isEgress,
      )
      ..add(
        'ipProtocol',
        ipProtocol,
      )
      ..add(
        'fromPort',
        fromPort,
      )
      ..add(
        'toPort',
        toPort,
      )
      ..add(
        'cidrIpv4',
        cidrIpv4,
      )
      ..add(
        'cidrIpv6',
        cidrIpv6,
      )
      ..add(
        'prefixListId',
        prefixListId,
      )
      ..add(
        'referencedGroupInfo',
        referencedGroupInfo,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class SecurityGroupRuleEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<SecurityGroupRule> {
  const SecurityGroupRuleEc2QuerySerializer() : super('SecurityGroupRule');

  @override
  Iterable<Type> get types => const [
        SecurityGroupRule,
        _$SecurityGroupRule,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SecurityGroupRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SecurityGroupRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'securityGroupRuleId':
          result.securityGroupRuleId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'groupId':
          result.groupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'groupOwnerId':
          result.groupOwnerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'isEgress':
          result.isEgress = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ipProtocol':
          result.ipProtocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'fromPort':
          result.fromPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'toPort':
          result.toPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'cidrIpv4':
          result.cidrIpv4 = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'cidrIpv6':
          result.cidrIpv6 = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'prefixListId':
          result.prefixListId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'referencedGroupInfo':
          result.referencedGroupInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ReferencedSecurityGroup),
          ) as ReferencedSecurityGroup));
        case 'description':
          result.description = (serializers.deserialize(
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SecurityGroupRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'SecurityGroupRuleResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SecurityGroupRule(
      :securityGroupRuleId,
      :groupId,
      :groupOwnerId,
      :isEgress,
      :ipProtocol,
      :fromPort,
      :toPort,
      :cidrIpv4,
      :cidrIpv6,
      :prefixListId,
      :referencedGroupInfo,
      :description,
      :tags
    ) = object;
    if (securityGroupRuleId != null) {
      result$
        ..add(const _i3.XmlElementName('SecurityGroupRuleId'))
        ..add(serializers.serialize(
          securityGroupRuleId,
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
    if (groupOwnerId != null) {
      result$
        ..add(const _i3.XmlElementName('GroupOwnerId'))
        ..add(serializers.serialize(
          groupOwnerId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('IsEgress'))
      ..add(serializers.serialize(
        isEgress,
        specifiedType: const FullType(bool),
      ));
    if (ipProtocol != null) {
      result$
        ..add(const _i3.XmlElementName('IpProtocol'))
        ..add(serializers.serialize(
          ipProtocol,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('FromPort'))
      ..add(serializers.serialize(
        fromPort,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i3.XmlElementName('ToPort'))
      ..add(serializers.serialize(
        toPort,
        specifiedType: const FullType(int),
      ));
    if (cidrIpv4 != null) {
      result$
        ..add(const _i3.XmlElementName('CidrIpv4'))
        ..add(serializers.serialize(
          cidrIpv4,
          specifiedType: const FullType(String),
        ));
    }
    if (cidrIpv6 != null) {
      result$
        ..add(const _i3.XmlElementName('CidrIpv6'))
        ..add(serializers.serialize(
          cidrIpv6,
          specifiedType: const FullType(String),
        ));
    }
    if (prefixListId != null) {
      result$
        ..add(const _i3.XmlElementName('PrefixListId'))
        ..add(serializers.serialize(
          prefixListId,
          specifiedType: const FullType(String),
        ));
    }
    if (referencedGroupInfo != null) {
      result$
        ..add(const _i3.XmlElementName('ReferencedGroupInfo'))
        ..add(serializers.serialize(
          referencedGroupInfo,
          specifiedType: const FullType(ReferencedSecurityGroup),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
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
    return result$;
  }
}
