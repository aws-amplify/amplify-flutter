// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_requirements_with_metadata_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/architecture_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_requirements_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/virtualization_type.dart';

part 'instance_requirements_with_metadata_request.g.dart';

/// The architecture type, virtualization type, and other attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with those attributes.
///
/// If you specify `InstanceRequirementsWithMetadataRequest`, you can't specify `InstanceTypes`.
abstract class InstanceRequirementsWithMetadataRequest
    with
        _i1.AWSEquatable<InstanceRequirementsWithMetadataRequest>
    implements
        Built<InstanceRequirementsWithMetadataRequest,
            InstanceRequirementsWithMetadataRequestBuilder> {
  /// The architecture type, virtualization type, and other attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with those attributes.
  ///
  /// If you specify `InstanceRequirementsWithMetadataRequest`, you can't specify `InstanceTypes`.
  factory InstanceRequirementsWithMetadataRequest({
    List<ArchitectureType>? architectureTypes,
    List<VirtualizationType>? virtualizationTypes,
    InstanceRequirementsRequest? instanceRequirements,
  }) {
    return _$InstanceRequirementsWithMetadataRequest._(
      architectureTypes:
          architectureTypes == null ? null : _i2.BuiltList(architectureTypes),
      virtualizationTypes: virtualizationTypes == null
          ? null
          : _i2.BuiltList(virtualizationTypes),
      instanceRequirements: instanceRequirements,
    );
  }

  /// The architecture type, virtualization type, and other attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with those attributes.
  ///
  /// If you specify `InstanceRequirementsWithMetadataRequest`, you can't specify `InstanceTypes`.
  factory InstanceRequirementsWithMetadataRequest.build(
      [void Function(InstanceRequirementsWithMetadataRequestBuilder)
          updates]) = _$InstanceRequirementsWithMetadataRequest;

  const InstanceRequirementsWithMetadataRequest._();

  static const List<
          _i3.SmithySerializer<InstanceRequirementsWithMetadataRequest>>
      serializers = [
    InstanceRequirementsWithMetadataRequestEc2QuerySerializer()
  ];

  /// The architecture type.
  _i2.BuiltList<ArchitectureType>? get architectureTypes;

  /// The virtualization type.
  _i2.BuiltList<VirtualizationType>? get virtualizationTypes;

  /// The attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with those attributes.
  InstanceRequirementsRequest? get instanceRequirements;
  @override
  List<Object?> get props => [
        architectureTypes,
        virtualizationTypes,
        instanceRequirements,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InstanceRequirementsWithMetadataRequest')
          ..add(
            'architectureTypes',
            architectureTypes,
          )
          ..add(
            'virtualizationTypes',
            virtualizationTypes,
          )
          ..add(
            'instanceRequirements',
            instanceRequirements,
          );
    return helper.toString();
  }
}

class InstanceRequirementsWithMetadataRequestEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<InstanceRequirementsWithMetadataRequest> {
  const InstanceRequirementsWithMetadataRequestEc2QuerySerializer()
      : super('InstanceRequirementsWithMetadataRequest');

  @override
  Iterable<Type> get types => const [
        InstanceRequirementsWithMetadataRequest,
        _$InstanceRequirementsWithMetadataRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceRequirementsWithMetadataRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceRequirementsWithMetadataRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ArchitectureType':
          result.architectureTypes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ArchitectureType)],
            ),
          ) as _i2.BuiltList<ArchitectureType>));
        case 'VirtualizationType':
          result.virtualizationTypes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VirtualizationType)],
            ),
          ) as _i2.BuiltList<VirtualizationType>));
        case 'InstanceRequirements':
          result.instanceRequirements.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceRequirementsRequest),
          ) as InstanceRequirementsRequest));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceRequirementsWithMetadataRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'InstanceRequirementsWithMetadataRequestResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceRequirementsWithMetadataRequest(
      :architectureTypes,
      :virtualizationTypes,
      :instanceRequirements
    ) = object;
    if (architectureTypes != null) {
      result$
        ..add(const _i3.XmlElementName('ArchitectureType'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          architectureTypes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ArchitectureType)],
          ),
        ));
    }
    if (virtualizationTypes != null) {
      result$
        ..add(const _i3.XmlElementName('VirtualizationType'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          virtualizationTypes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(VirtualizationType)],
          ),
        ));
    }
    if (instanceRequirements != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceRequirements'))
        ..add(serializers.serialize(
          instanceRequirements,
          specifiedType: const FullType(InstanceRequirementsRequest),
        ));
    }
    return result$;
  }
}
