// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.memory_mib; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'memory_mib.g.dart';

/// The minimum and maximum amount of memory, in MiB.
abstract class MemoryMib
    with _i1.AWSEquatable<MemoryMib>
    implements Built<MemoryMib, MemoryMibBuilder> {
  /// The minimum and maximum amount of memory, in MiB.
  factory MemoryMib({
    int? min,
    int? max,
  }) {
    min ??= 0;
    max ??= 0;
    return _$MemoryMib._(
      min: min,
      max: max,
    );
  }

  /// The minimum and maximum amount of memory, in MiB.
  factory MemoryMib.build([void Function(MemoryMibBuilder) updates]) =
      _$MemoryMib;

  const MemoryMib._();

  static const List<_i2.SmithySerializer<MemoryMib>> serializers = [
    MemoryMibEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MemoryMibBuilder b) {
    b
      ..min = 0
      ..max = 0;
  }

  /// The minimum amount of memory, in MiB. If this parameter is not specified, there is no minimum limit.
  int get min;

  /// The maximum amount of memory, in MiB. If this parameter is not specified, there is no maximum limit.
  int get max;
  @override
  List<Object?> get props => [
        min,
        max,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MemoryMib')
      ..add(
        'min',
        min,
      )
      ..add(
        'max',
        max,
      );
    return helper.toString();
  }
}

class MemoryMibEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<MemoryMib> {
  const MemoryMibEc2QuerySerializer() : super('MemoryMib');

  @override
  Iterable<Type> get types => const [
        MemoryMib,
        _$MemoryMib,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  MemoryMib deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MemoryMibBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'min':
          result.min = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'max':
          result.max = (serializers.deserialize(
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
    MemoryMib object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'MemoryMibResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final MemoryMib(:min, :max) = object;
    result$
      ..add(const _i2.XmlElementName('Min'))
      ..add(serializers.serialize(
        min,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i2.XmlElementName('Max'))
      ..add(serializers.serialize(
        max,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
