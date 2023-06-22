// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.aggregate_conformance_pack_compliance_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_conformance_pack_compliance_count.dart'
    as _i2;

part 'aggregate_conformance_pack_compliance_summary.g.dart';

/// Provides a summary of compliance based on either account ID or region.
abstract class AggregateConformancePackComplianceSummary
    with
        _i1.AWSEquatable<AggregateConformancePackComplianceSummary>
    implements
        Built<AggregateConformancePackComplianceSummary,
            AggregateConformancePackComplianceSummaryBuilder> {
  /// Provides a summary of compliance based on either account ID or region.
  factory AggregateConformancePackComplianceSummary({
    _i2.AggregateConformancePackComplianceCount? complianceSummary,
    String? groupName,
  }) {
    return _$AggregateConformancePackComplianceSummary._(
      complianceSummary: complianceSummary,
      groupName: groupName,
    );
  }

  /// Provides a summary of compliance based on either account ID or region.
  factory AggregateConformancePackComplianceSummary.build(
      [void Function(AggregateConformancePackComplianceSummaryBuilder)
          updates]) = _$AggregateConformancePackComplianceSummary;

  const AggregateConformancePackComplianceSummary._();

  static const List<
          _i3.SmithySerializer<AggregateConformancePackComplianceSummary>>
      serializers = [
    AggregateConformancePackComplianceSummaryAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AggregateConformancePackComplianceSummaryBuilder b) {}

  /// Returns an `AggregateConformancePackComplianceCount` object.
  _i2.AggregateConformancePackComplianceCount? get complianceSummary;

  /// Groups the result based on Amazon Web Services account ID or Amazon Web Services Region.
  String? get groupName;
  @override
  List<Object?> get props => [
        complianceSummary,
        groupName,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AggregateConformancePackComplianceSummary')
          ..add(
            'complianceSummary',
            complianceSummary,
          )
          ..add(
            'groupName',
            groupName,
          );
    return helper.toString();
  }
}

class AggregateConformancePackComplianceSummaryAwsJson11Serializer extends _i3
    .StructuredSmithySerializer<AggregateConformancePackComplianceSummary> {
  const AggregateConformancePackComplianceSummaryAwsJson11Serializer()
      : super('AggregateConformancePackComplianceSummary');

  @override
  Iterable<Type> get types => const [
        AggregateConformancePackComplianceSummary,
        _$AggregateConformancePackComplianceSummary,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  AggregateConformancePackComplianceSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggregateConformancePackComplianceSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ComplianceSummary':
          result.complianceSummary.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i2.AggregateConformancePackComplianceCount),
          ) as _i2.AggregateConformancePackComplianceCount));
        case 'GroupName':
          result.groupName = (serializers.deserialize(
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
    AggregateConformancePackComplianceSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AggregateConformancePackComplianceSummary(
      :complianceSummary,
      :groupName
    ) = object;
    if (complianceSummary != null) {
      result$
        ..add('ComplianceSummary')
        ..add(serializers.serialize(
          complianceSummary,
          specifiedType:
              const FullType(_i2.AggregateConformancePackComplianceCount),
        ));
    }
    if (groupName != null) {
      result$
        ..add('GroupName')
        ..add(serializers.serialize(
          groupName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
