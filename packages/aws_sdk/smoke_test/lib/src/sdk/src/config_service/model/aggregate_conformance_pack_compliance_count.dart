// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.aggregate_conformance_pack_compliance_count; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'aggregate_conformance_pack_compliance_count.g.dart';

/// The number of conformance packs that are compliant and noncompliant.
abstract class AggregateConformancePackComplianceCount
    with
        _i1.AWSEquatable<AggregateConformancePackComplianceCount>
    implements
        Built<AggregateConformancePackComplianceCount,
            AggregateConformancePackComplianceCountBuilder> {
  /// The number of conformance packs that are compliant and noncompliant.
  factory AggregateConformancePackComplianceCount({
    int? compliantConformancePackCount,
    int? nonCompliantConformancePackCount,
  }) {
    compliantConformancePackCount ??= 0;
    nonCompliantConformancePackCount ??= 0;
    return _$AggregateConformancePackComplianceCount._(
      compliantConformancePackCount: compliantConformancePackCount,
      nonCompliantConformancePackCount: nonCompliantConformancePackCount,
    );
  }

  /// The number of conformance packs that are compliant and noncompliant.
  factory AggregateConformancePackComplianceCount.build(
      [void Function(AggregateConformancePackComplianceCountBuilder)
          updates]) = _$AggregateConformancePackComplianceCount;

  const AggregateConformancePackComplianceCount._();

  static const List<
          _i2.SmithySerializer<AggregateConformancePackComplianceCount>>
      serializers = [
    AggregateConformancePackComplianceCountAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AggregateConformancePackComplianceCountBuilder b) {
    b.compliantConformancePackCount = 0;
    b.nonCompliantConformancePackCount = 0;
  }

  /// Number of compliant conformance packs.
  int get compliantConformancePackCount;

  /// Number of noncompliant conformance packs.
  int get nonCompliantConformancePackCount;
  @override
  List<Object?> get props => [
        compliantConformancePackCount,
        nonCompliantConformancePackCount,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AggregateConformancePackComplianceCount')
          ..add(
            'compliantConformancePackCount',
            compliantConformancePackCount,
          )
          ..add(
            'nonCompliantConformancePackCount',
            nonCompliantConformancePackCount,
          );
    return helper.toString();
  }
}

class AggregateConformancePackComplianceCountAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<AggregateConformancePackComplianceCount> {
  const AggregateConformancePackComplianceCountAwsJson11Serializer()
      : super('AggregateConformancePackComplianceCount');

  @override
  Iterable<Type> get types => const [
        AggregateConformancePackComplianceCount,
        _$AggregateConformancePackComplianceCount,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  AggregateConformancePackComplianceCount deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggregateConformancePackComplianceCountBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CompliantConformancePackCount':
          result.compliantConformancePackCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NonCompliantConformancePackCount':
          result.nonCompliantConformancePackCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AggregateConformancePackComplianceCount object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AggregateConformancePackComplianceCount(
      :compliantConformancePackCount,
      :nonCompliantConformancePackCount
    ) = object;
    result$.addAll([
      'CompliantConformancePackCount',
      serializers.serialize(
        compliantConformancePackCount,
        specifiedType: const FullType(int),
      ),
      'NonCompliantConformancePackCount',
      serializers.serialize(
        nonCompliantConformancePackCount,
        specifiedType: const FullType(int),
      ),
    ]);
    return result$;
  }
}
