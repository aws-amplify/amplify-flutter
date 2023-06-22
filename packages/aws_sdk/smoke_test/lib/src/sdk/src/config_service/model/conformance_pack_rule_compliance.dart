// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    String? configRuleName,
    _i2.ConformancePackComplianceType? complianceType,
    List<String>? controls,
  }) {
    return _$ConformancePackRuleCompliance._(
      configRuleName: configRuleName,
      complianceType: complianceType,
      controls: controls == null ? null : _i3.BuiltList(controls),
    );
  }

  /// Compliance information of one or more Config rules within a conformance pack. You can filter using Config rule names and compliance types.
  factory ConformancePackRuleCompliance.build(
          [void Function(ConformancePackRuleComplianceBuilder) updates]) =
      _$ConformancePackRuleCompliance;

  const ConformancePackRuleCompliance._();

  static const List<_i4.SmithySerializer<ConformancePackRuleCompliance>>
      serializers = [ConformancePackRuleComplianceAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConformancePackRuleComplianceBuilder b) {}

  /// Name of the Config rule.
  String? get configRuleName;

  /// Compliance of the Config rule.
  _i2.ConformancePackComplianceType? get complianceType;

  /// Controls for the conformance pack. A control is a process to prevent or detect problems while meeting objectives. A control can align with a specific compliance regime or map to internal controls defined by an organization.
  _i3.BuiltList<String>? get controls;
  @override
  List<Object?> get props => [
        configRuleName,
        complianceType,
        controls,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConformancePackRuleCompliance')
      ..add(
        'configRuleName',
        configRuleName,
      )
      ..add(
        'complianceType',
        complianceType,
      )
      ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ComplianceType':
          result.complianceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ConformancePackComplianceType),
          ) as _i2.ConformancePackComplianceType);
        case 'Controls':
          result.controls.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ConformancePackRuleCompliance object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConformancePackRuleCompliance(
      :configRuleName,
      :complianceType,
      :controls
    ) = object;
    if (configRuleName != null) {
      result$
        ..add('ConfigRuleName')
        ..add(serializers.serialize(
          configRuleName,
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
    if (controls != null) {
      result$
        ..add('Controls')
        ..add(serializers.serialize(
          controls,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
