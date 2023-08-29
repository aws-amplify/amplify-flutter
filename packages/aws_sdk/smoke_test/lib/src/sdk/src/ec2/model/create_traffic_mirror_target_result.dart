// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_traffic_mirror_target_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_target.dart';

part 'create_traffic_mirror_target_result.g.dart';

abstract class CreateTrafficMirrorTargetResult
    with
        _i1.AWSEquatable<CreateTrafficMirrorTargetResult>
    implements
        Built<CreateTrafficMirrorTargetResult,
            CreateTrafficMirrorTargetResultBuilder> {
  factory CreateTrafficMirrorTargetResult({
    TrafficMirrorTarget? trafficMirrorTarget,
    String? clientToken,
  }) {
    return _$CreateTrafficMirrorTargetResult._(
      trafficMirrorTarget: trafficMirrorTarget,
      clientToken: clientToken,
    );
  }

  factory CreateTrafficMirrorTargetResult.build(
          [void Function(CreateTrafficMirrorTargetResultBuilder) updates]) =
      _$CreateTrafficMirrorTargetResult;

  const CreateTrafficMirrorTargetResult._();

  /// Constructs a [CreateTrafficMirrorTargetResult] from a [payload] and [response].
  factory CreateTrafficMirrorTargetResult.fromResponse(
    CreateTrafficMirrorTargetResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateTrafficMirrorTargetResult>>
      serializers = [CreateTrafficMirrorTargetResultEc2QuerySerializer()];

  /// Information about the Traffic Mirror target.
  TrafficMirrorTarget? get trafficMirrorTarget;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  List<Object?> get props => [
        trafficMirrorTarget,
        clientToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTrafficMirrorTargetResult')
          ..add(
            'trafficMirrorTarget',
            trafficMirrorTarget,
          )
          ..add(
            'clientToken',
            clientToken,
          );
    return helper.toString();
  }
}

class CreateTrafficMirrorTargetResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateTrafficMirrorTargetResult> {
  const CreateTrafficMirrorTargetResultEc2QuerySerializer()
      : super('CreateTrafficMirrorTargetResult');

  @override
  Iterable<Type> get types => const [
        CreateTrafficMirrorTargetResult,
        _$CreateTrafficMirrorTargetResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTrafficMirrorTargetResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTrafficMirrorTargetResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'trafficMirrorTarget':
          result.trafficMirrorTarget.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TrafficMirrorTarget),
          ) as TrafficMirrorTarget));
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
    CreateTrafficMirrorTargetResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateTrafficMirrorTargetResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTrafficMirrorTargetResult(:trafficMirrorTarget, :clientToken) =
        object;
    if (trafficMirrorTarget != null) {
      result$
        ..add(const _i2.XmlElementName('TrafficMirrorTarget'))
        ..add(serializers.serialize(
          trafficMirrorTarget,
          specifiedType: const FullType(TrafficMirrorTarget),
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
