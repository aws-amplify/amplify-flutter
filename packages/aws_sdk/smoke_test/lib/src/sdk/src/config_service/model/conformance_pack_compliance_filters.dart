// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.conformance_pack_compliance_filters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_type.dart'
    as _i2;

part 'conformance_pack_compliance_filters.g.dart';

/// Filters the conformance pack by compliance types and Config rule names.
abstract class ConformancePackComplianceFilters
    with
        _i1.AWSEquatable<ConformancePackComplianceFilters>
    implements
        Built<ConformancePackComplianceFilters,
            ConformancePackComplianceFiltersBuilder> {
  /// Filters the conformance pack by compliance types and Config rule names.
  factory ConformancePackComplianceFilters({
    _i2.ConformancePackComplianceType? complianceType,
    List<String>? configRuleNames,
  }) {
    return _$ConformancePackComplianceFilters._(
      complianceType: complianceType,
      configRuleNames:
          configRuleNames == null ? null : _i3.BuiltList(configRuleNames),
    );
  }

  /// Filters the conformance pack by compliance types and Config rule names.
  factory ConformancePackComplianceFilters.build(
          [void Function(ConformancePackComplianceFiltersBuilder) updates]) =
      _$ConformancePackComplianceFilters;

  const ConformancePackComplianceFilters._();

  static const List<_i4.SmithySerializer> serializers = [
    ConformancePackComplianceFiltersAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConformancePackComplianceFiltersBuilder b) {}

  /// Filters the results by compliance.
  ///
  /// The allowed values are `COMPLIANT` and `NON_COMPLIANT`. `INSUFFICIENT_DATA` is not supported.
  _i2.ConformancePackComplianceType? get complianceType;

  /// Filters the results by Config rule names.
  _i3.BuiltList<String>? get configRuleNames;
  @override
  List<Object?> get props => [
        complianceType,
        configRuleNames,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ConformancePackComplianceFilters');
    helper.add(
      'complianceType',
      complianceType,
    );
    helper.add(
      'configRuleNames',
      configRuleNames,
    );
    return helper.toString();
  }
}

class ConformancePackComplianceFiltersAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<ConformancePackComplianceFilters> {
  const ConformancePackComplianceFiltersAwsJson11Serializer()
      : super('ConformancePackComplianceFilters');

  @override
  Iterable<Type> get types => const [
        ConformancePackComplianceFilters,
        _$ConformancePackComplianceFilters,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConformancePackComplianceFilters deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConformancePackComplianceFiltersBuilder();
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
        case 'ConfigRuleNames':
          if (value != null) {
            result.configRuleNames.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
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
    final payload = (object as ConformancePackComplianceFilters);
    final result = <Object?>[];
    if (payload.complianceType != null) {
      result
        ..add('ComplianceType')
        ..add(serializers.serialize(
          payload.complianceType!,
          specifiedType: const FullType(_i2.ConformancePackComplianceType),
        ));
    }
    if (payload.configRuleNames != null) {
      result
        ..add('ConfigRuleNames')
        ..add(serializers.serialize(
          payload.configRuleNames!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
