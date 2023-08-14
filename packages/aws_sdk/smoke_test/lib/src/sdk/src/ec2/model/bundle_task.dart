// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.bundle_task; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/bundle_task_error.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/bundle_task_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/storage.dart';

part 'bundle_task.g.dart';

/// Describes a bundle task.
abstract class BundleTask
    with _i1.AWSEquatable<BundleTask>
    implements Built<BundleTask, BundleTaskBuilder> {
  /// Describes a bundle task.
  factory BundleTask({
    String? bundleId,
    BundleTaskError? bundleTaskError,
    String? instanceId,
    String? progress,
    DateTime? startTime,
    BundleTaskState? state,
    Storage? storage,
    DateTime? updateTime,
  }) {
    return _$BundleTask._(
      bundleId: bundleId,
      bundleTaskError: bundleTaskError,
      instanceId: instanceId,
      progress: progress,
      startTime: startTime,
      state: state,
      storage: storage,
      updateTime: updateTime,
    );
  }

  /// Describes a bundle task.
  factory BundleTask.build([void Function(BundleTaskBuilder) updates]) =
      _$BundleTask;

  const BundleTask._();

  static const List<_i2.SmithySerializer<BundleTask>> serializers = [
    BundleTaskEc2QuerySerializer()
  ];

  /// The ID of the bundle task.
  String? get bundleId;

  /// If the task fails, a description of the error.
  BundleTaskError? get bundleTaskError;

  /// The ID of the instance associated with this bundle task.
  String? get instanceId;

  /// The level of task completion, as a percent (for example, 20%).
  String? get progress;

  /// The time this task started.
  DateTime? get startTime;

  /// The state of the task.
  BundleTaskState? get state;

  /// The Amazon S3 storage locations.
  Storage? get storage;

  /// The time of the most recent update for the task.
  DateTime? get updateTime;
  @override
  List<Object?> get props => [
        bundleId,
        bundleTaskError,
        instanceId,
        progress,
        startTime,
        state,
        storage,
        updateTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BundleTask')
      ..add(
        'bundleId',
        bundleId,
      )
      ..add(
        'bundleTaskError',
        bundleTaskError,
      )
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'progress',
        progress,
      )
      ..add(
        'startTime',
        startTime,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'storage',
        storage,
      )
      ..add(
        'updateTime',
        updateTime,
      );
    return helper.toString();
  }
}

class BundleTaskEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<BundleTask> {
  const BundleTaskEc2QuerySerializer() : super('BundleTask');

  @override
  Iterable<Type> get types => const [
        BundleTask,
        _$BundleTask,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  BundleTask deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BundleTaskBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'bundleId':
          result.bundleId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'error':
          result.bundleTaskError.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(BundleTaskError),
          ) as BundleTaskError));
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'progress':
          result.progress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'startTime':
          result.startTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(BundleTaskState),
          ) as BundleTaskState);
        case 'storage':
          result.storage.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Storage),
          ) as Storage));
        case 'updateTime':
          result.updateTime = (serializers.deserialize(
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
    BundleTask object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'BundleTaskResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final BundleTask(
      :bundleId,
      :bundleTaskError,
      :instanceId,
      :progress,
      :startTime,
      :state,
      :storage,
      :updateTime
    ) = object;
    if (bundleId != null) {
      result$
        ..add(const _i2.XmlElementName('BundleId'))
        ..add(serializers.serialize(
          bundleId,
          specifiedType: const FullType(String),
        ));
    }
    if (bundleTaskError != null) {
      result$
        ..add(const _i2.XmlElementName('Error'))
        ..add(serializers.serialize(
          bundleTaskError,
          specifiedType: const FullType(BundleTaskError),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (progress != null) {
      result$
        ..add(const _i2.XmlElementName('Progress'))
        ..add(serializers.serialize(
          progress,
          specifiedType: const FullType(String),
        ));
    }
    if (startTime != null) {
      result$
        ..add(const _i2.XmlElementName('StartTime'))
        ..add(serializers.serialize(
          startTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(BundleTaskState),
        ));
    }
    if (storage != null) {
      result$
        ..add(const _i2.XmlElementName('Storage'))
        ..add(serializers.serialize(
          storage,
          specifiedType: const FullType(Storage),
        ));
    }
    if (updateTime != null) {
      result$
        ..add(const _i2.XmlElementName('UpdateTime'))
        ..add(serializers.serialize(
          updateTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
