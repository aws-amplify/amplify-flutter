// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.rule_group_type_pair; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'rule_group_type_pair.g.dart';

/// Describes the type of a stateful rule group.
abstract class RuleGroupTypePair
    with _i1.AWSEquatable<RuleGroupTypePair>
    implements Built<RuleGroupTypePair, RuleGroupTypePairBuilder> {
  /// Describes the type of a stateful rule group.
  factory RuleGroupTypePair({
    String? ruleGroupArn,
    String? ruleGroupType,
  }) {
    return _$RuleGroupTypePair._(
      ruleGroupArn: ruleGroupArn,
      ruleGroupType: ruleGroupType,
    );
  }

  /// Describes the type of a stateful rule group.
  factory RuleGroupTypePair.build(
      [void Function(RuleGroupTypePairBuilder) updates]) = _$RuleGroupTypePair;

  const RuleGroupTypePair._();

  static const List<_i2.SmithySerializer<RuleGroupTypePair>> serializers = [
    RuleGroupTypePairEc2QuerySerializer()
  ];

  /// The ARN of the rule group.
  String? get ruleGroupArn;

  /// The rule group type. The possible values are `Domain List` and `Suricata`.
  String? get ruleGroupType;
  @override
  List<Object?> get props => [
        ruleGroupArn,
        ruleGroupType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RuleGroupTypePair')
      ..add(
        'ruleGroupArn',
        ruleGroupArn,
      )
      ..add(
        'ruleGroupType',
        ruleGroupType,
      );
    return helper.toString();
  }
}

class RuleGroupTypePairEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<RuleGroupTypePair> {
  const RuleGroupTypePairEc2QuerySerializer() : super('RuleGroupTypePair');

  @override
  Iterable<Type> get types => const [
        RuleGroupTypePair,
        _$RuleGroupTypePair,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RuleGroupTypePair deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleGroupTypePairBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ruleGroupArn':
          result.ruleGroupArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ruleGroupType':
          result.ruleGroupType = (serializers.deserialize(
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
    RuleGroupTypePair object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RuleGroupTypePairResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RuleGroupTypePair(:ruleGroupArn, :ruleGroupType) = object;
    if (ruleGroupArn != null) {
      result$
        ..add(const _i2.XmlElementName('RuleGroupArn'))
        ..add(serializers.serialize(
          ruleGroupArn,
          specifiedType: const FullType(String),
        ));
    }
    if (ruleGroupType != null) {
      result$
        ..add(const _i2.XmlElementName('RuleGroupType'))
        ..add(serializers.serialize(
          ruleGroupType,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
