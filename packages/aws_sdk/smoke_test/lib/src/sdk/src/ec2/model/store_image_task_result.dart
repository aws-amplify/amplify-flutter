// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.store_image_task_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'store_image_task_result.g.dart';

/// The information about the AMI store task, including the progress of the task.
abstract class StoreImageTaskResult
    with _i1.AWSEquatable<StoreImageTaskResult>
    implements Built<StoreImageTaskResult, StoreImageTaskResultBuilder> {
  /// The information about the AMI store task, including the progress of the task.
  factory StoreImageTaskResult({
    String? amiId,
    DateTime? taskStartTime,
    String? bucket,
    String? s3ObjectKey,
    int? progressPercentage,
    String? storeTaskState,
    String? storeTaskFailureReason,
  }) {
    progressPercentage ??= 0;
    return _$StoreImageTaskResult._(
      amiId: amiId,
      taskStartTime: taskStartTime,
      bucket: bucket,
      s3ObjectKey: s3ObjectKey,
      progressPercentage: progressPercentage,
      storeTaskState: storeTaskState,
      storeTaskFailureReason: storeTaskFailureReason,
    );
  }

  /// The information about the AMI store task, including the progress of the task.
  factory StoreImageTaskResult.build(
          [void Function(StoreImageTaskResultBuilder) updates]) =
      _$StoreImageTaskResult;

  const StoreImageTaskResult._();

  static const List<_i2.SmithySerializer<StoreImageTaskResult>> serializers = [
    StoreImageTaskResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StoreImageTaskResultBuilder b) {
    b.progressPercentage = 0;
  }

  /// The ID of the AMI that is being stored.
  String? get amiId;

  /// The time the task started.
  DateTime? get taskStartTime;

  /// The name of the Amazon S3 bucket that contains the stored AMI object.
  String? get bucket;

  /// The name of the stored AMI object in the bucket.
  String? get s3ObjectKey;

  /// The progress of the task as a percentage.
  int get progressPercentage;

  /// The state of the store task (`InProgress`, `Completed`, or `Failed`).
  String? get storeTaskState;

  /// If the tasks fails, the reason for the failure is returned. If the task succeeds, `null` is returned.
  String? get storeTaskFailureReason;
  @override
  List<Object?> get props => [
        amiId,
        taskStartTime,
        bucket,
        s3ObjectKey,
        progressPercentage,
        storeTaskState,
        storeTaskFailureReason,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StoreImageTaskResult')
      ..add(
        'amiId',
        amiId,
      )
      ..add(
        'taskStartTime',
        taskStartTime,
      )
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        's3ObjectKey',
        s3ObjectKey,
      )
      ..add(
        'progressPercentage',
        progressPercentage,
      )
      ..add(
        'storeTaskState',
        storeTaskState,
      )
      ..add(
        'storeTaskFailureReason',
        storeTaskFailureReason,
      );
    return helper.toString();
  }
}

class StoreImageTaskResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<StoreImageTaskResult> {
  const StoreImageTaskResultEc2QuerySerializer()
      : super('StoreImageTaskResult');

  @override
  Iterable<Type> get types => const [
        StoreImageTaskResult,
        _$StoreImageTaskResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StoreImageTaskResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StoreImageTaskResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'amiId':
          result.amiId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'taskStartTime':
          result.taskStartTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'bucket':
          result.bucket = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 's3objectKey':
          result.s3ObjectKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'progressPercentage':
          result.progressPercentage = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'storeTaskState':
          result.storeTaskState = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'storeTaskFailureReason':
          result.storeTaskFailureReason = (serializers.deserialize(
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
    StoreImageTaskResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'StoreImageTaskResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final StoreImageTaskResult(
      :amiId,
      :taskStartTime,
      :bucket,
      :s3ObjectKey,
      :progressPercentage,
      :storeTaskState,
      :storeTaskFailureReason
    ) = object;
    if (amiId != null) {
      result$
        ..add(const _i2.XmlElementName('AmiId'))
        ..add(serializers.serialize(
          amiId,
          specifiedType: const FullType(String),
        ));
    }
    if (taskStartTime != null) {
      result$
        ..add(const _i2.XmlElementName('TaskStartTime'))
        ..add(serializers.serialize(
          taskStartTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (bucket != null) {
      result$
        ..add(const _i2.XmlElementName('Bucket'))
        ..add(serializers.serialize(
          bucket,
          specifiedType: const FullType(String),
        ));
    }
    if (s3ObjectKey != null) {
      result$
        ..add(const _i2.XmlElementName('S3objectKey'))
        ..add(serializers.serialize(
          s3ObjectKey,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('ProgressPercentage'))
      ..add(serializers.serialize(
        progressPercentage,
        specifiedType: const FullType(int),
      ));
    if (storeTaskState != null) {
      result$
        ..add(const _i2.XmlElementName('StoreTaskState'))
        ..add(serializers.serialize(
          storeTaskState,
          specifiedType: const FullType(String),
        ));
    }
    if (storeTaskFailureReason != null) {
      result$
        ..add(const _i2.XmlElementName('StoreTaskFailureReason'))
        ..add(serializers.serialize(
          storeTaskFailureReason,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
