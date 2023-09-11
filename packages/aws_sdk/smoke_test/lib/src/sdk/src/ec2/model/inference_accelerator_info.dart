// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.inference_accelerator_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/inference_device_info.dart';

part 'inference_accelerator_info.g.dart';

/// Describes the Inference accelerators for the instance type.
abstract class InferenceAcceleratorInfo
    with _i1.AWSEquatable<InferenceAcceleratorInfo>
    implements
        Built<InferenceAcceleratorInfo, InferenceAcceleratorInfoBuilder> {
  /// Describes the Inference accelerators for the instance type.
  factory InferenceAcceleratorInfo({
    List<InferenceDeviceInfo>? accelerators,
    int? totalInferenceMemoryInMib,
  }) {
    return _$InferenceAcceleratorInfo._(
      accelerators: accelerators == null ? null : _i2.BuiltList(accelerators),
      totalInferenceMemoryInMib: totalInferenceMemoryInMib,
    );
  }

  /// Describes the Inference accelerators for the instance type.
  factory InferenceAcceleratorInfo.build(
          [void Function(InferenceAcceleratorInfoBuilder) updates]) =
      _$InferenceAcceleratorInfo;

  const InferenceAcceleratorInfo._();

  static const List<_i3.SmithySerializer<InferenceAcceleratorInfo>>
      serializers = [InferenceAcceleratorInfoEc2QuerySerializer()];

  /// Describes the Inference accelerators for the instance type.
  _i2.BuiltList<InferenceDeviceInfo>? get accelerators;

  /// The total size of the memory for the inference accelerators for the instance type, in MiB.
  int? get totalInferenceMemoryInMib;
  @override
  List<Object?> get props => [
        accelerators,
        totalInferenceMemoryInMib,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InferenceAcceleratorInfo')
      ..add(
        'accelerators',
        accelerators,
      )
      ..add(
        'totalInferenceMemoryInMib',
        totalInferenceMemoryInMib,
      );
    return helper.toString();
  }
}

class InferenceAcceleratorInfoEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InferenceAcceleratorInfo> {
  const InferenceAcceleratorInfoEc2QuerySerializer()
      : super('InferenceAcceleratorInfo');

  @override
  Iterable<Type> get types => const [
        InferenceAcceleratorInfo,
        _$InferenceAcceleratorInfo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InferenceAcceleratorInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InferenceAcceleratorInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'accelerators':
          result.accelerators.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InferenceDeviceInfo)],
            ),
          ) as _i2.BuiltList<InferenceDeviceInfo>));
        case 'totalInferenceMemoryInMiB':
          result.totalInferenceMemoryInMib = (serializers.deserialize(
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
    InferenceAcceleratorInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'InferenceAcceleratorInfoResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InferenceAcceleratorInfo(:accelerators, :totalInferenceMemoryInMib) =
        object;
    if (accelerators != null) {
      result$
        ..add(const _i3.XmlElementName('Accelerators'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          accelerators,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(InferenceDeviceInfo)],
          ),
        ));
    }
    if (totalInferenceMemoryInMib != null) {
      result$
        ..add(const _i3.XmlElementName('TotalInferenceMemoryInMiB'))
        ..add(serializers.serialize(
          totalInferenceMemoryInMib,
          specifiedType: const FullType(int),
        ));
    }
    return result$;
  }
}
