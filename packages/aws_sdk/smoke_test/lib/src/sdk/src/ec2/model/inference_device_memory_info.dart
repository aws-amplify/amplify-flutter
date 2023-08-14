// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.inference_device_memory_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'inference_device_memory_info.g.dart';

/// Describes the memory available to the inference accelerator.
abstract class InferenceDeviceMemoryInfo
    with _i1.AWSEquatable<InferenceDeviceMemoryInfo>
    implements
        Built<InferenceDeviceMemoryInfo, InferenceDeviceMemoryInfoBuilder> {
  /// Describes the memory available to the inference accelerator.
  factory InferenceDeviceMemoryInfo({int? sizeInMib}) {
    return _$InferenceDeviceMemoryInfo._(sizeInMib: sizeInMib);
  }

  /// Describes the memory available to the inference accelerator.
  factory InferenceDeviceMemoryInfo.build(
          [void Function(InferenceDeviceMemoryInfoBuilder) updates]) =
      _$InferenceDeviceMemoryInfo;

  const InferenceDeviceMemoryInfo._();

  static const List<_i2.SmithySerializer<InferenceDeviceMemoryInfo>>
      serializers = [InferenceDeviceMemoryInfoEc2QuerySerializer()];

  /// The size of the memory available to the inference accelerator, in MiB.
  int? get sizeInMib;
  @override
  List<Object?> get props => [sizeInMib];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InferenceDeviceMemoryInfo')
      ..add(
        'sizeInMib',
        sizeInMib,
      );
    return helper.toString();
  }
}

class InferenceDeviceMemoryInfoEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InferenceDeviceMemoryInfo> {
  const InferenceDeviceMemoryInfoEc2QuerySerializer()
      : super('InferenceDeviceMemoryInfo');

  @override
  Iterable<Type> get types => const [
        InferenceDeviceMemoryInfo,
        _$InferenceDeviceMemoryInfo,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InferenceDeviceMemoryInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InferenceDeviceMemoryInfoBuilder();
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
    InferenceDeviceMemoryInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InferenceDeviceMemoryInfoResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InferenceDeviceMemoryInfo(:sizeInMib) = object;
    if (sizeInMib != null) {
      result$
        ..add(const _i2.XmlElementName('SizeInMiB'))
        ..add(serializers.serialize(
          sizeInMib,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result$;
  }
}
