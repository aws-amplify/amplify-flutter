// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.analysis_acl_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/port_range.dart';

part 'analysis_acl_rule.g.dart';

/// Describes a network access control (ACL) rule.
abstract class AnalysisAclRule
    with _i1.AWSEquatable<AnalysisAclRule>
    implements Built<AnalysisAclRule, AnalysisAclRuleBuilder> {
  /// Describes a network access control (ACL) rule.
  factory AnalysisAclRule({
    String? cidr,
    bool? egress,
    PortRange? portRange,
    String? protocol,
    String? ruleAction,
    int? ruleNumber,
  }) {
    egress ??= false;
    ruleNumber ??= 0;
    return _$AnalysisAclRule._(
      cidr: cidr,
      egress: egress,
      portRange: portRange,
      protocol: protocol,
      ruleAction: ruleAction,
      ruleNumber: ruleNumber,
    );
  }

  /// Describes a network access control (ACL) rule.
  factory AnalysisAclRule.build(
      [void Function(AnalysisAclRuleBuilder) updates]) = _$AnalysisAclRule;

  const AnalysisAclRule._();

  static const List<_i2.SmithySerializer<AnalysisAclRule>> serializers = [
    AnalysisAclRuleEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AnalysisAclRuleBuilder b) {
    b
      ..egress = false
      ..ruleNumber = 0;
  }

  /// The IPv4 address range, in CIDR notation.
  String? get cidr;

  /// Indicates whether the rule is an outbound rule.
  bool get egress;

  /// The range of ports.
  PortRange? get portRange;

  /// The protocol.
  String? get protocol;

  /// Indicates whether to allow or deny traffic that matches the rule.
  String? get ruleAction;

  /// The rule number.
  int get ruleNumber;
  @override
  List<Object?> get props => [
        cidr,
        egress,
        portRange,
        protocol,
        ruleAction,
        ruleNumber,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AnalysisAclRule')
      ..add(
        'cidr',
        cidr,
      )
      ..add(
        'egress',
        egress,
      )
      ..add(
        'portRange',
        portRange,
      )
      ..add(
        'protocol',
        protocol,
      )
      ..add(
        'ruleAction',
        ruleAction,
      )
      ..add(
        'ruleNumber',
        ruleNumber,
      );
    return helper.toString();
  }
}

class AnalysisAclRuleEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AnalysisAclRule> {
  const AnalysisAclRuleEc2QuerySerializer() : super('AnalysisAclRule');

  @override
  Iterable<Type> get types => const [
        AnalysisAclRule,
        _$AnalysisAclRule,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AnalysisAclRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisAclRuleBuilder();
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
        case 'egress':
          result.egress = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'portRange':
          result.portRange.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PortRange),
          ) as PortRange));
        case 'protocol':
          result.protocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ruleAction':
          result.ruleAction = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ruleNumber':
          result.ruleNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AnalysisAclRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AnalysisAclRuleResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AnalysisAclRule(
      :cidr,
      :egress,
      :portRange,
      :protocol,
      :ruleAction,
      :ruleNumber
    ) = object;
    if (cidr != null) {
      result$
        ..add(const _i2.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          cidr,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('Egress'))
      ..add(serializers.serialize(
        egress,
        specifiedType: const FullType(bool),
      ));
    if (portRange != null) {
      result$
        ..add(const _i2.XmlElementName('PortRange'))
        ..add(serializers.serialize(
          portRange,
          specifiedType: const FullType(PortRange),
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
    if (ruleAction != null) {
      result$
        ..add(const _i2.XmlElementName('RuleAction'))
        ..add(serializers.serialize(
          ruleAction,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('RuleNumber'))
      ..add(serializers.serialize(
        ruleNumber,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
