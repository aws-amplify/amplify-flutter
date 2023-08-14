// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_traffic_mirror_filter_rule_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_filter_rule.dart';

part 'create_traffic_mirror_filter_rule_result.g.dart';

abstract class CreateTrafficMirrorFilterRuleResult
    with
        _i1.AWSEquatable<CreateTrafficMirrorFilterRuleResult>
    implements
        Built<CreateTrafficMirrorFilterRuleResult,
            CreateTrafficMirrorFilterRuleResultBuilder> {
  factory CreateTrafficMirrorFilterRuleResult({
    TrafficMirrorFilterRule? trafficMirrorFilterRule,
    String? clientToken,
  }) {
    return _$CreateTrafficMirrorFilterRuleResult._(
      trafficMirrorFilterRule: trafficMirrorFilterRule,
      clientToken: clientToken,
    );
  }

  factory CreateTrafficMirrorFilterRuleResult.build(
          [void Function(CreateTrafficMirrorFilterRuleResultBuilder) updates]) =
      _$CreateTrafficMirrorFilterRuleResult;

  const CreateTrafficMirrorFilterRuleResult._();

  /// Constructs a [CreateTrafficMirrorFilterRuleResult] from a [payload] and [response].
  factory CreateTrafficMirrorFilterRuleResult.fromResponse(
    CreateTrafficMirrorFilterRuleResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateTrafficMirrorFilterRuleResult>>
      serializers = [CreateTrafficMirrorFilterRuleResultEc2QuerySerializer()];

  /// The Traffic Mirror rule.
  TrafficMirrorFilterRule? get trafficMirrorFilterRule;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  List<Object?> get props => [
        trafficMirrorFilterRule,
        clientToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTrafficMirrorFilterRuleResult')
          ..add(
            'trafficMirrorFilterRule',
            trafficMirrorFilterRule,
          )
          ..add(
            'clientToken',
            clientToken,
          );
    return helper.toString();
  }
}

class CreateTrafficMirrorFilterRuleResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<CreateTrafficMirrorFilterRuleResult> {
  const CreateTrafficMirrorFilterRuleResultEc2QuerySerializer()
      : super('CreateTrafficMirrorFilterRuleResult');

  @override
  Iterable<Type> get types => const [
        CreateTrafficMirrorFilterRuleResult,
        _$CreateTrafficMirrorFilterRuleResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTrafficMirrorFilterRuleResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTrafficMirrorFilterRuleResultBuilder();
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
        case 'clientToken':
          result.clientToken = (serializers.deserialize(
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
    CreateTrafficMirrorFilterRuleResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateTrafficMirrorFilterRuleResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTrafficMirrorFilterRuleResult(
      :trafficMirrorFilterRule,
      :clientToken
    ) = object;
    if (trafficMirrorFilterRule != null) {
      result$
        ..add(const _i2.XmlElementName('TrafficMirrorFilterRule'))
        ..add(serializers.serialize(
          trafficMirrorFilterRule,
          specifiedType: const FullType(TrafficMirrorFilterRule),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i2.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
