// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_traffic_mirror_session_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_session.dart';

part 'create_traffic_mirror_session_result.g.dart';

abstract class CreateTrafficMirrorSessionResult
    with
        _i1.AWSEquatable<CreateTrafficMirrorSessionResult>
    implements
        Built<CreateTrafficMirrorSessionResult,
            CreateTrafficMirrorSessionResultBuilder> {
  factory CreateTrafficMirrorSessionResult({
    TrafficMirrorSession? trafficMirrorSession,
    String? clientToken,
  }) {
    return _$CreateTrafficMirrorSessionResult._(
      trafficMirrorSession: trafficMirrorSession,
      clientToken: clientToken,
    );
  }

  factory CreateTrafficMirrorSessionResult.build(
          [void Function(CreateTrafficMirrorSessionResultBuilder) updates]) =
      _$CreateTrafficMirrorSessionResult;

  const CreateTrafficMirrorSessionResult._();

  /// Constructs a [CreateTrafficMirrorSessionResult] from a [payload] and [response].
  factory CreateTrafficMirrorSessionResult.fromResponse(
    CreateTrafficMirrorSessionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateTrafficMirrorSessionResult>>
      serializers = [CreateTrafficMirrorSessionResultEc2QuerySerializer()];

  /// Information about the Traffic Mirror session.
  TrafficMirrorSession? get trafficMirrorSession;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  List<Object?> get props => [
        trafficMirrorSession,
        clientToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTrafficMirrorSessionResult')
          ..add(
            'trafficMirrorSession',
            trafficMirrorSession,
          )
          ..add(
            'clientToken',
            clientToken,
          );
    return helper.toString();
  }
}

class CreateTrafficMirrorSessionResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateTrafficMirrorSessionResult> {
  const CreateTrafficMirrorSessionResultEc2QuerySerializer()
      : super('CreateTrafficMirrorSessionResult');

  @override
  Iterable<Type> get types => const [
        CreateTrafficMirrorSessionResult,
        _$CreateTrafficMirrorSessionResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTrafficMirrorSessionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTrafficMirrorSessionResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'trafficMirrorSession':
          result.trafficMirrorSession.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TrafficMirrorSession),
          ) as TrafficMirrorSession));
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
    CreateTrafficMirrorSessionResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateTrafficMirrorSessionResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTrafficMirrorSessionResult(
      :trafficMirrorSession,
      :clientToken
    ) = object;
    if (trafficMirrorSession != null) {
      result$
        ..add(const _i2.XmlElementName('TrafficMirrorSession'))
        ..add(serializers.serialize(
          trafficMirrorSession,
          specifiedType: const FullType(TrafficMirrorSession),
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
