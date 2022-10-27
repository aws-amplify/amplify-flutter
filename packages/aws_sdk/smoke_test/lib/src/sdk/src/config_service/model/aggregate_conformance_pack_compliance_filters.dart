// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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
    String? accountId,
    String? awsRegion,
    _i2.ConformancePackComplianceType? complianceType,
    String? conformancePackName,
  }) {
    return _$AggregateConformancePackComplianceFilters._(
      accountId: accountId,
      awsRegion: awsRegion,
      complianceType: complianceType,
      conformancePackName: conformancePackName,
    );
  }

  /// Filters the conformance packs based on an account ID, region, compliance type, and the name of the conformance pack.
  factory AggregateConformancePackComplianceFilters.build(
      [void Function(AggregateConformancePackComplianceFiltersBuilder)
          updates]) = _$AggregateConformancePackComplianceFilters;

  const AggregateConformancePackComplianceFilters._();

  static const List<_i3.SmithySerializer> serializers = [
    AggregateConformancePackComplianceFiltersAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AggregateConformancePackComplianceFiltersBuilder b) {}

  /// The 12-digit Amazon Web Services account ID of the source account.
  String? get accountId;

  /// The source Amazon Web Services Region from where the data is aggregated.
  String? get awsRegion;

  /// The compliance status of the conformance pack.
  _i2.ConformancePackComplianceType? get complianceType;

  /// The name of the conformance pack.
  String? get conformancePackName;
  @override
  List<Object?> get props => [
        accountId,
        awsRegion,
        complianceType,
        conformancePackName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'AggregateConformancePackComplianceFilters');
    helper.add(
      'accountId',
      accountId,
    );
    helper.add(
      'awsRegion',
      awsRegion,
    );
    helper.add(
      'complianceType',
      complianceType,
    );
    helper.add(
      'conformancePackName',
      conformancePackName,
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
        case 'ComplianceType':
          if (value != null) {
            result.complianceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ConformancePackComplianceType),
            ) as _i2.ConformancePackComplianceType);
          }
          break;
        case 'ConformancePackName':
          if (value != null) {
            result.conformancePackName = (serializers.deserialize(
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
    final payload = (object as AggregateConformancePackComplianceFilters);
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
    if (payload.complianceType != null) {
      result
        ..add('ComplianceType')
        ..add(serializers.serialize(
          payload.complianceType!,
          specifiedType: const FullType(_i2.ConformancePackComplianceType),
        ));
    }
    if (payload.conformancePackName != null) {
      result
        ..add('ConformancePackName')
        ..add(serializers.serialize(
          payload.conformancePackName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
