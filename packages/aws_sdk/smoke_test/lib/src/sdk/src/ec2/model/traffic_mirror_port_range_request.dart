// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.traffic_mirror_port_range_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'traffic_mirror_port_range_request.g.dart';

/// Information about the Traffic Mirror filter rule port range.
abstract class TrafficMirrorPortRangeRequest
    with
        _i1.AWSEquatable<TrafficMirrorPortRangeRequest>
    implements
        Built<TrafficMirrorPortRangeRequest,
            TrafficMirrorPortRangeRequestBuilder> {
  /// Information about the Traffic Mirror filter rule port range.
  factory TrafficMirrorPortRangeRequest({
    int? fromPort,
    int? toPort,
  }) {
    fromPort ??= 0;
    toPort ??= 0;
    return _$TrafficMirrorPortRangeRequest._(
      fromPort: fromPort,
      toPort: toPort,
    );
  }

  /// Information about the Traffic Mirror filter rule port range.
  factory TrafficMirrorPortRangeRequest.build(
          [void Function(TrafficMirrorPortRangeRequestBuilder) updates]) =
      _$TrafficMirrorPortRangeRequest;

  const TrafficMirrorPortRangeRequest._();

  static const List<_i2.SmithySerializer<TrafficMirrorPortRangeRequest>>
      serializers = [TrafficMirrorPortRangeRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TrafficMirrorPortRangeRequestBuilder b) {
    b
      ..fromPort = 0
      ..toPort = 0;
  }

  /// The first port in the Traffic Mirror port range. This applies to the TCP and UDP protocols.
  int get fromPort;

  /// The last port in the Traffic Mirror port range. This applies to the TCP and UDP protocols.
  int get toPort;
  @override
  List<Object?> get props => [
        fromPort,
        toPort,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TrafficMirrorPortRangeRequest')
      ..add(
        'fromPort',
        fromPort,
      )
      ..add(
        'toPort',
        toPort,
      );
    return helper.toString();
  }
}

class TrafficMirrorPortRangeRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<TrafficMirrorPortRangeRequest> {
  const TrafficMirrorPortRangeRequestEc2QuerySerializer()
      : super('TrafficMirrorPortRangeRequest');

  @override
  Iterable<Type> get types => const [
        TrafficMirrorPortRangeRequest,
        _$TrafficMirrorPortRangeRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TrafficMirrorPortRangeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrafficMirrorPortRangeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'FromPort':
          result.fromPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ToPort':
          result.toPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TrafficMirrorPortRangeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TrafficMirrorPortRangeRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TrafficMirrorPortRangeRequest(:fromPort, :toPort) = object;
    result$
      ..add(const _i2.XmlElementName('FromPort'))
      ..add(serializers.serialize(
        fromPort,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i2.XmlElementName('ToPort'))
      ..add(serializers.serialize(
        toPort,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
