// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.aggregate_conformance_pack_compliance_summary_filters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'aggregate_conformance_pack_compliance_summary_filters.g.dart';

/// Filters the results based on account ID and region.
abstract class AggregateConformancePackComplianceSummaryFilters
    with
        _i1.AWSEquatable<AggregateConformancePackComplianceSummaryFilters>
    implements
        Built<AggregateConformancePackComplianceSummaryFilters,
            AggregateConformancePackComplianceSummaryFiltersBuilder> {
  /// Filters the results based on account ID and region.
  factory AggregateConformancePackComplianceSummaryFilters({
    String? accountId,
    String? awsRegion,
  }) {
    return _$AggregateConformancePackComplianceSummaryFilters._(
      accountId: accountId,
      awsRegion: awsRegion,
    );
  }

  /// Filters the results based on account ID and region.
  factory AggregateConformancePackComplianceSummaryFilters.build(
      [void Function(AggregateConformancePackComplianceSummaryFiltersBuilder)
          updates]) = _$AggregateConformancePackComplianceSummaryFilters;

  const AggregateConformancePackComplianceSummaryFilters._();

  static const List<
      _i2.SmithySerializer<
          AggregateConformancePackComplianceSummaryFilters>> serializers = [
    AggregateConformancePackComplianceSummaryFiltersAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      AggregateConformancePackComplianceSummaryFiltersBuilder b) {}

  /// The 12-digit Amazon Web Services account ID of the source account.
  String? get accountId;

  /// The source Amazon Web Services Region from where the data is aggregated.
  String? get awsRegion;
  @override
  List<Object?> get props => [
        accountId,
        awsRegion,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'AggregateConformancePackComplianceSummaryFilters')
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

class AggregateConformancePackComplianceSummaryFiltersAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<
        AggregateConformancePackComplianceSummaryFilters> {
  const AggregateConformancePackComplianceSummaryFiltersAwsJson11Serializer()
      : super('AggregateConformancePackComplianceSummaryFilters');

  @override
  Iterable<Type> get types => const [
        AggregateConformancePackComplianceSummaryFilters,
        _$AggregateConformancePackComplianceSummaryFilters,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  AggregateConformancePackComplianceSummaryFilters deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggregateConformancePackComplianceSummaryFiltersBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    AggregateConformancePackComplianceSummaryFilters object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AggregateConformancePackComplianceSummaryFilters(
      :accountId,
      :awsRegion
    ) = object;
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
