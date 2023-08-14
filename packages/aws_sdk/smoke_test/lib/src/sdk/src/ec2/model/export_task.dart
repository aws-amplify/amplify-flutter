// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.export_task; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/export_task_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_to_s3_task.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_export_details.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'export_task.g.dart';

/// Describes an export instance task.
abstract class ExportTask
    with _i1.AWSEquatable<ExportTask>
    implements Built<ExportTask, ExportTaskBuilder> {
  /// Describes an export instance task.
  factory ExportTask({
    String? description,
    String? exportTaskId,
    ExportToS3Task? exportToS3Task,
    InstanceExportDetails? instanceExportDetails,
    ExportTaskState? state,
    String? statusMessage,
    List<Tag>? tags,
  }) {
    return _$ExportTask._(
      description: description,
      exportTaskId: exportTaskId,
      exportToS3Task: exportToS3Task,
      instanceExportDetails: instanceExportDetails,
      state: state,
      statusMessage: statusMessage,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes an export instance task.
  factory ExportTask.build([void Function(ExportTaskBuilder) updates]) =
      _$ExportTask;

  const ExportTask._();

  static const List<_i3.SmithySerializer<ExportTask>> serializers = [
    ExportTaskEc2QuerySerializer()
  ];

  /// A description of the resource being exported.
  String? get description;

  /// The ID of the export task.
  String? get exportTaskId;

  /// Information about the export task.
  ExportToS3Task? get exportToS3Task;

  /// Information about the instance to export.
  InstanceExportDetails? get instanceExportDetails;

  /// The state of the export task.
  ExportTaskState? get state;

  /// The status message related to the export task.
  String? get statusMessage;

  /// The tags for the export task.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        description,
        exportTaskId,
        exportToS3Task,
        instanceExportDetails,
        state,
        statusMessage,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExportTask')
      ..add(
        'description',
        description,
      )
      ..add(
        'exportTaskId',
        exportTaskId,
      )
      ..add(
        'exportToS3Task',
        exportToS3Task,
      )
      ..add(
        'instanceExportDetails',
        instanceExportDetails,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'statusMessage',
        statusMessage,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class ExportTaskEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ExportTask> {
  const ExportTaskEc2QuerySerializer() : super('ExportTask');

  @override
  Iterable<Type> get types => const [
        ExportTask,
        _$ExportTask,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ExportTask deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportTaskBuilder();
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
        case 'exportTaskId':
          result.exportTaskId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'exportToS3':
          result.exportToS3Task.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ExportToS3Task),
          ) as ExportToS3Task));
        case 'instanceExport':
          result.instanceExportDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceExportDetails),
          ) as InstanceExportDetails));
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(ExportTaskState),
          ) as ExportTaskState);
        case 'statusMessage':
          result.statusMessage = (serializers.deserialize(
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
    ExportTask object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ExportTaskResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ExportTask(
      :description,
      :exportTaskId,
      :exportToS3Task,
      :instanceExportDetails,
      :state,
      :statusMessage,
      :tags
    ) = object;
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (exportTaskId != null) {
      result$
        ..add(const _i3.XmlElementName('ExportTaskId'))
        ..add(serializers.serialize(
          exportTaskId,
          specifiedType: const FullType(String),
        ));
    }
    if (exportToS3Task != null) {
      result$
        ..add(const _i3.XmlElementName('ExportToS3'))
        ..add(serializers.serialize(
          exportToS3Task,
          specifiedType: const FullType(ExportToS3Task),
        ));
    }
    if (instanceExportDetails != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceExport'))
        ..add(serializers.serialize(
          instanceExportDetails,
          specifiedType: const FullType(InstanceExportDetails),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(ExportTaskState),
        ));
    }
    if (statusMessage != null) {
      result$
        ..add(const _i3.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          statusMessage,
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
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
