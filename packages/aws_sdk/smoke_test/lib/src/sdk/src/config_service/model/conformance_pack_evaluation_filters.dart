// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.conformance_pack_evaluation_filters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_type.dart'
    as _i2;

part 'conformance_pack_evaluation_filters.g.dart';

/// Filters a conformance pack by Config rule names, compliance types, Amazon Web Services resource types, and resource IDs.
abstract class ConformancePackEvaluationFilters
    with
        _i1.AWSEquatable<ConformancePackEvaluationFilters>
    implements
        Built<ConformancePackEvaluationFilters,
            ConformancePackEvaluationFiltersBuilder> {
  /// Filters a conformance pack by Config rule names, compliance types, Amazon Web Services resource types, and resource IDs.
  factory ConformancePackEvaluationFilters({
    _i2.ConformancePackComplianceType? complianceType,
    List<String>? configRuleNames,
    List<String>? resourceIds,
    String? resourceType,
  }) {
    return _$ConformancePackEvaluationFilters._(
      complianceType: complianceType,
      configRuleNames:
          configRuleNames == null ? null : _i3.BuiltList(configRuleNames),
      resourceIds: resourceIds == null ? null : _i3.BuiltList(resourceIds),
      resourceType: resourceType,
    );
  }

  /// Filters a conformance pack by Config rule names, compliance types, Amazon Web Services resource types, and resource IDs.
  factory ConformancePackEvaluationFilters.build(
          [void Function(ConformancePackEvaluationFiltersBuilder) updates]) =
      _$ConformancePackEvaluationFilters;

  const ConformancePackEvaluationFilters._();

  static const List<_i4.SmithySerializer> serializers = [
    ConformancePackEvaluationFiltersAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConformancePackEvaluationFiltersBuilder b) {}

  /// Filters the results by compliance.
  ///
  /// The allowed values are `COMPLIANT` and `NON_COMPLIANT`. `INSUFFICIENT_DATA` is not supported.
  _i2.ConformancePackComplianceType? get complianceType;

  /// Filters the results by Config rule names.
  _i3.BuiltList<String>? get configRuleNames;

  /// Filters the results by resource IDs.
  ///
  /// This is valid only when you provide resource type. If there is no resource type, you will see an error.
  _i3.BuiltList<String>? get resourceIds;

  /// Filters the results by the resource type (for example, `"AWS::EC2::Instance"`).
  String? get resourceType;
  @override
  List<Object?> get props => [
        complianceType,
        configRuleNames,
        resourceIds,
        resourceType,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ConformancePackEvaluationFilters');
    helper.add(
      'complianceType',
      complianceType,
    );
    helper.add(
      'configRuleNames',
      configRuleNames,
    );
    helper.add(
      'resourceIds',
      resourceIds,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    return helper.toString();
  }
}

class ConformancePackEvaluationFiltersAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<ConformancePackEvaluationFilters> {
  const ConformancePackEvaluationFiltersAwsJson11Serializer()
      : super('ConformancePackEvaluationFilters');

  @override
  Iterable<Type> get types => const [
        ConformancePackEvaluationFilters,
        _$ConformancePackEvaluationFilters,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConformancePackEvaluationFilters deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConformancePackEvaluationFiltersBuilder();
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
        case 'ResourceIds':
          if (value != null) {
            result.resourceIds.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
          }
          break;
        case 'ResourceType':
          if (value != null) {
            result.resourceType = (serializers.deserialize(
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
    final payload = (object as ConformancePackEvaluationFilters);
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
    if (payload.resourceIds != null) {
      result
        ..add('ResourceIds')
        ..add(serializers.serialize(
          payload.resourceIds!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.resourceType != null) {
      result
        ..add('ResourceType')
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
