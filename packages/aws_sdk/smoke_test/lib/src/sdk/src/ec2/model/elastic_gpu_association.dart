// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.elastic_gpu_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'elastic_gpu_association.g.dart';

/// Describes the association between an instance and an Elastic Graphics accelerator.
abstract class ElasticGpuAssociation
    with _i1.AWSEquatable<ElasticGpuAssociation>
    implements Built<ElasticGpuAssociation, ElasticGpuAssociationBuilder> {
  /// Describes the association between an instance and an Elastic Graphics accelerator.
  factory ElasticGpuAssociation({
    String? elasticGpuId,
    String? elasticGpuAssociationId,
    String? elasticGpuAssociationState,
    String? elasticGpuAssociationTime,
  }) {
    return _$ElasticGpuAssociation._(
      elasticGpuId: elasticGpuId,
      elasticGpuAssociationId: elasticGpuAssociationId,
      elasticGpuAssociationState: elasticGpuAssociationState,
      elasticGpuAssociationTime: elasticGpuAssociationTime,
    );
  }

  /// Describes the association between an instance and an Elastic Graphics accelerator.
  factory ElasticGpuAssociation.build(
          [void Function(ElasticGpuAssociationBuilder) updates]) =
      _$ElasticGpuAssociation;

  const ElasticGpuAssociation._();

  static const List<_i2.SmithySerializer<ElasticGpuAssociation>> serializers = [
    ElasticGpuAssociationEc2QuerySerializer()
  ];

  /// The ID of the Elastic Graphics accelerator.
  String? get elasticGpuId;

  /// The ID of the association.
  String? get elasticGpuAssociationId;

  /// The state of the association between the instance and the Elastic Graphics accelerator.
  String? get elasticGpuAssociationState;

  /// The time the Elastic Graphics accelerator was associated with the instance.
  String? get elasticGpuAssociationTime;
  @override
  List<Object?> get props => [
        elasticGpuId,
        elasticGpuAssociationId,
        elasticGpuAssociationState,
        elasticGpuAssociationTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ElasticGpuAssociation')
      ..add(
        'elasticGpuId',
        elasticGpuId,
      )
      ..add(
        'elasticGpuAssociationId',
        elasticGpuAssociationId,
      )
      ..add(
        'elasticGpuAssociationState',
        elasticGpuAssociationState,
      )
      ..add(
        'elasticGpuAssociationTime',
        elasticGpuAssociationTime,
      );
    return helper.toString();
  }
}

class ElasticGpuAssociationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ElasticGpuAssociation> {
  const ElasticGpuAssociationEc2QuerySerializer()
      : super('ElasticGpuAssociation');

  @override
  Iterable<Type> get types => const [
        ElasticGpuAssociation,
        _$ElasticGpuAssociation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ElasticGpuAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ElasticGpuAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'elasticGpuId':
          result.elasticGpuId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'elasticGpuAssociationId':
          result.elasticGpuAssociationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'elasticGpuAssociationState':
          result.elasticGpuAssociationState = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'elasticGpuAssociationTime':
          result.elasticGpuAssociationTime = (serializers.deserialize(
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
    ElasticGpuAssociation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ElasticGpuAssociationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ElasticGpuAssociation(
      :elasticGpuId,
      :elasticGpuAssociationId,
      :elasticGpuAssociationState,
      :elasticGpuAssociationTime
    ) = object;
    if (elasticGpuId != null) {
      result$
        ..add(const _i2.XmlElementName('ElasticGpuId'))
        ..add(serializers.serialize(
          elasticGpuId,
          specifiedType: const FullType(String),
        ));
    }
    if (elasticGpuAssociationId != null) {
      result$
        ..add(const _i2.XmlElementName('ElasticGpuAssociationId'))
        ..add(serializers.serialize(
          elasticGpuAssociationId,
          specifiedType: const FullType(String),
        ));
    }
    if (elasticGpuAssociationState != null) {
      result$
        ..add(const _i2.XmlElementName('ElasticGpuAssociationState'))
        ..add(serializers.serialize(
          elasticGpuAssociationState,
          specifiedType: const FullType(String),
        ));
    }
    if (elasticGpuAssociationTime != null) {
      result$
        ..add(const _i2.XmlElementName('ElasticGpuAssociationTime'))
        ..add(serializers.serialize(
          elasticGpuAssociationTime,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
