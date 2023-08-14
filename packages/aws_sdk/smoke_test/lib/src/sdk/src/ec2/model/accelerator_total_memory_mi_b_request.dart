// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.accelerator_total_memory_mi_b_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'accelerator_total_memory_mi_b_request.g.dart';

/// The minimum and maximum amount of total accelerator memory, in MiB.
abstract class AcceleratorTotalMemoryMiBRequest
    with
        _i1.AWSEquatable<AcceleratorTotalMemoryMiBRequest>
    implements
        Built<AcceleratorTotalMemoryMiBRequest,
            AcceleratorTotalMemoryMiBRequestBuilder> {
  /// The minimum and maximum amount of total accelerator memory, in MiB.
  factory AcceleratorTotalMemoryMiBRequest({
    int? min,
    int? max,
  }) {
    min ??= 0;
    max ??= 0;
    return _$AcceleratorTotalMemoryMiBRequest._(
      min: min,
      max: max,
    );
  }

  /// The minimum and maximum amount of total accelerator memory, in MiB.
  factory AcceleratorTotalMemoryMiBRequest.build(
          [void Function(AcceleratorTotalMemoryMiBRequestBuilder) updates]) =
      _$AcceleratorTotalMemoryMiBRequest;

  const AcceleratorTotalMemoryMiBRequest._();

  static const List<_i2.SmithySerializer<AcceleratorTotalMemoryMiBRequest>>
      serializers = [AcceleratorTotalMemoryMiBRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AcceleratorTotalMemoryMiBRequestBuilder b) {
    b
      ..min = 0
      ..max = 0;
  }

  /// The minimum amount of accelerator memory, in MiB. To specify no minimum limit, omit this parameter.
  int get min;

  /// The maximum amount of accelerator memory, in MiB. To specify no maximum limit, omit this parameter.
  int get max;
  @override
  List<Object?> get props => [
        min,
        max,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AcceleratorTotalMemoryMiBRequest')
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

class AcceleratorTotalMemoryMiBRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AcceleratorTotalMemoryMiBRequest> {
  const AcceleratorTotalMemoryMiBRequestEc2QuerySerializer()
      : super('AcceleratorTotalMemoryMiBRequest');

  @override
  Iterable<Type> get types => const [
        AcceleratorTotalMemoryMiBRequest,
        _$AcceleratorTotalMemoryMiBRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AcceleratorTotalMemoryMiBRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AcceleratorTotalMemoryMiBRequestBuilder();
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
    AcceleratorTotalMemoryMiBRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AcceleratorTotalMemoryMiBRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AcceleratorTotalMemoryMiBRequest(:min, :max) = object;
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
