// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.v_cpu_count_range; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'v_cpu_count_range.g.dart';

/// The minimum and maximum number of vCPUs.
abstract class VCpuCountRange
    with _i1.AWSEquatable<VCpuCountRange>
    implements Built<VCpuCountRange, VCpuCountRangeBuilder> {
  /// The minimum and maximum number of vCPUs.
  factory VCpuCountRange({
    int? min,
    int? max,
  }) {
    min ??= 0;
    max ??= 0;
    return _$VCpuCountRange._(
      min: min,
      max: max,
    );
  }

  /// The minimum and maximum number of vCPUs.
  factory VCpuCountRange.build([void Function(VCpuCountRangeBuilder) updates]) =
      _$VCpuCountRange;

  const VCpuCountRange._();

  static const List<_i2.SmithySerializer<VCpuCountRange>> serializers = [
    VCpuCountRangeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VCpuCountRangeBuilder b) {
    b
      ..min = 0
      ..max = 0;
  }

  /// The minimum number of vCPUs. If the value is `0`, there is no minimum limit.
  int get min;

  /// The maximum number of vCPUs. If this parameter is not specified, there is no maximum limit.
  int get max;
  @override
  List<Object?> get props => [
        min,
        max,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VCpuCountRange')
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

class VCpuCountRangeEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VCpuCountRange> {
  const VCpuCountRangeEc2QuerySerializer() : super('VCpuCountRange');

  @override
  Iterable<Type> get types => const [
        VCpuCountRange,
        _$VCpuCountRange,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VCpuCountRange deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VCpuCountRangeBuilder();
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
    VCpuCountRange object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VCpuCountRangeResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VCpuCountRange(:min, :max) = object;
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
