// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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
    _i2.ComplianceSummary? complianceSummary,
    String? groupName,
  }) {
    return _$AggregateComplianceCount._(
      complianceSummary: complianceSummary,
      groupName: groupName,
    );
  }

  /// Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator.
  factory AggregateComplianceCount.build(
          [void Function(AggregateComplianceCountBuilder) updates]) =
      _$AggregateComplianceCount;

  const AggregateComplianceCount._();

  static const List<_i3.SmithySerializer> serializers = [
    AggregateComplianceCountAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AggregateComplianceCountBuilder b) {}

  /// The number of compliant and noncompliant Config rules.
  _i2.ComplianceSummary? get complianceSummary;

  /// The 12-digit account ID or region based on the GroupByKey value.
  String? get groupName;
  @override
  List<Object?> get props => [
        complianceSummary,
        groupName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AggregateComplianceCount');
    helper.add(
      'complianceSummary',
      complianceSummary,
    );
    helper.add(
      'groupName',
      groupName,
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
      switch (key) {
        case 'ComplianceSummary':
          if (value != null) {
            result.complianceSummary.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ComplianceSummary),
            ) as _i2.ComplianceSummary));
          }
          break;
        case 'GroupName':
          if (value != null) {
            result.groupName = (serializers.deserialize(
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
    final payload = (object as AggregateComplianceCount);
    final result = <Object?>[];
    if (payload.complianceSummary != null) {
      result
        ..add('ComplianceSummary')
        ..add(serializers.serialize(
          payload.complianceSummary!,
          specifiedType: const FullType(_i2.ComplianceSummary),
        ));
    }
    if (payload.groupName != null) {
      result
        ..add('GroupName')
        ..add(serializers.serialize(
          payload.groupName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
