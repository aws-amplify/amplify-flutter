// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.analysis_security_group_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/port_range.dart';

part 'analysis_security_group_rule.g.dart';

/// Describes a security group rule.
abstract class AnalysisSecurityGroupRule
    with _i1.AWSEquatable<AnalysisSecurityGroupRule>
    implements
        Built<AnalysisSecurityGroupRule, AnalysisSecurityGroupRuleBuilder> {
  /// Describes a security group rule.
  factory AnalysisSecurityGroupRule({
    String? cidr,
    String? direction,
    String? securityGroupId,
    PortRange? portRange,
    String? prefixListId,
    String? protocol,
  }) {
    return _$AnalysisSecurityGroupRule._(
      cidr: cidr,
      direction: direction,
      securityGroupId: securityGroupId,
      portRange: portRange,
      prefixListId: prefixListId,
      protocol: protocol,
    );
  }

  /// Describes a security group rule.
  factory AnalysisSecurityGroupRule.build(
          [void Function(AnalysisSecurityGroupRuleBuilder) updates]) =
      _$AnalysisSecurityGroupRule;

  const AnalysisSecurityGroupRule._();

  static const List<_i2.SmithySerializer<AnalysisSecurityGroupRule>>
      serializers = [AnalysisSecurityGroupRuleEc2QuerySerializer()];

  /// The IPv4 address range, in CIDR notation.
  String? get cidr;

  /// The direction. The following are the possible values:
  ///
  /// *   egress
  ///
  /// *   ingress
  String? get direction;

  /// The security group ID.
  String? get securityGroupId;

  /// The port range.
  PortRange? get portRange;

  /// The prefix list ID.
  String? get prefixListId;

  /// The protocol name.
  String? get protocol;
  @override
  List<Object?> get props => [
        cidr,
        direction,
        securityGroupId,
        portRange,
        prefixListId,
        protocol,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AnalysisSecurityGroupRule')
      ..add(
        'cidr',
        cidr,
      )
      ..add(
        'direction',
        direction,
      )
      ..add(
        'securityGroupId',
        securityGroupId,
      )
      ..add(
        'portRange',
        portRange,
      )
      ..add(
        'prefixListId',
        prefixListId,
      )
      ..add(
        'protocol',
        protocol,
      );
    return helper.toString();
  }
}

class AnalysisSecurityGroupRuleEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AnalysisSecurityGroupRule> {
  const AnalysisSecurityGroupRuleEc2QuerySerializer()
      : super('AnalysisSecurityGroupRule');

  @override
  Iterable<Type> get types => const [
        AnalysisSecurityGroupRule,
        _$AnalysisSecurityGroupRule,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AnalysisSecurityGroupRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisSecurityGroupRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'cidr':
          result.cidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'direction':
          result.direction = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'securityGroupId':
          result.securityGroupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'portRange':
          result.portRange.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PortRange),
          ) as PortRange));
        case 'prefixListId':
          result.prefixListId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'protocol':
          result.protocol = (serializers.deserialize(
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
    AnalysisSecurityGroupRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AnalysisSecurityGroupRuleResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AnalysisSecurityGroupRule(
      :cidr,
      :direction,
      :securityGroupId,
      :portRange,
      :prefixListId,
      :protocol
    ) = object;
    if (cidr != null) {
      result$
        ..add(const _i2.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          cidr,
          specifiedType: const FullType(String),
        ));
    }
    if (direction != null) {
      result$
        ..add(const _i2.XmlElementName('Direction'))
        ..add(serializers.serialize(
          direction,
          specifiedType: const FullType(String),
        ));
    }
    if (securityGroupId != null) {
      result$
        ..add(const _i2.XmlElementName('SecurityGroupId'))
        ..add(serializers.serialize(
          securityGroupId,
          specifiedType: const FullType(String),
        ));
    }
    if (portRange != null) {
      result$
        ..add(const _i2.XmlElementName('PortRange'))
        ..add(serializers.serialize(
          portRange,
          specifiedType: const FullType(PortRange),
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
    if (protocol != null) {
      result$
        ..add(const _i2.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          protocol,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
