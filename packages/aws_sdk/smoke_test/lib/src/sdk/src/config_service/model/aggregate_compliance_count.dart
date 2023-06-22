// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.aggregate_compliance_count; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_summary.dart'
    as _i2;

part 'aggregate_compliance_count.g.dart';

/// Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator.
abstract class AggregateComplianceCount
    with _i1.AWSEquatable<AggregateComplianceCount>
    implements
        Built<AggregateComplianceCount, AggregateComplianceCountBuilder> {
  /// Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator.
  factory AggregateComplianceCount({
    String? groupName,
    _i2.ComplianceSummary? complianceSummary,
  }) {
    return _$AggregateComplianceCount._(
      groupName: groupName,
      complianceSummary: complianceSummary,
    );
  }

  /// Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator.
  factory AggregateComplianceCount.build(
          [void Function(AggregateComplianceCountBuilder) updates]) =
      _$AggregateComplianceCount;

  const AggregateComplianceCount._();

  static const List<_i3.SmithySerializer<AggregateComplianceCount>>
      serializers = [AggregateComplianceCountAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AggregateComplianceCountBuilder b) {}

  /// The 12-digit account ID or region based on the GroupByKey value.
  String? get groupName;

  /// The number of compliant and noncompliant Config rules.
  _i2.ComplianceSummary? get complianceSummary;
  @override
  List<Object?> get props => [
        groupName,
        complianceSummary,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AggregateComplianceCount')
      ..add(
        'groupName',
        groupName,
      )
      ..add(
        'complianceSummary',
        complianceSummary,
      );
    return helper.toString();
  }
}

class AggregateComplianceCountAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<AggregateComplianceCount> {
  const AggregateComplianceCountAwsJson11Serializer()
      : super('AggregateComplianceCount');

  @override
  Iterable<Type> get types => const [
        AggregateComplianceCount,
        _$AggregateComplianceCount,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  AggregateComplianceCount deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggregateComplianceCountBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'GroupName':
          result.groupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ComplianceSummary':
          result.complianceSummary.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ComplianceSummary),
          ) as _i2.ComplianceSummary));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AggregateComplianceCount object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AggregateComplianceCount(:groupName, :complianceSummary) = object;
    if (groupName != null) {
      result$
        ..add('GroupName')
        ..add(serializers.serialize(
          groupName,
          specifiedType: const FullType(String),
        ));
    }
    if (complianceSummary != null) {
      result$
        ..add('ComplianceSummary')
        ..add(serializers.serialize(
          complianceSummary,
          specifiedType: const FullType(_i2.ComplianceSummary),
        ));
    }
    return result$;
  }
}
