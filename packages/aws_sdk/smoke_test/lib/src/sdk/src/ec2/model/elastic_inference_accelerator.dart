// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.elastic_inference_accelerator; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'elastic_inference_accelerator.g.dart';

/// Describes an elastic inference accelerator.
abstract class ElasticInferenceAccelerator
    with _i1.AWSEquatable<ElasticInferenceAccelerator>
    implements
        Built<ElasticInferenceAccelerator, ElasticInferenceAcceleratorBuilder> {
  /// Describes an elastic inference accelerator.
  factory ElasticInferenceAccelerator({
    String? type,
    int? count,
  }) {
    count ??= 0;
    return _$ElasticInferenceAccelerator._(
      type: type,
      count: count,
    );
  }

  /// Describes an elastic inference accelerator.
  factory ElasticInferenceAccelerator.build(
          [void Function(ElasticInferenceAcceleratorBuilder) updates]) =
      _$ElasticInferenceAccelerator;

  const ElasticInferenceAccelerator._();

  static const List<_i2.SmithySerializer<ElasticInferenceAccelerator>>
      serializers = [ElasticInferenceAcceleratorEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ElasticInferenceAcceleratorBuilder b) {
    b.count = 0;
  }

  /// The type of elastic inference accelerator. The possible values are `eia1.medium`, `eia1.large`, `eia1.xlarge`, `eia2.medium`, `eia2.large`, and `eia2.xlarge`.
  String? get type;

  /// The number of elastic inference accelerators to attach to the instance.
  ///
  /// Default: 1
  int get count;
  @override
  List<Object?> get props => [
        type,
        count,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ElasticInferenceAccelerator')
      ..add(
        'type',
        type,
      )
      ..add(
        'count',
        count,
      );
    return helper.toString();
  }
}

class ElasticInferenceAcceleratorEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ElasticInferenceAccelerator> {
  const ElasticInferenceAcceleratorEc2QuerySerializer()
      : super('ElasticInferenceAccelerator');

  @override
  Iterable<Type> get types => const [
        ElasticInferenceAccelerator,
        _$ElasticInferenceAccelerator,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ElasticInferenceAccelerator deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ElasticInferenceAcceleratorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Count':
          result.count = (serializers.deserialize(
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
    ElasticInferenceAccelerator object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ElasticInferenceAcceleratorResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ElasticInferenceAccelerator(:type, :count) = object;
    if (type != null) {
      result$
        ..add(const _i2.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('Count'))
      ..add(serializers.serialize(
        count,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
