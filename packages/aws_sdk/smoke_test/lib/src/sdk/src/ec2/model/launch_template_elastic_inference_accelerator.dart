// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_elastic_inference_accelerator; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'launch_template_elastic_inference_accelerator.g.dart';

/// Describes an elastic inference accelerator.
abstract class LaunchTemplateElasticInferenceAccelerator
    with
        _i1.AWSEquatable<LaunchTemplateElasticInferenceAccelerator>
    implements
        Built<LaunchTemplateElasticInferenceAccelerator,
            LaunchTemplateElasticInferenceAcceleratorBuilder> {
  /// Describes an elastic inference accelerator.
  factory LaunchTemplateElasticInferenceAccelerator({
    String? type,
    int? count,
  }) {
    count ??= 0;
    return _$LaunchTemplateElasticInferenceAccelerator._(
      type: type,
      count: count,
    );
  }

  /// Describes an elastic inference accelerator.
  factory LaunchTemplateElasticInferenceAccelerator.build(
      [void Function(LaunchTemplateElasticInferenceAcceleratorBuilder)
          updates]) = _$LaunchTemplateElasticInferenceAccelerator;

  const LaunchTemplateElasticInferenceAccelerator._();

  static const List<
          _i2.SmithySerializer<LaunchTemplateElasticInferenceAccelerator>>
      serializers = [
    LaunchTemplateElasticInferenceAcceleratorEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateElasticInferenceAcceleratorBuilder b) {
    b.count = 0;
  }

  /// The type of elastic inference accelerator. The possible values are eia1.medium, eia1.large, and eia1.xlarge.
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
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateElasticInferenceAccelerator')
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

class LaunchTemplateElasticInferenceAcceleratorEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<LaunchTemplateElasticInferenceAccelerator> {
  const LaunchTemplateElasticInferenceAcceleratorEc2QuerySerializer()
      : super('LaunchTemplateElasticInferenceAccelerator');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateElasticInferenceAccelerator,
        _$LaunchTemplateElasticInferenceAccelerator,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateElasticInferenceAccelerator deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateElasticInferenceAcceleratorBuilder();
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
    LaunchTemplateElasticInferenceAccelerator object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateElasticInferenceAcceleratorResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateElasticInferenceAccelerator(:type, :count) = object;
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
