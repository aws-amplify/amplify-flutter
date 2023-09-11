// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_instance_export_task_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/export_environment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_to_s3_task_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_instance_export_task_request.g.dart';

abstract class CreateInstanceExportTaskRequest
    with
        _i1.HttpInput<CreateInstanceExportTaskRequest>,
        _i2.AWSEquatable<CreateInstanceExportTaskRequest>
    implements
        Built<CreateInstanceExportTaskRequest,
            CreateInstanceExportTaskRequestBuilder> {
  factory CreateInstanceExportTaskRequest({
    String? description,
    ExportToS3TaskSpecification? exportToS3Task,
    String? instanceId,
    ExportEnvironment? targetEnvironment,
    List<TagSpecification>? tagSpecifications,
  }) {
    return _$CreateInstanceExportTaskRequest._(
      description: description,
      exportToS3Task: exportToS3Task,
      instanceId: instanceId,
      targetEnvironment: targetEnvironment,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
    );
  }

  factory CreateInstanceExportTaskRequest.build(
          [void Function(CreateInstanceExportTaskRequestBuilder) updates]) =
      _$CreateInstanceExportTaskRequest;

  const CreateInstanceExportTaskRequest._();

  factory CreateInstanceExportTaskRequest.fromRequest(
    CreateInstanceExportTaskRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateInstanceExportTaskRequest>>
      serializers = [CreateInstanceExportTaskRequestEc2QuerySerializer()];

  /// A description for the conversion task or the resource being exported. The maximum length is 255 characters.
  String? get description;

  /// The format and location for an export instance task.
  ExportToS3TaskSpecification? get exportToS3Task;

  /// The ID of the instance.
  String? get instanceId;

  /// The target virtualization environment.
  ExportEnvironment? get targetEnvironment;

  /// The tags to apply to the export instance task during creation.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;
  @override
  CreateInstanceExportTaskRequest getPayload() => this;
  @override
  List<Object?> get props => [
        description,
        exportToS3Task,
        instanceId,
        targetEnvironment,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateInstanceExportTaskRequest')
          ..add(
            'description',
            description,
          )
          ..add(
            'exportToS3Task',
            exportToS3Task,
          )
          ..add(
            'instanceId',
            instanceId,
          )
          ..add(
            'targetEnvironment',
            targetEnvironment,
          )
          ..add(
            'tagSpecifications',
            tagSpecifications,
          );
    return helper.toString();
  }
}

class CreateInstanceExportTaskRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateInstanceExportTaskRequest> {
  const CreateInstanceExportTaskRequestEc2QuerySerializer()
      : super('CreateInstanceExportTaskRequest');

  @override
  Iterable<Type> get types => const [
        CreateInstanceExportTaskRequest,
        _$CreateInstanceExportTaskRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateInstanceExportTaskRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInstanceExportTaskRequestBuilder();
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
        case 'exportToS3':
          result.exportToS3Task.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ExportToS3TaskSpecification),
          ) as ExportToS3TaskSpecification));
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'targetEnvironment':
          result.targetEnvironment = (serializers.deserialize(
            value,
            specifiedType: const FullType(ExportEnvironment),
          ) as ExportEnvironment);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateInstanceExportTaskRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateInstanceExportTaskRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateInstanceExportTaskRequest(
      :description,
      :exportToS3Task,
      :instanceId,
      :targetEnvironment,
      :tagSpecifications
    ) = object;
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (exportToS3Task != null) {
      result$
        ..add(const _i1.XmlElementName('ExportToS3'))
        ..add(serializers.serialize(
          exportToS3Task,
          specifiedType: const FullType(ExportToS3TaskSpecification),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (targetEnvironment != null) {
      result$
        ..add(const _i1.XmlElementName('TargetEnvironment'))
        ..add(serializers.serialize(
          targetEnvironment,
          specifiedType: const FullType(ExportEnvironment),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    return result$;
  }
}
