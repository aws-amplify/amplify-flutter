// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.aggregate_compliance_by_config_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance.dart'
    as _i2;

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
    String? accountId,
    String? awsRegion,
    _i2.Compliance? compliance,
    String? configRuleName,
  }) {
    return _$AggregateComplianceByConfigRule._(
      accountId: accountId,
      awsRegion: awsRegion,
      compliance: compliance,
      configRuleName: configRuleName,
    );
  }

  /// Indicates whether an Config rule is compliant based on account ID, region, compliance, and rule name.
  ///
  /// A rule is compliant if all of the resources that the rule evaluated comply with it. It is noncompliant if any of these resources do not comply.
  factory AggregateComplianceByConfigRule.build(
          [void Function(AggregateComplianceByConfigRuleBuilder) updates]) =
      _$AggregateComplianceByConfigRule;

  const AggregateComplianceByConfigRule._();

  static const List<_i3.SmithySerializer> serializers = [
    AggregateComplianceByConfigRuleAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AggregateComplianceByConfigRuleBuilder b) {}

  /// The 12-digit account ID of the source account.
  String? get accountId;

  /// The source region from where the data is aggregated.
  String? get awsRegion;

  /// Indicates whether an Amazon Web Services resource or Config rule is compliant and provides the number of contributors that affect the compliance.
  _i2.Compliance? get compliance;

  /// The name of the Config rule.
  String? get configRuleName;
  @override
  List<Object?> get props => [
        accountId,
        awsRegion,
        compliance,
        configRuleName,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AggregateComplianceByConfigRule');
    helper.add(
      'accountId',
      accountId,
    );
    helper.add(
      'awsRegion',
      awsRegion,
    );
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

class AggregateComplianceByConfigRuleAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<AggregateComplianceByConfigRule> {
  const AggregateComplianceByConfigRuleAwsJson11Serializer()
      : super('AggregateComplianceByConfigRule');

  @override
  Iterable<Type> get types => const [
        AggregateComplianceByConfigRule,
        _$AggregateComplianceByConfigRule,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      switch (key) {
        case 'AccountId':
          if (value != null) {
            result.accountId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AwsRegion':
          if (value != null) {
            result.awsRegion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
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
    final payload = (object as AggregateComplianceByConfigRule);
    final result = <Object?>[];
    if (payload.accountId != null) {
      result
        ..add('AccountId')
        ..add(serializers.serialize(
          payload.accountId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.awsRegion != null) {
      result
        ..add('AwsRegion')
        ..add(serializers.serialize(
          payload.awsRegion!,
          specifiedType: const FullType(String),
        ));
    }
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
