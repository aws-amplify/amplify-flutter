// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.security_group_rule_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'security_group_rule_request.g.dart';

/// Describes a security group rule.
///
/// You must specify exactly one of the following parameters, based on the rule type:
///
/// *   CidrIpv4
///
/// *   CidrIpv6
///
/// *   PrefixListId
///
/// *   ReferencedGroupId
///
///
/// When you modify a rule, you cannot change the rule type. For example, if the rule uses an IPv4 address range, you must use `CidrIpv4` to specify a new IPv4 address range.
abstract class SecurityGroupRuleRequest
    with _i1.AWSEquatable<SecurityGroupRuleRequest>
    implements
        Built<SecurityGroupRuleRequest, SecurityGroupRuleRequestBuilder> {
  /// Describes a security group rule.
  ///
  /// You must specify exactly one of the following parameters, based on the rule type:
  ///
  /// *   CidrIpv4
  ///
  /// *   CidrIpv6
  ///
  /// *   PrefixListId
  ///
  /// *   ReferencedGroupId
  ///
  ///
  /// When you modify a rule, you cannot change the rule type. For example, if the rule uses an IPv4 address range, you must use `CidrIpv4` to specify a new IPv4 address range.
  factory SecurityGroupRuleRequest({
    String? ipProtocol,
    int? fromPort,
    int? toPort,
    String? cidrIpv4,
    String? cidrIpv6,
    String? prefixListId,
    String? referencedGroupId,
    String? description,
  }) {
    fromPort ??= 0;
    toPort ??= 0;
    return _$SecurityGroupRuleRequest._(
      ipProtocol: ipProtocol,
      fromPort: fromPort,
      toPort: toPort,
      cidrIpv4: cidrIpv4,
      cidrIpv6: cidrIpv6,
      prefixListId: prefixListId,
      referencedGroupId: referencedGroupId,
      description: description,
    );
  }

  /// Describes a security group rule.
  ///
  /// You must specify exactly one of the following parameters, based on the rule type:
  ///
  /// *   CidrIpv4
  ///
  /// *   CidrIpv6
  ///
  /// *   PrefixListId
  ///
  /// *   ReferencedGroupId
  ///
  ///
  /// When you modify a rule, you cannot change the rule type. For example, if the rule uses an IPv4 address range, you must use `CidrIpv4` to specify a new IPv4 address range.
  factory SecurityGroupRuleRequest.build(
          [void Function(SecurityGroupRuleRequestBuilder) updates]) =
      _$SecurityGroupRuleRequest;

  const SecurityGroupRuleRequest._();

  static const List<_i2.SmithySerializer<SecurityGroupRuleRequest>>
      serializers = [SecurityGroupRuleRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SecurityGroupRuleRequestBuilder b) {
    b
      ..fromPort = 0
      ..toPort = 0;
  }

  /// The IP protocol name (`tcp`, `udp`, `icmp`, `icmpv6`) or number (see [Protocol Numbers](http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)).
  ///
  /// Use `-1` to specify all protocols.
  String? get ipProtocol;

  /// If the protocol is TCP or UDP, this is the start of the port range. If the protocol is ICMP or ICMPv6, this is the type number. A value of -1 indicates all ICMP/ICMPv6 types. If you specify all ICMP/ICMPv6 types, you must specify all ICMP/ICMPv6 codes.
  int get fromPort;

  /// If the protocol is TCP or UDP, this is the end of the port range. If the protocol is ICMP or ICMPv6, this is the code. A value of -1 indicates all ICMP/ICMPv6 codes. If you specify all ICMP/ICMPv6 types, you must specify all ICMP/ICMPv6 codes.
  int get toPort;

  /// The IPv4 CIDR range. To specify a single IPv4 address, use the /32 prefix length.
  String? get cidrIpv4;

  /// The IPv6 CIDR range. To specify a single IPv6 address, use the /128 prefix length.
  String? get cidrIpv6;

  /// The ID of the prefix list.
  String? get prefixListId;

  /// The ID of the security group that is referenced in the security group rule.
  String? get referencedGroupId;

  /// The description of the security group rule.
  String? get description;
  @override
  List<Object?> get props => [
        ipProtocol,
        fromPort,
        toPort,
        cidrIpv4,
        cidrIpv6,
        prefixListId,
        referencedGroupId,
        description,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SecurityGroupRuleRequest')
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
        'referencedGroupId',
        referencedGroupId,
      )
      ..add(
        'description',
        description,
      );
    return helper.toString();
  }
}

class SecurityGroupRuleRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SecurityGroupRuleRequest> {
  const SecurityGroupRuleRequestEc2QuerySerializer()
      : super('SecurityGroupRuleRequest');

  @override
  Iterable<Type> get types => const [
        SecurityGroupRuleRequest,
        _$SecurityGroupRuleRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SecurityGroupRuleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SecurityGroupRuleRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IpProtocol':
          result.ipProtocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'FromPort':
          result.fromPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ToPort':
          result.toPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'CidrIpv4':
          result.cidrIpv4 = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CidrIpv6':
          result.cidrIpv6 = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PrefixListId':
          result.prefixListId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ReferencedGroupId':
          result.referencedGroupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
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
    SecurityGroupRuleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SecurityGroupRuleRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SecurityGroupRuleRequest(
      :ipProtocol,
      :fromPort,
      :toPort,
      :cidrIpv4,
      :cidrIpv6,
      :prefixListId,
      :referencedGroupId,
      :description
    ) = object;
    if (ipProtocol != null) {
      result$
        ..add(const _i2.XmlElementName('IpProtocol'))
        ..add(serializers.serialize(
          ipProtocol,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('FromPort'))
      ..add(serializers.serialize(
        fromPort,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i2.XmlElementName('ToPort'))
      ..add(serializers.serialize(
        toPort,
        specifiedType: const FullType(int),
      ));
    if (cidrIpv4 != null) {
      result$
        ..add(const _i2.XmlElementName('CidrIpv4'))
        ..add(serializers.serialize(
          cidrIpv4,
          specifiedType: const FullType(String),
        ));
    }
    if (cidrIpv6 != null) {
      result$
        ..add(const _i2.XmlElementName('CidrIpv6'))
        ..add(serializers.serialize(
          cidrIpv6,
          specifiedType: const FullType(String),
        ));
    }
    if (prefixListId != null) {
      result$
        ..add(const _i2.XmlElementName('PrefixListId'))
        ..add(serializers.serialize(
          prefixListId,
          specifiedType: const FullType(String),
        ));
    }
    if (referencedGroupId != null) {
      result$
        ..add(const _i2.XmlElementName('ReferencedGroupId'))
        ..add(serializers.serialize(
          referencedGroupId,
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
    return result$;
  }
}
