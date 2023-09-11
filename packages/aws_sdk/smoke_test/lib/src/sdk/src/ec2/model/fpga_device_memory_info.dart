// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fpga_device_memory_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'fpga_device_memory_info.g.dart';

/// Describes the memory for the FPGA accelerator for the instance type.
abstract class FpgaDeviceMemoryInfo
    with _i1.AWSEquatable<FpgaDeviceMemoryInfo>
    implements Built<FpgaDeviceMemoryInfo, FpgaDeviceMemoryInfoBuilder> {
  /// Describes the memory for the FPGA accelerator for the instance type.
  factory FpgaDeviceMemoryInfo({int? sizeInMib}) {
    return _$FpgaDeviceMemoryInfo._(sizeInMib: sizeInMib);
  }

  /// Describes the memory for the FPGA accelerator for the instance type.
  factory FpgaDeviceMemoryInfo.build(
          [void Function(FpgaDeviceMemoryInfoBuilder) updates]) =
      _$FpgaDeviceMemoryInfo;

  const FpgaDeviceMemoryInfo._();

  static const List<_i2.SmithySerializer<FpgaDeviceMemoryInfo>> serializers = [
    FpgaDeviceMemoryInfoEc2QuerySerializer()
  ];

  /// The size of the memory available to the FPGA accelerator, in MiB.
  int? get sizeInMib;
  @override
  List<Object?> get props => [sizeInMib];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FpgaDeviceMemoryInfo')
      ..add(
        'sizeInMib',
        sizeInMib,
      );
    return helper.toString();
  }
}

class FpgaDeviceMemoryInfoEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<FpgaDeviceMemoryInfo> {
  const FpgaDeviceMemoryInfoEc2QuerySerializer()
      : super('FpgaDeviceMemoryInfo');

  @override
  Iterable<Type> get types => const [
        FpgaDeviceMemoryInfo,
        _$FpgaDeviceMemoryInfo,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FpgaDeviceMemoryInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FpgaDeviceMemoryInfoBuilder();
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
    FpgaDeviceMemoryInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'FpgaDeviceMemoryInfoResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FpgaDeviceMemoryInfo(:sizeInMib) = object;
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
