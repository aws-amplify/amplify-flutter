// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.elastic_inference_accelerator_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'elastic_inference_accelerator_association.g.dart';

/// Describes the association between an instance and an elastic inference accelerator.
abstract class ElasticInferenceAcceleratorAssociation
    with
        _i1.AWSEquatable<ElasticInferenceAcceleratorAssociation>
    implements
        Built<ElasticInferenceAcceleratorAssociation,
            ElasticInferenceAcceleratorAssociationBuilder> {
  /// Describes the association between an instance and an elastic inference accelerator.
  factory ElasticInferenceAcceleratorAssociation({
    String? elasticInferenceAcceleratorArn,
    String? elasticInferenceAcceleratorAssociationId,
    String? elasticInferenceAcceleratorAssociationState,
    DateTime? elasticInferenceAcceleratorAssociationTime,
  }) {
    return _$ElasticInferenceAcceleratorAssociation._(
      elasticInferenceAcceleratorArn: elasticInferenceAcceleratorArn,
      elasticInferenceAcceleratorAssociationId:
          elasticInferenceAcceleratorAssociationId,
      elasticInferenceAcceleratorAssociationState:
          elasticInferenceAcceleratorAssociationState,
      elasticInferenceAcceleratorAssociationTime:
          elasticInferenceAcceleratorAssociationTime,
    );
  }

  /// Describes the association between an instance and an elastic inference accelerator.
  factory ElasticInferenceAcceleratorAssociation.build(
      [void Function(ElasticInferenceAcceleratorAssociationBuilder)
          updates]) = _$ElasticInferenceAcceleratorAssociation;

  const ElasticInferenceAcceleratorAssociation._();

  static const List<
          _i2.SmithySerializer<ElasticInferenceAcceleratorAssociation>>
      serializers = [
    ElasticInferenceAcceleratorAssociationEc2QuerySerializer()
  ];

  /// The Amazon Resource Name (ARN) of the elastic inference accelerator.
  String? get elasticInferenceAcceleratorArn;

  /// The ID of the association.
  String? get elasticInferenceAcceleratorAssociationId;

  /// The state of the elastic inference accelerator.
  String? get elasticInferenceAcceleratorAssociationState;

  /// The time at which the elastic inference accelerator is associated with an instance.
  DateTime? get elasticInferenceAcceleratorAssociationTime;
  @override
  List<Object?> get props => [
        elasticInferenceAcceleratorArn,
        elasticInferenceAcceleratorAssociationId,
        elasticInferenceAcceleratorAssociationState,
        elasticInferenceAcceleratorAssociationTime,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ElasticInferenceAcceleratorAssociation')
          ..add(
            'elasticInferenceAcceleratorArn',
            elasticInferenceAcceleratorArn,
          )
          ..add(
            'elasticInferenceAcceleratorAssociationId',
            elasticInferenceAcceleratorAssociationId,
          )
          ..add(
            'elasticInferenceAcceleratorAssociationState',
            elasticInferenceAcceleratorAssociationState,
          )
          ..add(
            'elasticInferenceAcceleratorAssociationTime',
            elasticInferenceAcceleratorAssociationTime,
          );
    return helper.toString();
  }
}

class ElasticInferenceAcceleratorAssociationEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<ElasticInferenceAcceleratorAssociation> {
  const ElasticInferenceAcceleratorAssociationEc2QuerySerializer()
      : super('ElasticInferenceAcceleratorAssociation');

  @override
  Iterable<Type> get types => const [
        ElasticInferenceAcceleratorAssociation,
        _$ElasticInferenceAcceleratorAssociation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ElasticInferenceAcceleratorAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ElasticInferenceAcceleratorAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'elasticInferenceAcceleratorArn':
          result.elasticInferenceAcceleratorArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'elasticInferenceAcceleratorAssociationId':
          result.elasticInferenceAcceleratorAssociationId =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'elasticInferenceAcceleratorAssociationState':
          result.elasticInferenceAcceleratorAssociationState =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'elasticInferenceAcceleratorAssociationTime':
          result.elasticInferenceAcceleratorAssociationTime =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ElasticInferenceAcceleratorAssociation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ElasticInferenceAcceleratorAssociationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ElasticInferenceAcceleratorAssociation(
      :elasticInferenceAcceleratorArn,
      :elasticInferenceAcceleratorAssociationId,
      :elasticInferenceAcceleratorAssociationState,
      :elasticInferenceAcceleratorAssociationTime
    ) = object;
    if (elasticInferenceAcceleratorArn != null) {
      result$
        ..add(const _i2.XmlElementName('ElasticInferenceAcceleratorArn'))
        ..add(serializers.serialize(
          elasticInferenceAcceleratorArn,
          specifiedType: const FullType(String),
        ));
    }
    if (elasticInferenceAcceleratorAssociationId != null) {
      result$
        ..add(const _i2.XmlElementName(
            'ElasticInferenceAcceleratorAssociationId'))
        ..add(serializers.serialize(
          elasticInferenceAcceleratorAssociationId,
          specifiedType: const FullType(String),
        ));
    }
    if (elasticInferenceAcceleratorAssociationState != null) {
      result$
        ..add(const _i2.XmlElementName(
            'ElasticInferenceAcceleratorAssociationState'))
        ..add(serializers.serialize(
          elasticInferenceAcceleratorAssociationState,
          specifiedType: const FullType(String),
        ));
    }
    if (elasticInferenceAcceleratorAssociationTime != null) {
      result$
        ..add(const _i2.XmlElementName(
            'ElasticInferenceAcceleratorAssociationTime'))
        ..add(serializers.serialize(
          elasticInferenceAcceleratorAssociationTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
