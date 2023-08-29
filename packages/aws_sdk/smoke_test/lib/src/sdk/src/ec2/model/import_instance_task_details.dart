// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.import_instance_task_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/import_instance_volume_detail_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/platform_values.dart';

part 'import_instance_task_details.g.dart';

/// Describes an import instance task.
abstract class ImportInstanceTaskDetails
    with _i1.AWSEquatable<ImportInstanceTaskDetails>
    implements
        Built<ImportInstanceTaskDetails, ImportInstanceTaskDetailsBuilder> {
  /// Describes an import instance task.
  factory ImportInstanceTaskDetails({
    String? description,
    String? instanceId,
    PlatformValues? platform,
    List<ImportInstanceVolumeDetailItem>? volumes,
  }) {
    return _$ImportInstanceTaskDetails._(
      description: description,
      instanceId: instanceId,
      platform: platform,
      volumes: volumes == null ? null : _i2.BuiltList(volumes),
    );
  }

  /// Describes an import instance task.
  factory ImportInstanceTaskDetails.build(
          [void Function(ImportInstanceTaskDetailsBuilder) updates]) =
      _$ImportInstanceTaskDetails;

  const ImportInstanceTaskDetails._();

  static const List<_i3.SmithySerializer<ImportInstanceTaskDetails>>
      serializers = [ImportInstanceTaskDetailsEc2QuerySerializer()];

  /// A description of the task.
  String? get description;

  /// The ID of the instance.
  String? get instanceId;

  /// The instance operating system.
  PlatformValues? get platform;

  /// The volumes.
  _i2.BuiltList<ImportInstanceVolumeDetailItem>? get volumes;
  @override
  List<Object?> get props => [
        description,
        instanceId,
        platform,
        volumes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportInstanceTaskDetails')
      ..add(
        'description',
        description,
      )
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'platform',
        platform,
      )
      ..add(
        'volumes',
        volumes,
      );
    return helper.toString();
  }
}

class ImportInstanceTaskDetailsEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ImportInstanceTaskDetails> {
  const ImportInstanceTaskDetailsEc2QuerySerializer()
      : super('ImportInstanceTaskDetails');

  @override
  Iterable<Type> get types => const [
        ImportInstanceTaskDetails,
        _$ImportInstanceTaskDetails,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportInstanceTaskDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportInstanceTaskDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'platform':
          result.platform = (serializers.deserialize(
            value,
            specifiedType: const FullType(PlatformValues),
          ) as PlatformValues);
        case 'volumes':
          result.volumes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ImportInstanceVolumeDetailItem)],
            ),
          ) as _i2.BuiltList<ImportInstanceVolumeDetailItem>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ImportInstanceTaskDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ImportInstanceTaskDetailsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ImportInstanceTaskDetails(
      :description,
      :instanceId,
      :platform,
      :volumes
    ) = object;
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
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
    if (platform != null) {
      result$
        ..add(const _i3.XmlElementName('Platform'))
        ..add(serializers.serialize(
          platform,
          specifiedType: const FullType.nullable(PlatformValues),
        ));
    }
    if (volumes != null) {
      result$
        ..add(const _i3.XmlElementName('Volumes'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          volumes,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ImportInstanceVolumeDetailItem)],
          ),
        ));
    }
    return result$;
  }
}
