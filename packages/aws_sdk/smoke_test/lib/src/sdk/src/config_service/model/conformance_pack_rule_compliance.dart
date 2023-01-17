// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.conformance_pack_rule_compliance; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_type.dart'
    as _i2;

part 'conformance_pack_rule_compliance.g.dart';

/// Compliance information of one or more Config rules within a conformance pack. You can filter using Config rule names and compliance types.
abstract class ConformancePackRuleCompliance
    with
        _i1.AWSEquatable<ConformancePackRuleCompliance>
    implements
        Built<ConformancePackRuleCompliance,
            ConformancePackRuleComplianceBuilder> {
  /// Compliance information of one or more Config rules within a conformance pack. You can filter using Config rule names and compliance types.
  factory ConformancePackRuleCompliance({
    _i2.ConformancePackComplianceType? complianceType,
    String? configRuleName,
    List<String>? controls,
  }) {
    return _$ConformancePackRuleCompliance._(
      complianceType: complianceType,
      configRuleName: configRuleName,
      controls: controls == null ? null : _i3.BuiltList(controls),
    );
  }

  /// Compliance information of one or more Config rules within a conformance pack. You can filter using Config rule names and compliance types.
  factory ConformancePackRuleCompliance.build(
          [void Function(ConformancePackRuleComplianceBuilder) updates]) =
      _$ConformancePackRuleCompliance;

  const ConformancePackRuleCompliance._();

  static const List<_i4.SmithySerializer> serializers = [
    ConformancePackRuleComplianceAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConformancePackRuleComplianceBuilder b) {}

  /// Compliance of the Config rule.
  ///
  /// The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and `INSUFFICIENT_DATA`.
  _i2.ConformancePackComplianceType? get complianceType;

  /// Name of the Config rule.
  String? get configRuleName;

  /// Controls for the conformance pack. A control is a process to prevent or detect problems while meeting objectives. A control can align with a specific compliance regime or map to internal controls defined by an organization.
  _i3.BuiltList<String>? get controls;
  @override
  List<Object?> get props => [
        complianceType,
        configRuleName,
        controls,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConformancePackRuleCompliance');
    helper.add(
      'complianceType',
      complianceType,
    );
    helper.add(
      'configRuleName',
      configRuleName,
    );
    helper.add(
      'controls',
      controls,
    );
    return helper.toString();
  }
}

class ConformancePackRuleComplianceAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<ConformancePackRuleCompliance> {
  const ConformancePackRuleComplianceAwsJson11Serializer()
      : super('ConformancePackRuleCompliance');

  @override
  Iterable<Type> get types => const [
        ConformancePackRuleCompliance,
        _$ConformancePackRuleCompliance,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConformancePackRuleCompliance deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConformancePackRuleComplianceBuilder();
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
        case 'ConfigRuleName':
          if (value != null) {
            result.configRuleName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Controls':
          if (value != null) {
            result.controls.replace((serializers.deserialize(
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
    final payload = (object as ConformancePackRuleCompliance);
    final result = <Object?>[];
    if (payload.complianceType != null) {
      result
        ..add('ComplianceType')
        ..add(serializers.serialize(
          payload.complianceType!,
          specifiedType: const FullType(_i2.ConformancePackComplianceType),
        ));
    }
    if (payload.configRuleName != null) {
      result
        ..add('ConfigRuleName')
        ..add(serializers.serialize(
          payload.configRuleName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.controls != null) {
      result
        ..add('Controls')
        ..add(serializers.serialize(
          payload.controls!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
