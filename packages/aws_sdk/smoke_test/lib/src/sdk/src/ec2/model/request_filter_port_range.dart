// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.request_filter_port_range; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'request_filter_port_range.g.dart';

/// Describes a port range.
abstract class RequestFilterPortRange
    with _i1.AWSEquatable<RequestFilterPortRange>
    implements Built<RequestFilterPortRange, RequestFilterPortRangeBuilder> {
  /// Describes a port range.
  factory RequestFilterPortRange({
    int? fromPort,
    int? toPort,
  }) {
    fromPort ??= 0;
    toPort ??= 0;
    return _$RequestFilterPortRange._(
      fromPort: fromPort,
      toPort: toPort,
    );
  }

  /// Describes a port range.
  factory RequestFilterPortRange.build(
          [void Function(RequestFilterPortRangeBuilder) updates]) =
      _$RequestFilterPortRange;

  const RequestFilterPortRange._();

  static const List<_i2.SmithySerializer<RequestFilterPortRange>> serializers =
      [RequestFilterPortRangeEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RequestFilterPortRangeBuilder b) {
    b
      ..fromPort = 0
      ..toPort = 0;
  }

  /// The first port in the range.
  int get fromPort;

  /// The last port in the range.
  int get toPort;
  @override
  List<Object?> get props => [
        fromPort,
        toPort,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RequestFilterPortRange')
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

class RequestFilterPortRangeEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<RequestFilterPortRange> {
  const RequestFilterPortRangeEc2QuerySerializer()
      : super('RequestFilterPortRange');

  @override
  Iterable<Type> get types => const [
        RequestFilterPortRange,
        _$RequestFilterPortRange,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RequestFilterPortRange deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestFilterPortRangeBuilder();
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
    RequestFilterPortRange object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RequestFilterPortRangeResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RequestFilterPortRange(:fromPort, :toPort) = object;
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
