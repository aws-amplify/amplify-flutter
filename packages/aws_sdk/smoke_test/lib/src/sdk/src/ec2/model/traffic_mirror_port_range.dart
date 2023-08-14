// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.traffic_mirror_port_range; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'traffic_mirror_port_range.g.dart';

/// Describes the Traffic Mirror port range.
abstract class TrafficMirrorPortRange
    with _i1.AWSEquatable<TrafficMirrorPortRange>
    implements Built<TrafficMirrorPortRange, TrafficMirrorPortRangeBuilder> {
  /// Describes the Traffic Mirror port range.
  factory TrafficMirrorPortRange({
    int? fromPort,
    int? toPort,
  }) {
    fromPort ??= 0;
    toPort ??= 0;
    return _$TrafficMirrorPortRange._(
      fromPort: fromPort,
      toPort: toPort,
    );
  }

  /// Describes the Traffic Mirror port range.
  factory TrafficMirrorPortRange.build(
          [void Function(TrafficMirrorPortRangeBuilder) updates]) =
      _$TrafficMirrorPortRange;

  const TrafficMirrorPortRange._();

  static const List<_i2.SmithySerializer<TrafficMirrorPortRange>> serializers =
      [TrafficMirrorPortRangeEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TrafficMirrorPortRangeBuilder b) {
    b
      ..fromPort = 0
      ..toPort = 0;
  }

  /// The start of the Traffic Mirror port range. This applies to the TCP and UDP protocols.
  int get fromPort;

  /// The end of the Traffic Mirror port range. This applies to the TCP and UDP protocols.
  int get toPort;
  @override
  List<Object?> get props => [
        fromPort,
        toPort,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TrafficMirrorPortRange')
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

class TrafficMirrorPortRangeEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<TrafficMirrorPortRange> {
  const TrafficMirrorPortRangeEc2QuerySerializer()
      : super('TrafficMirrorPortRange');

  @override
  Iterable<Type> get types => const [
        TrafficMirrorPortRange,
        _$TrafficMirrorPortRange,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TrafficMirrorPortRange deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrafficMirrorPortRangeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'fromPort':
          result.fromPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'toPort':
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
    TrafficMirrorPortRange object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TrafficMirrorPortRangeResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TrafficMirrorPortRange(:fromPort, :toPort) = object;
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
