// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.compliance_by_config_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance.dart'
    as _i2;

part 'compliance_by_config_rule.g.dart';

/// Indicates whether an Config rule is compliant. A rule is compliant if all of the resources that the rule evaluated comply with it. A rule is noncompliant if any of these resources do not comply.
abstract class ComplianceByConfigRule
    with _i1.AWSEquatable<ComplianceByConfigRule>
    implements Built<ComplianceByConfigRule, ComplianceByConfigRuleBuilder> {
  /// Indicates whether an Config rule is compliant. A rule is compliant if all of the resources that the rule evaluated comply with it. A rule is noncompliant if any of these resources do not comply.
  factory ComplianceByConfigRule({
    _i2.Compliance? compliance,
    String? configRuleName,
  }) {
    return _$ComplianceByConfigRule._(
      compliance: compliance,
      configRuleName: configRuleName,
    );
  }

  /// Indicates whether an Config rule is compliant. A rule is compliant if all of the resources that the rule evaluated comply with it. A rule is noncompliant if any of these resources do not comply.
  factory ComplianceByConfigRule.build(
          [void Function(ComplianceByConfigRuleBuilder) updates]) =
      _$ComplianceByConfigRule;

  const ComplianceByConfigRule._();

  static const List<_i3.SmithySerializer> serializers = [
    ComplianceByConfigRuleAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplianceByConfigRuleBuilder b) {}

  /// Indicates whether the Config rule is compliant.
  _i2.Compliance? get compliance;

  /// The name of the Config rule.
  String? get configRuleName;
  @override
  List<Object?> get props => [
        compliance,
        configRuleName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ComplianceByConfigRule');
    helper.add(
      'compliance',
      compliance,
    );
    helper.add(
      'configRuleName',
      configRuleName,
    );
    return helper.toString();
  }
}

class ComplianceByConfigRuleAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ComplianceByConfigRule> {
  const ComplianceByConfigRuleAwsJson11Serializer()
      : super('ComplianceByConfigRule');

  @override
  Iterable<Type> get types => const [
        ComplianceByConfigRule,
        _$ComplianceByConfigRule,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      switch (key) {
        case 'Compliance':
          if (value != null) {
            result.compliance.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Compliance),
            ) as _i2.Compliance));
          }
          break;
        case 'ConfigRuleName':
          if (value != null) {
            result.configRuleName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ComplianceByConfigRule);
    final result = <Object?>[];
    if (payload.compliance != null) {
      result
        ..add('Compliance')
        ..add(serializers.serialize(
          payload.compliance!,
          specifiedType: const FullType(_i2.Compliance),
        ));
    }
    if (payload.configRuleName != null) {
      result
        ..add('ConfigRuleName')
        ..add(serializers.serialize(
          payload.configRuleName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
