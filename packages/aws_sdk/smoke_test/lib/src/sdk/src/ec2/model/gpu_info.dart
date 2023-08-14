// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.gpu_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/gpu_device_info.dart';

part 'gpu_info.g.dart';

/// Describes the GPU accelerators for the instance type.
abstract class GpuInfo
    with _i1.AWSEquatable<GpuInfo>
    implements Built<GpuInfo, GpuInfoBuilder> {
  /// Describes the GPU accelerators for the instance type.
  factory GpuInfo({
    List<GpuDeviceInfo>? gpus,
    int? totalGpuMemoryInMib,
  }) {
    return _$GpuInfo._(
      gpus: gpus == null ? null : _i2.BuiltList(gpus),
      totalGpuMemoryInMib: totalGpuMemoryInMib,
    );
  }

  /// Describes the GPU accelerators for the instance type.
  factory GpuInfo.build([void Function(GpuInfoBuilder) updates]) = _$GpuInfo;

  const GpuInfo._();

  static const List<_i3.SmithySerializer<GpuInfo>> serializers = [
    GpuInfoEc2QuerySerializer()
  ];

  /// Describes the GPU accelerators for the instance type.
  _i2.BuiltList<GpuDeviceInfo>? get gpus;

  /// The total size of the memory for the GPU accelerators for the instance type, in MiB.
  int? get totalGpuMemoryInMib;
  @override
  List<Object?> get props => [
        gpus,
        totalGpuMemoryInMib,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GpuInfo')
      ..add(
        'gpus',
        gpus,
      )
      ..add(
        'totalGpuMemoryInMib',
        totalGpuMemoryInMib,
      );
    return helper.toString();
  }
}

class GpuInfoEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<GpuInfo> {
  const GpuInfoEc2QuerySerializer() : super('GpuInfo');

  @override
  Iterable<Type> get types => const [
        GpuInfo,
        _$GpuInfo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GpuInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GpuInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'gpus':
          result.gpus.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(GpuDeviceInfo)],
            ),
          ) as _i2.BuiltList<GpuDeviceInfo>));
        case 'totalGpuMemoryInMiB':
          result.totalGpuMemoryInMib = (serializers.deserialize(
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
    GpuInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GpuInfoResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GpuInfo(:gpus, :totalGpuMemoryInMib) = object;
    if (gpus != null) {
      result$
        ..add(const _i3.XmlElementName('Gpus'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          gpus,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(GpuDeviceInfo)],
          ),
        ));
    }
    if (totalGpuMemoryInMib != null) {
      result$
        ..add(const _i3.XmlElementName('TotalGpuMemoryInMiB'))
        ..add(serializers.serialize(
          totalGpuMemoryInMib,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result$;
  }
}
