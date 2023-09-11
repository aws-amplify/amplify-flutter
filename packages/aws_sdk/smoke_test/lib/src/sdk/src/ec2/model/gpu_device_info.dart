// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.gpu_device_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/gpu_device_memory_info.dart';

part 'gpu_device_info.g.dart';

/// Describes the GPU accelerators for the instance type.
abstract class GpuDeviceInfo
    with _i1.AWSEquatable<GpuDeviceInfo>
    implements Built<GpuDeviceInfo, GpuDeviceInfoBuilder> {
  /// Describes the GPU accelerators for the instance type.
  factory GpuDeviceInfo({
    String? name,
    String? manufacturer,
    int? count,
    GpuDeviceMemoryInfo? memoryInfo,
  }) {
    return _$GpuDeviceInfo._(
      name: name,
      manufacturer: manufacturer,
      count: count,
      memoryInfo: memoryInfo,
    );
  }

  /// Describes the GPU accelerators for the instance type.
  factory GpuDeviceInfo.build([void Function(GpuDeviceInfoBuilder) updates]) =
      _$GpuDeviceInfo;

  const GpuDeviceInfo._();

  static const List<_i2.SmithySerializer<GpuDeviceInfo>> serializers = [
    GpuDeviceInfoEc2QuerySerializer()
  ];

  /// The name of the GPU accelerator.
  String? get name;

  /// The manufacturer of the GPU accelerator.
  String? get manufacturer;

  /// The number of GPUs for the instance type.
  int? get count;

  /// Describes the memory available to the GPU accelerator.
  GpuDeviceMemoryInfo? get memoryInfo;
  @override
  List<Object?> get props => [
        name,
        manufacturer,
        count,
        memoryInfo,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GpuDeviceInfo')
      ..add(
        'name',
        name,
      )
      ..add(
        'manufacturer',
        manufacturer,
      )
      ..add(
        'count',
        count,
      )
      ..add(
        'memoryInfo',
        memoryInfo,
      );
    return helper.toString();
  }
}

class GpuDeviceInfoEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<GpuDeviceInfo> {
  const GpuDeviceInfoEc2QuerySerializer() : super('GpuDeviceInfo');

  @override
  Iterable<Type> get types => const [
        GpuDeviceInfo,
        _$GpuDeviceInfo,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GpuDeviceInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GpuDeviceInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'manufacturer':
          result.manufacturer = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'count':
          result.count = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'memoryInfo':
          result.memoryInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(GpuDeviceMemoryInfo),
          ) as GpuDeviceMemoryInfo));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GpuDeviceInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GpuDeviceInfoResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GpuDeviceInfo(:name, :manufacturer, :count, :memoryInfo) = object;
    if (name != null) {
      result$
        ..add(const _i2.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (manufacturer != null) {
      result$
        ..add(const _i2.XmlElementName('Manufacturer'))
        ..add(serializers.serialize(
          manufacturer,
          specifiedType: const FullType(String),
        ));
    }
    if (count != null) {
      result$
        ..add(const _i2.XmlElementName('Count'))
        ..add(serializers.serialize(
          count,
          specifiedType: const FullType(int),
        ));
    }
    if (memoryInfo != null) {
      result$
        ..add(const _i2.XmlElementName('MemoryInfo'))
        ..add(serializers.serialize(
          memoryInfo,
          specifiedType: const FullType(GpuDeviceMemoryInfo),
        ));
    }
    return result$;
  }
}
