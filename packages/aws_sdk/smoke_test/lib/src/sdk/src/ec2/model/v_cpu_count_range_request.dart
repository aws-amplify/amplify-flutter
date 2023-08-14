// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.v_cpu_count_range_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'v_cpu_count_range_request.g.dart';

/// The minimum and maximum number of vCPUs.
abstract class VCpuCountRangeRequest
    with _i1.AWSEquatable<VCpuCountRangeRequest>
    implements Built<VCpuCountRangeRequest, VCpuCountRangeRequestBuilder> {
  /// The minimum and maximum number of vCPUs.
  factory VCpuCountRangeRequest({
    int? min,
    int? max,
  }) {
    min ??= 0;
    max ??= 0;
    return _$VCpuCountRangeRequest._(
      min: min,
      max: max,
    );
  }

  /// The minimum and maximum number of vCPUs.
  factory VCpuCountRangeRequest.build(
          [void Function(VCpuCountRangeRequestBuilder) updates]) =
      _$VCpuCountRangeRequest;

  const VCpuCountRangeRequest._();

  static const List<_i2.SmithySerializer<VCpuCountRangeRequest>> serializers = [
    VCpuCountRangeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VCpuCountRangeRequestBuilder b) {
    b
      ..min = 0
      ..max = 0;
  }

  /// The minimum number of vCPUs. To specify no minimum limit, specify `0`.
  int get min;

  /// The maximum number of vCPUs. To specify no maximum limit, omit this parameter.
  int get max;
  @override
  List<Object?> get props => [
        min,
        max,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VCpuCountRangeRequest')
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

class VCpuCountRangeRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VCpuCountRangeRequest> {
  const VCpuCountRangeRequestEc2QuerySerializer()
      : super('VCpuCountRangeRequest');

  @override
  Iterable<Type> get types => const [
        VCpuCountRangeRequest,
        _$VCpuCountRangeRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VCpuCountRangeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VCpuCountRangeRequestBuilder();
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
    VCpuCountRangeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VCpuCountRangeRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VCpuCountRangeRequest(:min, :max) = object;
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
