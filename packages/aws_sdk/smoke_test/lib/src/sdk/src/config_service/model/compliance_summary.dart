// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.compliance_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_contributor_count.dart'
    as _i2;

part 'compliance_summary.g.dart';

/// The number of Config rules or Amazon Web Services resources that are compliant and noncompliant.
abstract class ComplianceSummary
    with _i1.AWSEquatable<ComplianceSummary>
    implements Built<ComplianceSummary, ComplianceSummaryBuilder> {
  /// The number of Config rules or Amazon Web Services resources that are compliant and noncompliant.
  factory ComplianceSummary({
    _i2.ComplianceContributorCount? compliantResourceCount,
    _i2.ComplianceContributorCount? nonCompliantResourceCount,
    DateTime? complianceSummaryTimestamp,
  }) {
    return _$ComplianceSummary._(
      compliantResourceCount: compliantResourceCount,
      nonCompliantResourceCount: nonCompliantResourceCount,
      complianceSummaryTimestamp: complianceSummaryTimestamp,
    );
  }

  /// The number of Config rules or Amazon Web Services resources that are compliant and noncompliant.
  factory ComplianceSummary.build(
      [void Function(ComplianceSummaryBuilder) updates]) = _$ComplianceSummary;

  const ComplianceSummary._();

  static const List<_i3.SmithySerializer<ComplianceSummary>> serializers = [
    ComplianceSummaryAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplianceSummaryBuilder b) {}

  /// The number of Config rules or Amazon Web Services resources that are compliant, up to a maximum of 25 for rules and 100 for resources.
  _i2.ComplianceContributorCount? get compliantResourceCount;

  /// The number of Config rules or Amazon Web Services resources that are noncompliant, up to a maximum of 25 for rules and 100 for resources.
  _i2.ComplianceContributorCount? get nonCompliantResourceCount;

  /// The time that Config created the compliance summary.
  DateTime? get complianceSummaryTimestamp;
  @override
  List<Object?> get props => [
        compliantResourceCount,
        nonCompliantResourceCount,
        complianceSummaryTimestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ComplianceSummary')
      ..add(
        'compliantResourceCount',
        compliantResourceCount,
      )
      ..add(
        'nonCompliantResourceCount',
        nonCompliantResourceCount,
      )
      ..add(
        'complianceSummaryTimestamp',
        complianceSummaryTimestamp,
      );
    return helper.toString();
  }
}

class ComplianceSummaryAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ComplianceSummary> {
  const ComplianceSummaryAwsJson11Serializer() : super('ComplianceSummary');

  @override
  Iterable<Type> get types => const [
        ComplianceSummary,
        _$ComplianceSummary,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ComplianceSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComplianceSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CompliantResourceCount':
          result.compliantResourceCount.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ComplianceContributorCount),
          ) as _i2.ComplianceContributorCount));
        case 'NonCompliantResourceCount':
          result.nonCompliantResourceCount.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ComplianceContributorCount),
          ) as _i2.ComplianceContributorCount));
        case 'ComplianceSummaryTimestamp':
          result.complianceSummaryTimestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ComplianceSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ComplianceSummary(
      :compliantResourceCount,
      :nonCompliantResourceCount,
      :complianceSummaryTimestamp
    ) = object;
    if (compliantResourceCount != null) {
      result$
        ..add('CompliantResourceCount')
        ..add(serializers.serialize(
          compliantResourceCount,
          specifiedType: const FullType(_i2.ComplianceContributorCount),
        ));
    }
    if (nonCompliantResourceCount != null) {
      result$
        ..add('NonCompliantResourceCount')
        ..add(serializers.serialize(
          nonCompliantResourceCount,
          specifiedType: const FullType(_i2.ComplianceContributorCount),
        ));
    }
    if (complianceSummaryTimestamp != null) {
      result$
        ..add('ComplianceSummaryTimestamp')
        ..add(serializers.serialize(
          complianceSummaryTimestamp,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
