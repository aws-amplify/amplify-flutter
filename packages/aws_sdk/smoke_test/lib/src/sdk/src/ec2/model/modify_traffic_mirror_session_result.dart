// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_traffic_mirror_session_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_session.dart';

part 'modify_traffic_mirror_session_result.g.dart';

abstract class ModifyTrafficMirrorSessionResult
    with
        _i1.AWSEquatable<ModifyTrafficMirrorSessionResult>
    implements
        Built<ModifyTrafficMirrorSessionResult,
            ModifyTrafficMirrorSessionResultBuilder> {
  factory ModifyTrafficMirrorSessionResult(
      {TrafficMirrorSession? trafficMirrorSession}) {
    return _$ModifyTrafficMirrorSessionResult._(
        trafficMirrorSession: trafficMirrorSession);
  }

  factory ModifyTrafficMirrorSessionResult.build(
          [void Function(ModifyTrafficMirrorSessionResultBuilder) updates]) =
      _$ModifyTrafficMirrorSessionResult;

  const ModifyTrafficMirrorSessionResult._();

  /// Constructs a [ModifyTrafficMirrorSessionResult] from a [payload] and [response].
  factory ModifyTrafficMirrorSessionResult.fromResponse(
    ModifyTrafficMirrorSessionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyTrafficMirrorSessionResult>>
      serializers = [ModifyTrafficMirrorSessionResultEc2QuerySerializer()];

  /// Information about the Traffic Mirror session.
  TrafficMirrorSession? get trafficMirrorSession;
  @override
  List<Object?> get props => [trafficMirrorSession];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyTrafficMirrorSessionResult')
          ..add(
            'trafficMirrorSession',
            trafficMirrorSession,
          );
    return helper.toString();
  }
}

class ModifyTrafficMirrorSessionResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyTrafficMirrorSessionResult> {
  const ModifyTrafficMirrorSessionResultEc2QuerySerializer()
      : super('ModifyTrafficMirrorSessionResult');

  @override
  Iterable<Type> get types => const [
        ModifyTrafficMirrorSessionResult,
        _$ModifyTrafficMirrorSessionResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyTrafficMirrorSessionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyTrafficMirrorSessionResultBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyTrafficMirrorSessionResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyTrafficMirrorSessionResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyTrafficMirrorSessionResult(:trafficMirrorSession) = object;
    if (trafficMirrorSession != null) {
      result$
        ..add(const _i2.XmlElementName('TrafficMirrorSession'))
        ..add(serializers.serialize(
          trafficMirrorSession,
          specifiedType: const FullType(TrafficMirrorSession),
        ));
    }
    return result$;
  }
}
