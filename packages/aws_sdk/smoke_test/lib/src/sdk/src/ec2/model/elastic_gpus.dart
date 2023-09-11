// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.elastic_gpus; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_health.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'elastic_gpus.g.dart';

/// Describes an Elastic Graphics accelerator.
abstract class ElasticGpus
    with _i1.AWSEquatable<ElasticGpus>
    implements Built<ElasticGpus, ElasticGpusBuilder> {
  /// Describes an Elastic Graphics accelerator.
  factory ElasticGpus({
    String? elasticGpuId,
    String? availabilityZone,
    String? elasticGpuType,
    ElasticGpuHealth? elasticGpuHealth,
    ElasticGpuState? elasticGpuState,
    String? instanceId,
    List<Tag>? tags,
  }) {
    return _$ElasticGpus._(
      elasticGpuId: elasticGpuId,
      availabilityZone: availabilityZone,
      elasticGpuType: elasticGpuType,
      elasticGpuHealth: elasticGpuHealth,
      elasticGpuState: elasticGpuState,
      instanceId: instanceId,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes an Elastic Graphics accelerator.
  factory ElasticGpus.build([void Function(ElasticGpusBuilder) updates]) =
      _$ElasticGpus;

  const ElasticGpus._();

  static const List<_i3.SmithySerializer<ElasticGpus>> serializers = [
    ElasticGpusEc2QuerySerializer()
  ];

  /// The ID of the Elastic Graphics accelerator.
  String? get elasticGpuId;

  /// The Availability Zone in the which the Elastic Graphics accelerator resides.
  String? get availabilityZone;

  /// The type of Elastic Graphics accelerator.
  String? get elasticGpuType;

  /// The status of the Elastic Graphics accelerator.
  ElasticGpuHealth? get elasticGpuHealth;

  /// The state of the Elastic Graphics accelerator.
  ElasticGpuState? get elasticGpuState;

  /// The ID of the instance to which the Elastic Graphics accelerator is attached.
  String? get instanceId;

  /// The tags assigned to the Elastic Graphics accelerator.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        elasticGpuId,
        availabilityZone,
        elasticGpuType,
        elasticGpuHealth,
        elasticGpuState,
        instanceId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ElasticGpus')
      ..add(
        'elasticGpuId',
        elasticGpuId,
      )
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'elasticGpuType',
        elasticGpuType,
      )
      ..add(
        'elasticGpuHealth',
        elasticGpuHealth,
      )
      ..add(
        'elasticGpuState',
        elasticGpuState,
      )
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class ElasticGpusEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ElasticGpus> {
  const ElasticGpusEc2QuerySerializer() : super('ElasticGpus');

  @override
  Iterable<Type> get types => const [
        ElasticGpus,
        _$ElasticGpus,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ElasticGpus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ElasticGpusBuilder();
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
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'elasticGpuType':
          result.elasticGpuType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'elasticGpuHealth':
          result.elasticGpuHealth.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ElasticGpuHealth),
          ) as ElasticGpuHealth));
        case 'elasticGpuState':
          result.elasticGpuState = (serializers.deserialize(
            value,
            specifiedType: const FullType(ElasticGpuState),
          ) as ElasticGpuState);
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ElasticGpus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ElasticGpusResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ElasticGpus(
      :elasticGpuId,
      :availabilityZone,
      :elasticGpuType,
      :elasticGpuHealth,
      :elasticGpuState,
      :instanceId,
      :tags
    ) = object;
    if (elasticGpuId != null) {
      result$
        ..add(const _i3.XmlElementName('ElasticGpuId'))
        ..add(serializers.serialize(
          elasticGpuId,
          specifiedType: const FullType(String),
        ));
    }
    if (availabilityZone != null) {
      result$
        ..add(const _i3.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (elasticGpuType != null) {
      result$
        ..add(const _i3.XmlElementName('ElasticGpuType'))
        ..add(serializers.serialize(
          elasticGpuType,
          specifiedType: const FullType(String),
        ));
    }
    if (elasticGpuHealth != null) {
      result$
        ..add(const _i3.XmlElementName('ElasticGpuHealth'))
        ..add(serializers.serialize(
          elasticGpuHealth,
          specifiedType: const FullType(ElasticGpuHealth),
        ));
    }
    if (elasticGpuState != null) {
      result$
        ..add(const _i3.XmlElementName('ElasticGpuState'))
        ..add(serializers.serialize(
          elasticGpuState,
          specifiedType: const FullType(ElasticGpuState),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
