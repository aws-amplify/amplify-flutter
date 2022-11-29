// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.config_rule_compliance_summary_filters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'config_rule_compliance_summary_filters.g.dart';

/// Filters the results based on the account IDs and regions.
abstract class ConfigRuleComplianceSummaryFilters
    with
        _i1.AWSEquatable<ConfigRuleComplianceSummaryFilters>
    implements
        Built<ConfigRuleComplianceSummaryFilters,
            ConfigRuleComplianceSummaryFiltersBuilder> {
  /// Filters the results based on the account IDs and regions.
  factory ConfigRuleComplianceSummaryFilters({
    String? accountId,
    String? awsRegion,
  }) {
    return _$ConfigRuleComplianceSummaryFilters._(
      accountId: accountId,
      awsRegion: awsRegion,
    );
  }

  /// Filters the results based on the account IDs and regions.
  factory ConfigRuleComplianceSummaryFilters.build(
          [void Function(ConfigRuleComplianceSummaryFiltersBuilder) updates]) =
      _$ConfigRuleComplianceSummaryFilters;

  const ConfigRuleComplianceSummaryFilters._();

  static const List<_i2.SmithySerializer> serializers = [
    ConfigRuleComplianceSummaryFiltersAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigRuleComplianceSummaryFiltersBuilder b) {}

  /// The 12-digit account ID of the source account.
  String? get accountId;

  /// The source region where the data is aggregated.
  String? get awsRegion;
  @override
  List<Object?> get props => [
        accountId,
        awsRegion,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ConfigRuleComplianceSummaryFilters');
    helper.add(
      'accountId',
      accountId,
    );
    helper.add(
      'awsRegion',
      awsRegion,
    );
    return helper.toString();
  }
}

class ConfigRuleComplianceSummaryFiltersAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ConfigRuleComplianceSummaryFilters> {
  const ConfigRuleComplianceSummaryFiltersAwsJson11Serializer()
      : super('ConfigRuleComplianceSummaryFilters');

  @override
  Iterable<Type> get types => const [
        ConfigRuleComplianceSummaryFilters,
        _$ConfigRuleComplianceSummaryFilters,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConfigRuleComplianceSummaryFilters deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfigRuleComplianceSummaryFiltersBuilder();
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
    final payload = (object as ConfigRuleComplianceSummaryFilters);
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
    return result;
  }
}
