// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.export_to_s3_task_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/container_format.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_format.dart';

part 'export_to_s3_task_specification.g.dart';

/// Describes an export instance task.
abstract class ExportToS3TaskSpecification
    with _i1.AWSEquatable<ExportToS3TaskSpecification>
    implements
        Built<ExportToS3TaskSpecification, ExportToS3TaskSpecificationBuilder> {
  /// Describes an export instance task.
  factory ExportToS3TaskSpecification({
    ContainerFormat? containerFormat,
    DiskImageFormat? diskImageFormat,
    String? s3Bucket,
    String? s3Prefix,
  }) {
    return _$ExportToS3TaskSpecification._(
      containerFormat: containerFormat,
      diskImageFormat: diskImageFormat,
      s3Bucket: s3Bucket,
      s3Prefix: s3Prefix,
    );
  }

  /// Describes an export instance task.
  factory ExportToS3TaskSpecification.build(
          [void Function(ExportToS3TaskSpecificationBuilder) updates]) =
      _$ExportToS3TaskSpecification;

  const ExportToS3TaskSpecification._();

  static const List<_i2.SmithySerializer<ExportToS3TaskSpecification>>
      serializers = [ExportToS3TaskSpecificationEc2QuerySerializer()];

  /// The container format used to combine disk images with metadata (such as OVF). If absent, only the disk image is exported.
  ContainerFormat? get containerFormat;

  /// The format for the exported image.
  DiskImageFormat? get diskImageFormat;

  /// The Amazon S3 bucket for the destination image. The destination bucket must exist and have an access control list (ACL) attached that specifies the Region-specific canonical account ID for the `Grantee`. For more information about the ACL to your S3 bucket, see [Prerequisites](https://docs.aws.amazon.com/vm-import/latest/userguide/vmexport.html#vmexport-prerequisites) in the VM Import/Export User Guide.
  String? get s3Bucket;

  /// The image is written to a single object in the Amazon S3 bucket at the S3 key s3prefix + exportTaskId + '.' + diskImageFormat.
  String? get s3Prefix;
  @override
  List<Object?> get props => [
        containerFormat,
        diskImageFormat,
        s3Bucket,
        s3Prefix,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExportToS3TaskSpecification')
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
        's3Prefix',
        s3Prefix,
      );
    return helper.toString();
  }
}

class ExportToS3TaskSpecificationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ExportToS3TaskSpecification> {
  const ExportToS3TaskSpecificationEc2QuerySerializer()
      : super('ExportToS3TaskSpecification');

  @override
  Iterable<Type> get types => const [
        ExportToS3TaskSpecification,
        _$ExportToS3TaskSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ExportToS3TaskSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportToS3TaskSpecificationBuilder();
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
        case 's3Prefix':
          result.s3Prefix = (serializers.deserialize(
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
    ExportToS3TaskSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ExportToS3TaskSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ExportToS3TaskSpecification(
      :containerFormat,
      :diskImageFormat,
      :s3Bucket,
      :s3Prefix
    ) = object;
    if (containerFormat != null) {
      result$
        ..add(const _i2.XmlElementName('ContainerFormat'))
        ..add(serializers.serialize(
          containerFormat,
          specifiedType: const FullType.nullable(ContainerFormat),
        ));
    }
    if (diskImageFormat != null) {
      result$
        ..add(const _i2.XmlElementName('DiskImageFormat'))
        ..add(serializers.serialize(
          diskImageFormat,
          specifiedType: const FullType.nullable(DiskImageFormat),
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
    if (s3Prefix != null) {
      result$
        ..add(const _i2.XmlElementName('S3Prefix'))
        ..add(serializers.serialize(
          s3Prefix,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
