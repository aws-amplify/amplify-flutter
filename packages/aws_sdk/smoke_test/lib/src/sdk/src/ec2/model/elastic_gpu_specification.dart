// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.elastic_gpu_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'elastic_gpu_specification.g.dart';

/// A specification for an Elastic Graphics accelerator.
abstract class ElasticGpuSpecification
    with _i1.AWSEquatable<ElasticGpuSpecification>
    implements Built<ElasticGpuSpecification, ElasticGpuSpecificationBuilder> {
  /// A specification for an Elastic Graphics accelerator.
  factory ElasticGpuSpecification({String? type}) {
    return _$ElasticGpuSpecification._(type: type);
  }

  /// A specification for an Elastic Graphics accelerator.
  factory ElasticGpuSpecification.build(
          [void Function(ElasticGpuSpecificationBuilder) updates]) =
      _$ElasticGpuSpecification;

  const ElasticGpuSpecification._();

  static const List<_i2.SmithySerializer<ElasticGpuSpecification>> serializers =
      [ElasticGpuSpecificationEc2QuerySerializer()];

  /// The type of Elastic Graphics accelerator. For more information about the values to specify for `Type`, see [Elastic Graphics Basics](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html#elastic-graphics-basics), specifically the Elastic Graphics accelerator column, in the _Amazon Elastic Compute Cloud User Guide for Windows Instances_.
  String? get type;
  @override
  List<Object?> get props => [type];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ElasticGpuSpecification')
      ..add(
        'type',
        type,
      );
    return helper.toString();
  }
}

class ElasticGpuSpecificationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ElasticGpuSpecification> {
  const ElasticGpuSpecificationEc2QuerySerializer()
      : super('ElasticGpuSpecification');

  @override
  Iterable<Type> get types => const [
        ElasticGpuSpecification,
        _$ElasticGpuSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ElasticGpuSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ElasticGpuSpecificationBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ElasticGpuSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ElasticGpuSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ElasticGpuSpecification(:type) = object;
    if (type != null) {
      result$
        ..add(const _i2.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
