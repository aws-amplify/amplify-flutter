// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.export_to_s3_task; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/container_format.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_format.dart';

part 'export_to_s3_task.g.dart';

/// Describes the format and location for the export task.
abstract class ExportToS3Task
    with _i1.AWSEquatable<ExportToS3Task>
    implements Built<ExportToS3Task, ExportToS3TaskBuilder> {
  /// Describes the format and location for the export task.
  factory ExportToS3Task({
    ContainerFormat? containerFormat,
    DiskImageFormat? diskImageFormat,
    String? s3Bucket,
    String? s3Key,
  }) {
    return _$ExportToS3Task._(
      containerFormat: containerFormat,
      diskImageFormat: diskImageFormat,
      s3Bucket: s3Bucket,
      s3Key: s3Key,
    );
  }

  /// Describes the format and location for the export task.
  factory ExportToS3Task.build([void Function(ExportToS3TaskBuilder) updates]) =
      _$ExportToS3Task;

  const ExportToS3Task._();

  static const List<_i2.SmithySerializer<ExportToS3Task>> serializers = [
    ExportToS3TaskEc2QuerySerializer()
  ];

  /// The container format used to combine disk images with metadata (such as OVF). If absent, only the disk image is exported.
  ContainerFormat? get containerFormat;

  /// The format for the exported image.
  DiskImageFormat? get diskImageFormat;

  /// The Amazon S3 bucket for the destination image. The destination bucket must exist and have an access control list (ACL) attached that specifies the Region-specific canonical account ID for the `Grantee`. For more information about the ACL to your S3 bucket, see [Prerequisites](https://docs.aws.amazon.com/vm-import/latest/userguide/vmexport.html#vmexport-prerequisites) in the VM Import/Export User Guide.
  String? get s3Bucket;

  /// The encryption key for your S3 bucket.
  String? get s3Key;
  @override
  List<Object?> get props => [
        containerFormat,
        diskImageFormat,
        s3Bucket,
        s3Key,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExportToS3Task')
      ..add(
        'containerFormat',
        containerFormat,
      )
      ..add(
        'diskImageFormat',
        diskImageFormat,
      )
      ..add(
        's3Bucket',
        s3Bucket,
      )
      ..add(
        's3Key',
        s3Key,
      );
    return helper.toString();
  }
}

class ExportToS3TaskEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ExportToS3Task> {
  const ExportToS3TaskEc2QuerySerializer() : super('ExportToS3Task');

  @override
  Iterable<Type> get types => const [
        ExportToS3Task,
        _$ExportToS3Task,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ExportToS3Task deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportToS3TaskBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'containerFormat':
          result.containerFormat = (serializers.deserialize(
            value,
            specifiedType: const FullType(ContainerFormat),
          ) as ContainerFormat);
        case 'diskImageFormat':
          result.diskImageFormat = (serializers.deserialize(
            value,
            specifiedType: const FullType(DiskImageFormat),
          ) as DiskImageFormat);
        case 's3Bucket':
          result.s3Bucket = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 's3Key':
          result.s3Key = (serializers.deserialize(
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
    ExportToS3Task object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ExportToS3TaskResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ExportToS3Task(
      :containerFormat,
      :diskImageFormat,
      :s3Bucket,
      :s3Key
    ) = object;
    if (containerFormat != null) {
      result$
        ..add(const _i2.XmlElementName('ContainerFormat'))
        ..add(serializers.serialize(
          containerFormat,
          specifiedType: const FullType(ContainerFormat),
        ));
    }
    if (diskImageFormat != null) {
      result$
        ..add(const _i2.XmlElementName('DiskImageFormat'))
        ..add(serializers.serialize(
          diskImageFormat,
          specifiedType: const FullType(DiskImageFormat),
        ));
    }
    if (s3Bucket != null) {
      result$
        ..add(const _i2.XmlElementName('S3Bucket'))
        ..add(serializers.serialize(
          s3Bucket,
          specifiedType: const FullType(String),
        ));
    }
    if (s3Key != null) {
      result$
        ..add(const _i2.XmlElementName('S3Key'))
        ..add(serializers.serialize(
          s3Key,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
