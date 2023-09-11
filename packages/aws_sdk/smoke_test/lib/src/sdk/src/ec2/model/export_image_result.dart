// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.export_image_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_format.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_task_s3_location.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'export_image_result.g.dart';

abstract class ExportImageResult
    with _i1.AWSEquatable<ExportImageResult>
    implements Built<ExportImageResult, ExportImageResultBuilder> {
  factory ExportImageResult({
    String? description,
    DiskImageFormat? diskImageFormat,
    String? exportImageTaskId,
    String? imageId,
    String? roleName,
    String? progress,
    ExportTaskS3Location? s3ExportLocation,
    String? status,
    String? statusMessage,
    List<Tag>? tags,
  }) {
    return _$ExportImageResult._(
      description: description,
      diskImageFormat: diskImageFormat,
      exportImageTaskId: exportImageTaskId,
      imageId: imageId,
      roleName: roleName,
      progress: progress,
      s3ExportLocation: s3ExportLocation,
      status: status,
      statusMessage: statusMessage,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  factory ExportImageResult.build(
      [void Function(ExportImageResultBuilder) updates]) = _$ExportImageResult;

  const ExportImageResult._();

  /// Constructs a [ExportImageResult] from a [payload] and [response].
  factory ExportImageResult.fromResponse(
    ExportImageResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ExportImageResult>> serializers = [
    ExportImageResultEc2QuerySerializer()
  ];

  /// A description of the image being exported.
  String? get description;

  /// The disk image format for the exported image.
  DiskImageFormat? get diskImageFormat;

  /// The ID of the export image task.
  String? get exportImageTaskId;

  /// The ID of the image.
  String? get imageId;

  /// The name of the role that grants VM Import/Export permission to export images to your Amazon S3 bucket.
  String? get roleName;

  /// The percent complete of the export image task.
  String? get progress;

  /// Information about the destination Amazon S3 bucket.
  ExportTaskS3Location? get s3ExportLocation;

  /// The status of the export image task. The possible values are `active`, `completed`, `deleting`, and `deleted`.
  String? get status;

  /// The status message for the export image task.
  String? get statusMessage;

  /// Any tags assigned to the export image task.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        description,
        diskImageFormat,
        exportImageTaskId,
        imageId,
        roleName,
        progress,
        s3ExportLocation,
        status,
        statusMessage,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExportImageResult')
      ..add(
        'description',
        description,
      )
      ..add(
        'diskImageFormat',
        diskImageFormat,
      )
      ..add(
        'exportImageTaskId',
        exportImageTaskId,
      )
      ..add(
        'imageId',
        imageId,
      )
      ..add(
        'roleName',
        roleName,
      )
      ..add(
        'progress',
        progress,
      )
      ..add(
        's3ExportLocation',
        s3ExportLocation,
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
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class ExportImageResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ExportImageResult> {
  const ExportImageResultEc2QuerySerializer() : super('ExportImageResult');

  @override
  Iterable<Type> get types => const [
        ExportImageResult,
        _$ExportImageResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ExportImageResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportImageResultBuilder();
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
        case 'diskImageFormat':
          result.diskImageFormat = (serializers.deserialize(
            value,
            specifiedType: const FullType(DiskImageFormat),
          ) as DiskImageFormat);
        case 'exportImageTaskId':
          result.exportImageTaskId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'imageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'roleName':
          result.roleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'progress':
          result.progress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 's3ExportLocation':
          result.s3ExportLocation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ExportTaskS3Location),
          ) as ExportTaskS3Location));
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
    ExportImageResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ExportImageResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ExportImageResult(
      :description,
      :diskImageFormat,
      :exportImageTaskId,
      :imageId,
      :roleName,
      :progress,
      :s3ExportLocation,
      :status,
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
    if (diskImageFormat != null) {
      result$
        ..add(const _i3.XmlElementName('DiskImageFormat'))
        ..add(serializers.serialize(
          diskImageFormat,
          specifiedType: const FullType(DiskImageFormat),
        ));
    }
    if (exportImageTaskId != null) {
      result$
        ..add(const _i3.XmlElementName('ExportImageTaskId'))
        ..add(serializers.serialize(
          exportImageTaskId,
          specifiedType: const FullType(String),
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
    if (roleName != null) {
      result$
        ..add(const _i3.XmlElementName('RoleName'))
        ..add(serializers.serialize(
          roleName,
          specifiedType: const FullType(String),
        ));
    }
    if (progress != null) {
      result$
        ..add(const _i3.XmlElementName('Progress'))
        ..add(serializers.serialize(
          progress,
          specifiedType: const FullType(String),
        ));
    }
    if (s3ExportLocation != null) {
      result$
        ..add(const _i3.XmlElementName('S3ExportLocation'))
        ..add(serializers.serialize(
          s3ExportLocation,
          specifiedType: const FullType(ExportTaskS3Location),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(String),
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
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
