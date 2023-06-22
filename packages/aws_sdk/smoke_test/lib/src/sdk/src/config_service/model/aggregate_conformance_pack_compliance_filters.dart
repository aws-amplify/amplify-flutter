// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.aggregate_conformance_pack_compliance_filters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_type.dart'
    as _i2;

part 'aggregate_conformance_pack_compliance_filters.g.dart';

/// Filters the conformance packs based on an account ID, region, compliance type, and the name of the conformance pack.
abstract class AggregateConformancePackComplianceFilters
    with
        _i1.AWSEquatable<AggregateConformancePackComplianceFilters>
    implements
        Built<AggregateConformancePackComplianceFilters,
            AggregateConformancePackComplianceFiltersBuilder> {
  /// Filters the conformance packs based on an account ID, region, compliance type, and the name of the conformance pack.
  factory AggregateConformancePackComplianceFilters({
    String? conformancePackName,
    _i2.ConformancePackComplianceType? complianceType,
    String? accountId,
    String? awsRegion,
  }) {
    return _$AggregateConformancePackComplianceFilters._(
      conformancePackName: conformancePackName,
      complianceType: complianceType,
      accountId: accountId,
      awsRegion: awsRegion,
    );
  }

  /// Filters the conformance packs based on an account ID, region, compliance type, and the name of the conformance pack.
  factory AggregateConformancePackComplianceFilters.build(
      [void Function(AggregateConformancePackComplianceFiltersBuilder)
          updates]) = _$AggregateConformancePackComplianceFilters;

  const AggregateConformancePackComplianceFilters._();

  static const List<
          _i3.SmithySerializer<AggregateConformancePackComplianceFilters>>
      serializers = [
    AggregateConformancePackComplianceFiltersAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AggregateConformancePackComplianceFiltersBuilder b) {}

  /// The name of the conformance pack.
  String? get conformancePackName;

  /// The compliance status of the conformance pack.
  _i2.ConformancePackComplianceType? get complianceType;

  /// The 12-digit Amazon Web Services account ID of the source account.
  String? get accountId;

  /// The source Amazon Web Services Region from where the data is aggregated.
  String? get awsRegion;
  @override
  List<Object?> get props => [
        conformancePackName,
        complianceType,
        accountId,
        awsRegion,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AggregateConformancePackComplianceFilters')
          ..add(
            'conformancePackName',
            conformancePackName,
          )
          ..add(
            'complianceType',
            complianceType,
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

class AggregateConformancePackComplianceFiltersAwsJson11Serializer extends _i3
    .StructuredSmithySerializer<AggregateConformancePackComplianceFilters> {
  const AggregateConformancePackComplianceFiltersAwsJson11Serializer()
      : super('AggregateConformancePackComplianceFilters');

  @override
  Iterable<Type> get types => const [
        AggregateConformancePackComplianceFilters,
        _$AggregateConformancePackComplianceFilters,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  AggregateConformancePackComplianceFilters deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggregateConformancePackComplianceFiltersBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConformancePackName':
          result.conformancePackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ComplianceType':
          result.complianceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ConformancePackComplianceType),
          ) as _i2.ConformancePackComplianceType);
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
    AggregateConformancePackComplianceFilters object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AggregateConformancePackComplianceFilters(
      :conformancePackName,
      :complianceType,
      :accountId,
      :awsRegion
    ) = object;
    if (conformancePackName != null) {
      result$
        ..add('ConformancePackName')
        ..add(serializers.serialize(
          conformancePackName,
          specifiedType: const FullType(String),
        ));
    }
    if (complianceType != null) {
      result$
        ..add('ComplianceType')
        ..add(serializers.serialize(
          complianceType,
          specifiedType: const FullType(_i2.ConformancePackComplianceType),
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
