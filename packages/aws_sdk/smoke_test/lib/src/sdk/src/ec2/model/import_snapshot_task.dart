// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.import_snapshot_task; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_task_detail.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'import_snapshot_task.g.dart';

/// Describes an import snapshot task.
abstract class ImportSnapshotTask
    with _i1.AWSEquatable<ImportSnapshotTask>
    implements Built<ImportSnapshotTask, ImportSnapshotTaskBuilder> {
  /// Describes an import snapshot task.
  factory ImportSnapshotTask({
    String? description,
    String? importTaskId,
    SnapshotTaskDetail? snapshotTaskDetail,
    List<Tag>? tags,
  }) {
    return _$ImportSnapshotTask._(
      description: description,
      importTaskId: importTaskId,
      snapshotTaskDetail: snapshotTaskDetail,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes an import snapshot task.
  factory ImportSnapshotTask.build(
          [void Function(ImportSnapshotTaskBuilder) updates]) =
      _$ImportSnapshotTask;

  const ImportSnapshotTask._();

  static const List<_i3.SmithySerializer<ImportSnapshotTask>> serializers = [
    ImportSnapshotTaskEc2QuerySerializer()
  ];

  /// A description of the import snapshot task.
  String? get description;

  /// The ID of the import snapshot task.
  String? get importTaskId;

  /// Describes an import snapshot task.
  SnapshotTaskDetail? get snapshotTaskDetail;

  /// The tags for the import snapshot task.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        description,
        importTaskId,
        snapshotTaskDetail,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportSnapshotTask')
      ..add(
        'description',
        description,
      )
      ..add(
        'importTaskId',
        importTaskId,
      )
      ..add(
        'snapshotTaskDetail',
        snapshotTaskDetail,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class ImportSnapshotTaskEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ImportSnapshotTask> {
  const ImportSnapshotTaskEc2QuerySerializer() : super('ImportSnapshotTask');

  @override
  Iterable<Type> get types => const [
        ImportSnapshotTask,
        _$ImportSnapshotTask,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportSnapshotTask deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportSnapshotTaskBuilder();
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
        case 'importTaskId':
          result.importTaskId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'snapshotTaskDetail':
          result.snapshotTaskDetail.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SnapshotTaskDetail),
          ) as SnapshotTaskDetail));
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
    ImportSnapshotTask object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ImportSnapshotTaskResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ImportSnapshotTask(
      :description,
      :importTaskId,
      :snapshotTaskDetail,
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
    if (importTaskId != null) {
      result$
        ..add(const _i3.XmlElementName('ImportTaskId'))
        ..add(serializers.serialize(
          importTaskId,
          specifiedType: const FullType(String),
        ));
    }
    if (snapshotTaskDetail != null) {
      result$
        ..add(const _i3.XmlElementName('SnapshotTaskDetail'))
        ..add(serializers.serialize(
          snapshotTaskDetail,
          specifiedType: const FullType(SnapshotTaskDetail),
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
