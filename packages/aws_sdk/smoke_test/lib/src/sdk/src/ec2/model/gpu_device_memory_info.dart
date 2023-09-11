// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.gpu_device_memory_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'gpu_device_memory_info.g.dart';

/// Describes the memory available to the GPU accelerator.
abstract class GpuDeviceMemoryInfo
    with _i1.AWSEquatable<GpuDeviceMemoryInfo>
    implements Built<GpuDeviceMemoryInfo, GpuDeviceMemoryInfoBuilder> {
  /// Describes the memory available to the GPU accelerator.
  factory GpuDeviceMemoryInfo({int? sizeInMib}) {
    return _$GpuDeviceMemoryInfo._(sizeInMib: sizeInMib);
  }

  /// Describes the memory available to the GPU accelerator.
  factory GpuDeviceMemoryInfo.build(
          [void Function(GpuDeviceMemoryInfoBuilder) updates]) =
      _$GpuDeviceMemoryInfo;

  const GpuDeviceMemoryInfo._();

  static const List<_i2.SmithySerializer<GpuDeviceMemoryInfo>> serializers = [
    GpuDeviceMemoryInfoEc2QuerySerializer()
  ];

  /// The size of the memory available to the GPU accelerator, in MiB.
  int? get sizeInMib;
  @override
  List<Object?> get props => [sizeInMib];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GpuDeviceMemoryInfo')
      ..add(
        'sizeInMib',
        sizeInMib,
      );
    return helper.toString();
  }
}

class GpuDeviceMemoryInfoEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<GpuDeviceMemoryInfo> {
  const GpuDeviceMemoryInfoEc2QuerySerializer() : super('GpuDeviceMemoryInfo');

  @override
  Iterable<Type> get types => const [
        GpuDeviceMemoryInfo,
        _$GpuDeviceMemoryInfo,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GpuDeviceMemoryInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GpuDeviceMemoryInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'sizeInMiB':
          result.sizeInMib = (serializers.deserialize(
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
    GpuDeviceMemoryInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GpuDeviceMemoryInfoResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GpuDeviceMemoryInfo(:sizeInMib) = object;
    if (sizeInMib != null) {
      result$
        ..add(const _i2.XmlElementName('SizeInMiB'))
        ..add(serializers.serialize(
          sizeInMib,
          specifiedType: const FullType(int),
        ));
    }
    return result$;
  }
}
