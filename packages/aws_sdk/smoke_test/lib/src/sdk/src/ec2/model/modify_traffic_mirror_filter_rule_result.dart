// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_traffic_mirror_filter_rule_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_filter_rule.dart';

part 'modify_traffic_mirror_filter_rule_result.g.dart';

abstract class ModifyTrafficMirrorFilterRuleResult
    with
        _i1.AWSEquatable<ModifyTrafficMirrorFilterRuleResult>
    implements
        Built<ModifyTrafficMirrorFilterRuleResult,
            ModifyTrafficMirrorFilterRuleResultBuilder> {
  factory ModifyTrafficMirrorFilterRuleResult(
      {TrafficMirrorFilterRule? trafficMirrorFilterRule}) {
    return _$ModifyTrafficMirrorFilterRuleResult._(
        trafficMirrorFilterRule: trafficMirrorFilterRule);
  }

  factory ModifyTrafficMirrorFilterRuleResult.build(
          [void Function(ModifyTrafficMirrorFilterRuleResultBuilder) updates]) =
      _$ModifyTrafficMirrorFilterRuleResult;

  const ModifyTrafficMirrorFilterRuleResult._();

  /// Constructs a [ModifyTrafficMirrorFilterRuleResult] from a [payload] and [response].
  factory ModifyTrafficMirrorFilterRuleResult.fromResponse(
    ModifyTrafficMirrorFilterRuleResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyTrafficMirrorFilterRuleResult>>
      serializers = [ModifyTrafficMirrorFilterRuleResultEc2QuerySerializer()];

  /// Modifies a Traffic Mirror rule.
  TrafficMirrorFilterRule? get trafficMirrorFilterRule;
  @override
  List<Object?> get props => [trafficMirrorFilterRule];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyTrafficMirrorFilterRuleResult')
          ..add(
            'trafficMirrorFilterRule',
            trafficMirrorFilterRule,
          );
    return helper.toString();
  }
}

class ModifyTrafficMirrorFilterRuleResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<ModifyTrafficMirrorFilterRuleResult> {
  const ModifyTrafficMirrorFilterRuleResultEc2QuerySerializer()
      : super('ModifyTrafficMirrorFilterRuleResult');

  @override
  Iterable<Type> get types => const [
        ModifyTrafficMirrorFilterRuleResult,
        _$ModifyTrafficMirrorFilterRuleResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyTrafficMirrorFilterRuleResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyTrafficMirrorFilterRuleResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'trafficMirrorFilterRule':
          result.trafficMirrorFilterRule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TrafficMirrorFilterRule),
          ) as TrafficMirrorFilterRule));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyTrafficMirrorFilterRuleResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyTrafficMirrorFilterRuleResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyTrafficMirrorFilterRuleResult(:trafficMirrorFilterRule) =
        object;
    if (trafficMirrorFilterRule != null) {
      result$
        ..add(const _i2.XmlElementName('TrafficMirrorFilterRule'))
        ..add(serializers.serialize(
          trafficMirrorFilterRule,
          specifiedType: const FullType(TrafficMirrorFilterRule),
        ));
    }
    return result$;
  }
}
