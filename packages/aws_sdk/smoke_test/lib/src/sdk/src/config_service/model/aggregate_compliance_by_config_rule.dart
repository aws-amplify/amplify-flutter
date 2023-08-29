// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.aggregate_compliance_by_config_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance.dart';

part 'aggregate_compliance_by_config_rule.g.dart';

/// Indicates whether an Config rule is compliant based on account ID, region, compliance, and rule name.
///
/// A rule is compliant if all of the resources that the rule evaluated comply with it. It is noncompliant if any of these resources do not comply.
abstract class AggregateComplianceByConfigRule
    with
        _i1.AWSEquatable<AggregateComplianceByConfigRule>
    implements
        Built<AggregateComplianceByConfigRule,
            AggregateComplianceByConfigRuleBuilder> {
  /// Indicates whether an Config rule is compliant based on account ID, region, compliance, and rule name.
  ///
  /// A rule is compliant if all of the resources that the rule evaluated comply with it. It is noncompliant if any of these resources do not comply.
  factory AggregateComplianceByConfigRule({
    String? configRuleName,
    Compliance? compliance,
    String? accountId,
    String? awsRegion,
  }) {
    return _$AggregateComplianceByConfigRule._(
      configRuleName: configRuleName,
      compliance: compliance,
      accountId: accountId,
      awsRegion: awsRegion,
    );
  }

  /// Indicates whether an Config rule is compliant based on account ID, region, compliance, and rule name.
  ///
  /// A rule is compliant if all of the resources that the rule evaluated comply with it. It is noncompliant if any of these resources do not comply.
  factory AggregateComplianceByConfigRule.build(
          [void Function(AggregateComplianceByConfigRuleBuilder) updates]) =
      _$AggregateComplianceByConfigRule;

  const AggregateComplianceByConfigRule._();

  static const List<_i2.SmithySerializer<AggregateComplianceByConfigRule>>
      serializers = [AggregateComplianceByConfigRuleAwsJson11Serializer()];

  /// The name of the Config rule.
  String? get configRuleName;

  /// Indicates whether an Amazon Web Services resource or Config rule is compliant and provides the number of contributors that affect the compliance.
  Compliance? get compliance;

  /// The 12-digit account ID of the source account.
  String? get accountId;

  /// The source region from where the data is aggregated.
  String? get awsRegion;
  @override
  List<Object?> get props => [
        configRuleName,
        compliance,
        accountId,
        awsRegion,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AggregateComplianceByConfigRule')
          ..add(
            'configRuleName',
            configRuleName,
          )
          ..add(
            'compliance',
            compliance,
          )
          ..add(
            'accountId',
            accountId,
          )
          ..add(
            'awsRegion',
            awsRegion,
          );
    return helper.toString();
  }
}

class AggregateComplianceByConfigRuleAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<AggregateComplianceByConfigRule> {
  const AggregateComplianceByConfigRuleAwsJson11Serializer()
      : super('AggregateComplianceByConfigRule');

  @override
  Iterable<Type> get types => const [
        AggregateComplianceByConfigRule,
        _$AggregateComplianceByConfigRule,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  AggregateComplianceByConfigRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggregateComplianceByConfigRuleBuilder();
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
        case 'AccountId':
          result.accountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AwsRegion':
          result.awsRegion = (serializers.deserialize(
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
    AggregateComplianceByConfigRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AggregateComplianceByConfigRule(
      :configRuleName,
      :compliance,
      :accountId,
      :awsRegion
    ) = object;
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
    if (accountId != null) {
      result$
        ..add('AccountId')
        ..add(serializers.serialize(
          accountId,
          specifiedType: const FullType(String),
        ));
    }
    if (awsRegion != null) {
      result$
        ..add('AwsRegion')
        ..add(serializers.serialize(
          awsRegion,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
