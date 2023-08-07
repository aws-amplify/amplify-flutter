// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.compliance_by_config_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance.dart';

part 'compliance_by_config_rule.g.dart';

/// Indicates whether an Config rule is compliant. A rule is compliant if all of the resources that the rule evaluated comply with it. A rule is noncompliant if any of these resources do not comply.
abstract class ComplianceByConfigRule
    with _i1.AWSEquatable<ComplianceByConfigRule>
    implements Built<ComplianceByConfigRule, ComplianceByConfigRuleBuilder> {
  /// Indicates whether an Config rule is compliant. A rule is compliant if all of the resources that the rule evaluated comply with it. A rule is noncompliant if any of these resources do not comply.
  factory ComplianceByConfigRule({
    String? configRuleName,
    Compliance? compliance,
  }) {
    return _$ComplianceByConfigRule._(
      configRuleName: configRuleName,
      compliance: compliance,
    );
  }

  /// Indicates whether an Config rule is compliant. A rule is compliant if all of the resources that the rule evaluated comply with it. A rule is noncompliant if any of these resources do not comply.
  factory ComplianceByConfigRule.build(
          [void Function(ComplianceByConfigRuleBuilder) updates]) =
      _$ComplianceByConfigRule;

  const ComplianceByConfigRule._();

  static const List<_i2.SmithySerializer<ComplianceByConfigRule>> serializers =
      [ComplianceByConfigRuleAwsJson11Serializer()];

  /// The name of the Config rule.
  String? get configRuleName;

  /// Indicates whether the Config rule is compliant.
  Compliance? get compliance;
  @override
  List<Object?> get props => [
        configRuleName,
        compliance,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ComplianceByConfigRule')
      ..add(
        'configRuleName',
        configRuleName,
      )
      ..add(
        'compliance',
        compliance,
      );
    return helper.toString();
  }
}

class ComplianceByConfigRuleAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ComplianceByConfigRule> {
  const ComplianceByConfigRuleAwsJson11Serializer()
      : super('ComplianceByConfigRule');

  @override
  Iterable<Type> get types => const [
        ComplianceByConfigRule,
        _$ComplianceByConfigRule,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ComplianceByConfigRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComplianceByConfigRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Compliance':
          result.compliance.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Compliance),
          ) as Compliance));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ComplianceByConfigRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ComplianceByConfigRule(:configRuleName, :compliance) = object;
    if (configRuleName != null) {
      result$
        ..add('ConfigRuleName')
        ..add(serializers.serialize(
          configRuleName,
          specifiedType: const FullType(String),
        ));
    }
    if (compliance != null) {
      result$
        ..add('Compliance')
        ..add(serializers.serialize(
          compliance,
          specifiedType: const FullType(Compliance),
        ));
    }
    return result$;
  }
}
