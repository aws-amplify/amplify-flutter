// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.snapshot_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/user_bucket_details.dart';

part 'snapshot_detail.g.dart';

/// Describes the snapshot created from the imported disk.
abstract class SnapshotDetail
    with _i1.AWSEquatable<SnapshotDetail>
    implements Built<SnapshotDetail, SnapshotDetailBuilder> {
  /// Describes the snapshot created from the imported disk.
  factory SnapshotDetail({
    String? description,
    String? deviceName,
    double? diskImageSize,
    String? format,
    String? progress,
    String? snapshotId,
    String? status,
    String? statusMessage,
    String? url,
    UserBucketDetails? userBucket,
  }) {
    diskImageSize ??= 0;
    return _$SnapshotDetail._(
      description: description,
      deviceName: deviceName,
      diskImageSize: diskImageSize,
      format: format,
      progress: progress,
      snapshotId: snapshotId,
      status: status,
      statusMessage: statusMessage,
      url: url,
      userBucket: userBucket,
    );
  }

  /// Describes the snapshot created from the imported disk.
  factory SnapshotDetail.build([void Function(SnapshotDetailBuilder) updates]) =
      _$SnapshotDetail;

  const SnapshotDetail._();

  static const List<_i2.SmithySerializer<SnapshotDetail>> serializers = [
    SnapshotDetailEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SnapshotDetailBuilder b) {
    b.diskImageSize = 0;
  }

  /// A description for the snapshot.
  String? get description;

  /// The block device mapping for the snapshot.
  String? get deviceName;

  /// The size of the disk in the snapshot, in GiB.
  double get diskImageSize;

  /// The format of the disk image from which the snapshot is created.
  String? get format;

  /// The percentage of progress for the task.
  String? get progress;

  /// The snapshot ID of the disk being imported.
  String? get snapshotId;

  /// A brief status of the snapshot creation.
  String? get status;

  /// A detailed status message for the snapshot creation.
  String? get statusMessage;

  /// The URL used to access the disk image.
  String? get url;

  /// The Amazon S3 bucket for the disk image.
  UserBucketDetails? get userBucket;
  @override
  List<Object?> get props => [
        description,
        deviceName,
        diskImageSize,
        format,
        progress,
        snapshotId,
        status,
        statusMessage,
        url,
        userBucket,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SnapshotDetail')
      ..add(
        'description',
        description,
      )
      ..add(
        'deviceName',
        deviceName,
      )
      ..add(
        'diskImageSize',
        diskImageSize,
      )
      ..add(
        'format',
        format,
      )
      ..add(
        'progress',
        progress,
      )
      ..add(
        'snapshotId',
        snapshotId,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'statusMessage',
        statusMessage,
      )
      ..add(
        'url',
        '***SENSITIVE***',
      )
      ..add(
        'userBucket',
        userBucket,
      );
    return helper.toString();
  }
}

class SnapshotDetailEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SnapshotDetail> {
  const SnapshotDetailEc2QuerySerializer() : super('SnapshotDetail');

  @override
  Iterable<Type> get types => const [
        SnapshotDetail,
        _$SnapshotDetail,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SnapshotDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SnapshotDetailBuilder();
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
        case 'deviceName':
          result.deviceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'diskImageSize':
          result.diskImageSize = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'format':
          result.format = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'progress':
          result.progress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'snapshotId':
          result.snapshotId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'statusMessage':
          result.statusMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'url':
          result.url = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'userBucket':
          result.userBucket.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(UserBucketDetails),
          ) as UserBucketDetails));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SnapshotDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SnapshotDetailResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SnapshotDetail(
      :description,
      :deviceName,
      :diskImageSize,
      :format,
      :progress,
      :snapshotId,
      :status,
      :statusMessage,
      :url,
      :userBucket
    ) = object;
    if (description != null) {
      result$
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (deviceName != null) {
      result$
        ..add(const _i2.XmlElementName('DeviceName'))
        ..add(serializers.serialize(
          deviceName,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('DiskImageSize'))
      ..add(serializers.serialize(
        diskImageSize,
        specifiedType: const FullType(double),
      ));
    if (format != null) {
      result$
        ..add(const _i2.XmlElementName('Format'))
        ..add(serializers.serialize(
          format,
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
    if (snapshotId != null) {
      result$
        ..add(const _i2.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(String),
        ));
    }
    if (statusMessage != null) {
      result$
        ..add(const _i2.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          statusMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (url != null) {
      result$
        ..add(const _i2.XmlElementName('Url'))
        ..add(serializers.serialize(
          url,
          specifiedType: const FullType(String),
        ));
    }
    if (userBucket != null) {
      result$
        ..add(const _i2.XmlElementName('UserBucket'))
        ..add(serializers.serialize(
          userBucket,
          specifiedType: const FullType(UserBucketDetails),
        ));
    }
    return result$;
  }
}
