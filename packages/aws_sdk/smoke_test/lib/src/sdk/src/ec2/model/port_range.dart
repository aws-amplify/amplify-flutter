// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.port_range; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'port_range.g.dart';

/// Describes a range of ports.
abstract class PortRange
    with _i1.AWSEquatable<PortRange>
    implements Built<PortRange, PortRangeBuilder> {
  /// Describes a range of ports.
  factory PortRange({
    int? from,
    int? to,
  }) {
    from ??= 0;
    to ??= 0;
    return _$PortRange._(
      from: from,
      to: to,
    );
  }

  /// Describes a range of ports.
  factory PortRange.build([void Function(PortRangeBuilder) updates]) =
      _$PortRange;

  const PortRange._();

  static const List<_i2.SmithySerializer<PortRange>> serializers = [
    PortRangeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PortRangeBuilder b) {
    b
      ..from = 0
      ..to = 0;
  }

  /// The first port in the range.
  int get from;

  /// The last port in the range.
  int get to;
  @override
  List<Object?> get props => [
        from,
        to,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PortRange')
      ..add(
        'from',
        from,
      )
      ..add(
        'to',
        to,
      );
    return helper.toString();
  }
}

class PortRangeEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PortRange> {
  const PortRangeEc2QuerySerializer() : super('PortRange');

  @override
  Iterable<Type> get types => const [
        PortRange,
        _$PortRange,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PortRange deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PortRangeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'from':
          result.from = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'to':
          result.to = (serializers.deserialize(
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
    PortRange object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PortRangeResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PortRange(:from, :to) = object;
    result$
      ..add(const _i2.XmlElementName('From'))
      ..add(serializers.serialize(
        from,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i2.XmlElementName('To'))
      ..add(serializers.serialize(
        to,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
