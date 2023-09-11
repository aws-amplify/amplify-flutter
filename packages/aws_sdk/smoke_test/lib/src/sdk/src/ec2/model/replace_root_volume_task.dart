// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.replace_root_volume_task; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/replace_root_volume_task_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'replace_root_volume_task.g.dart';

/// Information about a root volume replacement task.
abstract class ReplaceRootVolumeTask
    with _i1.AWSEquatable<ReplaceRootVolumeTask>
    implements Built<ReplaceRootVolumeTask, ReplaceRootVolumeTaskBuilder> {
  /// Information about a root volume replacement task.
  factory ReplaceRootVolumeTask({
    String? replaceRootVolumeTaskId,
    String? instanceId,
    ReplaceRootVolumeTaskState? taskState,
    String? startTime,
    String? completeTime,
    List<Tag>? tags,
    String? imageId,
    String? snapshotId,
    bool? deleteReplacedRootVolume,
  }) {
    deleteReplacedRootVolume ??= false;
    return _$ReplaceRootVolumeTask._(
      replaceRootVolumeTaskId: replaceRootVolumeTaskId,
      instanceId: instanceId,
      taskState: taskState,
      startTime: startTime,
      completeTime: completeTime,
      tags: tags == null ? null : _i2.BuiltList(tags),
      imageId: imageId,
      snapshotId: snapshotId,
      deleteReplacedRootVolume: deleteReplacedRootVolume,
    );
  }

  /// Information about a root volume replacement task.
  factory ReplaceRootVolumeTask.build(
          [void Function(ReplaceRootVolumeTaskBuilder) updates]) =
      _$ReplaceRootVolumeTask;

  const ReplaceRootVolumeTask._();

  static const List<_i3.SmithySerializer<ReplaceRootVolumeTask>> serializers = [
    ReplaceRootVolumeTaskEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplaceRootVolumeTaskBuilder b) {
    b.deleteReplacedRootVolume = false;
  }

  /// The ID of the root volume replacement task.
  String? get replaceRootVolumeTaskId;

  /// The ID of the instance for which the root volume replacement task was created.
  String? get instanceId;

  /// The state of the task. The task can be in one of the following states:
  ///
  /// *   `pending` \- the replacement volume is being created.
  ///
  /// *   `in-progress` \- the original volume is being detached and the replacement volume is being attached.
  ///
  /// *   `succeeded` \- the replacement volume has been successfully attached to the instance and the instance is available.
  ///
  /// *   `failing` \- the replacement task is in the process of failing.
  ///
  /// *   `failed` \- the replacement task has failed but the original root volume is still attached.
  ///
  /// *   `failing-detached` \- the replacement task is in the process of failing. The instance might have no root volume attached.
  ///
  /// *   `failed-detached` \- the replacement task has failed and the instance has no root volume attached.
  ReplaceRootVolumeTaskState? get taskState;

  /// The time the task was started.
  String? get startTime;

  /// The time the task completed.
  String? get completeTime;

  /// The tags assigned to the task.
  _i2.BuiltList<Tag>? get tags;

  /// The ID of the AMI used to create the replacement root volume.
  String? get imageId;

  /// The ID of the snapshot used to create the replacement root volume.
  String? get snapshotId;

  /// Indicates whether the original root volume is to be deleted after the root volume replacement task completes.
  bool get deleteReplacedRootVolume;
  @override
  List<Object?> get props => [
        replaceRootVolumeTaskId,
        instanceId,
        taskState,
        startTime,
        completeTime,
        tags,
        imageId,
        snapshotId,
        deleteReplacedRootVolume,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplaceRootVolumeTask')
      ..add(
        'replaceRootVolumeTaskId',
        replaceRootVolumeTaskId,
      )
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'taskState',
        taskState,
      )
      ..add(
        'startTime',
        startTime,
      )
      ..add(
        'completeTime',
        completeTime,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'imageId',
        imageId,
      )
      ..add(
        'snapshotId',
        snapshotId,
      )
      ..add(
        'deleteReplacedRootVolume',
        deleteReplacedRootVolume,
      );
    return helper.toString();
  }
}

class ReplaceRootVolumeTaskEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ReplaceRootVolumeTask> {
  const ReplaceRootVolumeTaskEc2QuerySerializer()
      : super('ReplaceRootVolumeTask');

  @override
  Iterable<Type> get types => const [
        ReplaceRootVolumeTask,
        _$ReplaceRootVolumeTask,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReplaceRootVolumeTask deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplaceRootVolumeTaskBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'replaceRootVolumeTaskId':
          result.replaceRootVolumeTaskId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'taskState':
          result.taskState = (serializers.deserialize(
            value,
            specifiedType: const FullType(ReplaceRootVolumeTaskState),
          ) as ReplaceRootVolumeTaskState);
        case 'startTime':
          result.startTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'completeTime':
          result.completeTime = (serializers.deserialize(
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
        case 'imageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'snapshotId':
          result.snapshotId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'deleteReplacedRootVolume':
          result.deleteReplacedRootVolume = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReplaceRootVolumeTask object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ReplaceRootVolumeTaskResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReplaceRootVolumeTask(
      :replaceRootVolumeTaskId,
      :instanceId,
      :taskState,
      :startTime,
      :completeTime,
      :tags,
      :imageId,
      :snapshotId,
      :deleteReplacedRootVolume
    ) = object;
    if (replaceRootVolumeTaskId != null) {
      result$
        ..add(const _i3.XmlElementName('ReplaceRootVolumeTaskId'))
        ..add(serializers.serialize(
          replaceRootVolumeTaskId,
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
    if (taskState != null) {
      result$
        ..add(const _i3.XmlElementName('TaskState'))
        ..add(serializers.serialize(
          taskState,
          specifiedType: const FullType(ReplaceRootVolumeTaskState),
        ));
    }
    if (startTime != null) {
      result$
        ..add(const _i3.XmlElementName('StartTime'))
        ..add(serializers.serialize(
          startTime,
          specifiedType: const FullType(String),
        ));
    }
    if (completeTime != null) {
      result$
        ..add(const _i3.XmlElementName('CompleteTime'))
        ..add(serializers.serialize(
          completeTime,
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
    if (imageId != null) {
      result$
        ..add(const _i3.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    if (snapshotId != null) {
      result$
        ..add(const _i3.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('DeleteReplacedRootVolume'))
      ..add(serializers.serialize(
        deleteReplacedRootVolume,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
