// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.rule_group_rule_options_pair; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/rule_option.dart';

part 'rule_group_rule_options_pair.g.dart';

/// Describes the rule options for a stateful rule group.
abstract class RuleGroupRuleOptionsPair
    with _i1.AWSEquatable<RuleGroupRuleOptionsPair>
    implements
        Built<RuleGroupRuleOptionsPair, RuleGroupRuleOptionsPairBuilder> {
  /// Describes the rule options for a stateful rule group.
  factory RuleGroupRuleOptionsPair({
    String? ruleGroupArn,
    List<RuleOption>? ruleOptions,
  }) {
    return _$RuleGroupRuleOptionsPair._(
      ruleGroupArn: ruleGroupArn,
      ruleOptions: ruleOptions == null ? null : _i2.BuiltList(ruleOptions),
    );
  }

  /// Describes the rule options for a stateful rule group.
  factory RuleGroupRuleOptionsPair.build(
          [void Function(RuleGroupRuleOptionsPairBuilder) updates]) =
      _$RuleGroupRuleOptionsPair;

  const RuleGroupRuleOptionsPair._();

  static const List<_i3.SmithySerializer<RuleGroupRuleOptionsPair>>
      serializers = [RuleGroupRuleOptionsPairEc2QuerySerializer()];

  /// The ARN of the rule group.
  String? get ruleGroupArn;

  /// The rule options.
  _i2.BuiltList<RuleOption>? get ruleOptions;
  @override
  List<Object?> get props => [
        ruleGroupArn,
        ruleOptions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RuleGroupRuleOptionsPair')
      ..add(
        'ruleGroupArn',
        ruleGroupArn,
      )
      ..add(
        'ruleOptions',
        ruleOptions,
      );
    return helper.toString();
  }
}

class RuleGroupRuleOptionsPairEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<RuleGroupRuleOptionsPair> {
  const RuleGroupRuleOptionsPairEc2QuerySerializer()
      : super('RuleGroupRuleOptionsPair');

  @override
  Iterable<Type> get types => const [
        RuleGroupRuleOptionsPair,
        _$RuleGroupRuleOptionsPair,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RuleGroupRuleOptionsPair deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleGroupRuleOptionsPairBuilder();
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
        case 'ruleOptionSet':
          result.ruleOptions.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(RuleOption)],
            ),
          ) as _i2.BuiltList<RuleOption>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RuleGroupRuleOptionsPair object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'RuleGroupRuleOptionsPairResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RuleGroupRuleOptionsPair(:ruleGroupArn, :ruleOptions) = object;
    if (ruleGroupArn != null) {
      result$
        ..add(const _i3.XmlElementName('RuleGroupArn'))
        ..add(serializers.serialize(
          ruleGroupArn,
          specifiedType: const FullType(String),
        ));
    }
    if (ruleOptions != null) {
      result$
        ..add(const _i3.XmlElementName('RuleOptionSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ruleOptions,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(RuleOption)],
          ),
        ));
    }
    return result$;
  }
}
