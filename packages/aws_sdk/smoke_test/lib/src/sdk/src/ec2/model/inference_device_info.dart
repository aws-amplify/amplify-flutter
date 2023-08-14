// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.inference_device_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/inference_device_memory_info.dart';

part 'inference_device_info.g.dart';

/// Describes the Inference accelerators for the instance type.
abstract class InferenceDeviceInfo
    with _i1.AWSEquatable<InferenceDeviceInfo>
    implements Built<InferenceDeviceInfo, InferenceDeviceInfoBuilder> {
  /// Describes the Inference accelerators for the instance type.
  factory InferenceDeviceInfo({
    int? count,
    String? name,
    String? manufacturer,
    InferenceDeviceMemoryInfo? memoryInfo,
  }) {
    return _$InferenceDeviceInfo._(
      count: count,
      name: name,
      manufacturer: manufacturer,
      memoryInfo: memoryInfo,
    );
  }

  /// Describes the Inference accelerators for the instance type.
  factory InferenceDeviceInfo.build(
          [void Function(InferenceDeviceInfoBuilder) updates]) =
      _$InferenceDeviceInfo;

  const InferenceDeviceInfo._();

  static const List<_i2.SmithySerializer<InferenceDeviceInfo>> serializers = [
    InferenceDeviceInfoEc2QuerySerializer()
  ];

  /// The number of Inference accelerators for the instance type.
  int? get count;

  /// The name of the Inference accelerator.
  String? get name;

  /// The manufacturer of the Inference accelerator.
  String? get manufacturer;

  /// Describes the memory available to the inference accelerator.
  InferenceDeviceMemoryInfo? get memoryInfo;
  @override
  List<Object?> get props => [
        count,
        name,
        manufacturer,
        memoryInfo,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InferenceDeviceInfo')
      ..add(
        'count',
        count,
      )
      ..add(
        'name',
        name,
      )
      ..add(
        'manufacturer',
        manufacturer,
      )
      ..add(
        'memoryInfo',
        memoryInfo,
      );
    return helper.toString();
  }
}

class InferenceDeviceInfoEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InferenceDeviceInfo> {
  const InferenceDeviceInfoEc2QuerySerializer() : super('InferenceDeviceInfo');

  @override
  Iterable<Type> get types => const [
        InferenceDeviceInfo,
        _$InferenceDeviceInfo,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InferenceDeviceInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InferenceDeviceInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'count':
          result.count = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
        case 'memoryInfo':
          result.memoryInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InferenceDeviceMemoryInfo),
          ) as InferenceDeviceMemoryInfo));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InferenceDeviceInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InferenceDeviceInfoResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InferenceDeviceInfo(:count, :name, :manufacturer, :memoryInfo) =
        object;
    if (count != null) {
      result$
        ..add(const _i2.XmlElementName('Count'))
        ..add(serializers.serialize(
          count,
          specifiedType: const FullType.nullable(int),
        ));
    }
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
    if (memoryInfo != null) {
      result$
        ..add(const _i2.XmlElementName('MemoryInfo'))
        ..add(serializers.serialize(
          memoryInfo,
          specifiedType: const FullType(InferenceDeviceMemoryInfo),
        ));
    }
    return result$;
  }
}
