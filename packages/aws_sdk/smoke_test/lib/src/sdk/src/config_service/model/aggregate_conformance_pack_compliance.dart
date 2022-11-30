// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.aggregate_conformance_pack_compliance; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_type.dart'
    as _i2;

part 'aggregate_conformance_pack_compliance.g.dart';

/// Provides the number of compliant and noncompliant rules within a conformance pack. Also provides the compliance status of the conformance pack and the total rule count which includes compliant rules, noncompliant rules, and rules that cannot be evaluated due to insufficient data.
///
/// A conformance pack is compliant if all of the rules in a conformance packs are compliant. It is noncompliant if any of the rules are not compliant. The compliance status of a conformance pack is INSUFFICIENT\_DATA only if all rules within a conformance pack cannot be evaluated due to insufficient data. If some of the rules in a conformance pack are compliant but the compliance status of other rules in that same conformance pack is INSUFFICIENT\_DATA, the conformance pack shows compliant.
abstract class AggregateConformancePackCompliance
    with
        _i1.AWSEquatable<AggregateConformancePackCompliance>
    implements
        Built<AggregateConformancePackCompliance,
            AggregateConformancePackComplianceBuilder> {
  /// Provides the number of compliant and noncompliant rules within a conformance pack. Also provides the compliance status of the conformance pack and the total rule count which includes compliant rules, noncompliant rules, and rules that cannot be evaluated due to insufficient data.
  ///
  /// A conformance pack is compliant if all of the rules in a conformance packs are compliant. It is noncompliant if any of the rules are not compliant. The compliance status of a conformance pack is INSUFFICIENT\_DATA only if all rules within a conformance pack cannot be evaluated due to insufficient data. If some of the rules in a conformance pack are compliant but the compliance status of other rules in that same conformance pack is INSUFFICIENT\_DATA, the conformance pack shows compliant.
  factory AggregateConformancePackCompliance({
    _i2.ConformancePackComplianceType? complianceType,
    int? compliantRuleCount,
    int? nonCompliantRuleCount,
    int? totalRuleCount,
  }) {
    return _$AggregateConformancePackCompliance._(
      complianceType: complianceType,
      compliantRuleCount: compliantRuleCount,
      nonCompliantRuleCount: nonCompliantRuleCount,
      totalRuleCount: totalRuleCount,
    );
  }

  /// Provides the number of compliant and noncompliant rules within a conformance pack. Also provides the compliance status of the conformance pack and the total rule count which includes compliant rules, noncompliant rules, and rules that cannot be evaluated due to insufficient data.
  ///
  /// A conformance pack is compliant if all of the rules in a conformance packs are compliant. It is noncompliant if any of the rules are not compliant. The compliance status of a conformance pack is INSUFFICIENT\_DATA only if all rules within a conformance pack cannot be evaluated due to insufficient data. If some of the rules in a conformance pack are compliant but the compliance status of other rules in that same conformance pack is INSUFFICIENT\_DATA, the conformance pack shows compliant.
  factory AggregateConformancePackCompliance.build(
          [void Function(AggregateConformancePackComplianceBuilder) updates]) =
      _$AggregateConformancePackCompliance;

  const AggregateConformancePackCompliance._();

  static const List<_i3.SmithySerializer> serializers = [
    AggregateConformancePackComplianceAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AggregateConformancePackComplianceBuilder b) {}

  /// The compliance status of the conformance pack.
  _i2.ConformancePackComplianceType? get complianceType;

  /// The number of compliant Config Rules.
  int? get compliantRuleCount;

  /// The number of noncompliant Config Rules.
  int? get nonCompliantRuleCount;

  /// Total number of compliant rules, noncompliant rules, and the rules that do not have any applicable resources to evaluate upon resulting in insufficient data.
  int? get totalRuleCount;
  @override
  List<Object?> get props => [
        complianceType,
        compliantRuleCount,
        nonCompliantRuleCount,
        totalRuleCount,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AggregateConformancePackCompliance');
    helper.add(
      'complianceType',
      complianceType,
    );
    helper.add(
      'compliantRuleCount',
      compliantRuleCount,
    );
    helper.add(
      'nonCompliantRuleCount',
      nonCompliantRuleCount,
    );
    helper.add(
      'totalRuleCount',
      totalRuleCount,
    );
    return helper.toString();
  }
}

class AggregateConformancePackComplianceAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<AggregateConformancePackCompliance> {
  const AggregateConformancePackComplianceAwsJson11Serializer()
      : super('AggregateConformancePackCompliance');

  @override
  Iterable<Type> get types => const [
        AggregateConformancePackCompliance,
        _$AggregateConformancePackCompliance,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  AggregateConformancePackCompliance deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggregateConformancePackComplianceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ComplianceType':
          if (value != null) {
            result.complianceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ConformancePackComplianceType),
            ) as _i2.ConformancePackComplianceType);
          }
          break;
        case 'CompliantRuleCount':
          if (value != null) {
            result.compliantRuleCount = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'NonCompliantRuleCount':
          if (value != null) {
            result.nonCompliantRuleCount = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'TotalRuleCount':
          if (value != null) {
            result.totalRuleCount = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as AggregateConformancePackCompliance);
    final result = <Object?>[];
    if (payload.complianceType != null) {
      result
        ..add('ComplianceType')
        ..add(serializers.serialize(
          payload.complianceType!,
          specifiedType: const FullType(_i2.ConformancePackComplianceType),
        ));
    }
    if (payload.compliantRuleCount != null) {
      result
        ..add('CompliantRuleCount')
        ..add(serializers.serialize(
          payload.compliantRuleCount!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.nonCompliantRuleCount != null) {
      result
        ..add('NonCompliantRuleCount')
        ..add(serializers.serialize(
          payload.nonCompliantRuleCount!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.totalRuleCount != null) {
      result
        ..add('TotalRuleCount')
        ..add(serializers.serialize(
          payload.totalRuleCount!,
          specifiedType: const FullType(int),
        ));
    }
    return result;
  }
}
