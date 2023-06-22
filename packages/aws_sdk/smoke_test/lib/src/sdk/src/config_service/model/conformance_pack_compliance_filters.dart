// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    List<String>? configRuleNames,
    _i2.ConformancePackComplianceType? complianceType,
  }) {
    return _$ConformancePackComplianceFilters._(
      configRuleNames:
          configRuleNames == null ? null : _i3.BuiltList(configRuleNames),
      complianceType: complianceType,
    );
  }

  /// Filters the conformance pack by compliance types and Config rule names.
  factory ConformancePackComplianceFilters.build(
          [void Function(ConformancePackComplianceFiltersBuilder) updates]) =
      _$ConformancePackComplianceFilters;

  const ConformancePackComplianceFilters._();

  static const List<_i4.SmithySerializer<ConformancePackComplianceFilters>>
      serializers = [ConformancePackComplianceFiltersAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConformancePackComplianceFiltersBuilder b) {}

  /// Filters the results by Config rule names.
  _i3.BuiltList<String>? get configRuleNames;

  /// Filters the results by compliance.
  ///
  /// The allowed values are `COMPLIANT` and `NON_COMPLIANT`. `INSUFFICIENT_DATA` is not supported.
  _i2.ConformancePackComplianceType? get complianceType;
  @override
  List<Object?> get props => [
        configRuleNames,
        complianceType,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ConformancePackComplianceFilters')
          ..add(
            'configRuleNames',
            configRuleNames,
          )
          ..add(
            'complianceType',
            complianceType,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigRuleNames':
          result.configRuleNames.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'ComplianceType':
          result.complianceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ConformancePackComplianceType),
          ) as _i2.ConformancePackComplianceType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ConformancePackComplianceFilters object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConformancePackComplianceFilters(:configRuleNames, :complianceType) =
        object;
    if (configRuleNames != null) {
      result$
        ..add('ConfigRuleNames')
        ..add(serializers.serialize(
          configRuleNames,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
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
    return result$;
  }
}
