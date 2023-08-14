// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.memory_mi_b_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'memory_mi_b_request.g.dart';

/// The minimum and maximum amount of memory, in MiB.
abstract class MemoryMiBRequest
    with _i1.AWSEquatable<MemoryMiBRequest>
    implements Built<MemoryMiBRequest, MemoryMiBRequestBuilder> {
  /// The minimum and maximum amount of memory, in MiB.
  factory MemoryMiBRequest({
    int? min,
    int? max,
  }) {
    min ??= 0;
    max ??= 0;
    return _$MemoryMiBRequest._(
      min: min,
      max: max,
    );
  }

  /// The minimum and maximum amount of memory, in MiB.
  factory MemoryMiBRequest.build(
      [void Function(MemoryMiBRequestBuilder) updates]) = _$MemoryMiBRequest;

  const MemoryMiBRequest._();

  static const List<_i2.SmithySerializer<MemoryMiBRequest>> serializers = [
    MemoryMiBRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MemoryMiBRequestBuilder b) {
    b
      ..min = 0
      ..max = 0;
  }

  /// The minimum amount of memory, in MiB. To specify no minimum limit, specify `0`.
  int get min;

  /// The maximum amount of memory, in MiB. To specify no maximum limit, omit this parameter.
  int get max;
  @override
  List<Object?> get props => [
        min,
        max,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MemoryMiBRequest')
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

class MemoryMiBRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<MemoryMiBRequest> {
  const MemoryMiBRequestEc2QuerySerializer() : super('MemoryMiBRequest');

  @override
  Iterable<Type> get types => const [
        MemoryMiBRequest,
        _$MemoryMiBRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  MemoryMiBRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MemoryMiBRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Min':
          result.min = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Max':
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
    MemoryMiBRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'MemoryMiBRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final MemoryMiBRequest(:min, :max) = object;
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
