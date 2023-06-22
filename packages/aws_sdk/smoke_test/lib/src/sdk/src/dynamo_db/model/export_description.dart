// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.export_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i5;
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_format.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/s3_sse_algorithm.dart'
    as _i3;

part 'export_description.g.dart';

/// Represents the properties of the exported table.
abstract class ExportDescription
    with _i1.AWSEquatable<ExportDescription>
    implements Built<ExportDescription, ExportDescriptionBuilder> {
  /// Represents the properties of the exported table.
  factory ExportDescription({
    String? exportArn,
    _i2.ExportStatus? exportStatus,
    DateTime? startTime,
    DateTime? endTime,
    String? exportManifest,
    String? tableArn,
    String? tableId,
    DateTime? exportTime,
    String? clientToken,
    String? s3Bucket,
    String? s3BucketOwner,
    String? s3Prefix,
    _i3.S3SseAlgorithm? s3SseAlgorithm,
    String? s3SseKmsKeyId,
    String? failureCode,
    String? failureMessage,
    _i4.ExportFormat? exportFormat,
    _i5.Int64? billedSizeBytes,
    _i5.Int64? itemCount,
  }) {
    return _$ExportDescription._(
      exportArn: exportArn,
      exportStatus: exportStatus,
      startTime: startTime,
      endTime: endTime,
      exportManifest: exportManifest,
      tableArn: tableArn,
      tableId: tableId,
      exportTime: exportTime,
      clientToken: clientToken,
      s3Bucket: s3Bucket,
      s3BucketOwner: s3BucketOwner,
      s3Prefix: s3Prefix,
      s3SseAlgorithm: s3SseAlgorithm,
      s3SseKmsKeyId: s3SseKmsKeyId,
      failureCode: failureCode,
      failureMessage: failureMessage,
      exportFormat: exportFormat,
      billedSizeBytes: billedSizeBytes,
      itemCount: itemCount,
    );
  }

  /// Represents the properties of the exported table.
  factory ExportDescription.build(
      [void Function(ExportDescriptionBuilder) updates]) = _$ExportDescription;

  const ExportDescription._();

  static const List<_i6.SmithySerializer<ExportDescription>> serializers = [
    ExportDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExportDescriptionBuilder b) {}

  /// The Amazon Resource Name (ARN) of the table export.
  String? get exportArn;

  /// Export can be in one of the following states: IN_PROGRESS, COMPLETED, or FAILED.
  _i2.ExportStatus? get exportStatus;

  /// The time at which the export task began.
  DateTime? get startTime;

  /// The time at which the export task completed.
  DateTime? get endTime;

  /// The name of the manifest file for the export task.
  String? get exportManifest;

  /// The Amazon Resource Name (ARN) of the table that was exported.
  String? get tableArn;

  /// Unique ID of the table that was exported.
  String? get tableId;

  /// Point in time from which table data was exported.
  DateTime? get exportTime;

  /// The client token that was provided for the export task. A client token makes calls to `ExportTableToPointInTimeInput` idempotent, meaning that multiple identical calls have the same effect as one single call.
  String? get clientToken;

  /// The name of the Amazon S3 bucket containing the export.
  String? get s3Bucket;

  /// The ID of the Amazon Web Services account that owns the bucket containing the export.
  String? get s3BucketOwner;

  /// The Amazon S3 bucket prefix used as the file name and path of the exported snapshot.
  String? get s3Prefix;

  /// Type of encryption used on the bucket where export data is stored. Valid values for `S3SseAlgorithm` are:
  ///
  /// *   `AES256` \- server-side encryption with Amazon S3 managed keys
  ///
  /// *   `KMS` \- server-side encryption with KMS managed keys
  _i3.S3SseAlgorithm? get s3SseAlgorithm;

  /// The ID of the KMS managed key used to encrypt the S3 bucket where export data is stored (if applicable).
  String? get s3SseKmsKeyId;

  /// Status code for the result of the failed export.
  String? get failureCode;

  /// Export failure reason description.
  String? get failureMessage;

  /// The format of the exported data. Valid values for `ExportFormat` are `DYNAMODB_JSON` or `ION`.
  _i4.ExportFormat? get exportFormat;

  /// The billable size of the table export.
  _i5.Int64? get billedSizeBytes;

  /// The number of items exported.
  _i5.Int64? get itemCount;
  @override
  List<Object?> get props => [
        exportArn,
        exportStatus,
        startTime,
        endTime,
        exportManifest,
        tableArn,
        tableId,
        exportTime,
        clientToken,
        s3Bucket,
        s3BucketOwner,
        s3Prefix,
        s3SseAlgorithm,
        s3SseKmsKeyId,
        failureCode,
        failureMessage,
        exportFormat,
        billedSizeBytes,
        itemCount,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExportDescription')
      ..add(
        'exportArn',
        exportArn,
      )
      ..add(
        'exportStatus',
        exportStatus,
      )
      ..add(
        'startTime',
        startTime,
      )
      ..add(
        'endTime',
        endTime,
      )
      ..add(
        'exportManifest',
        exportManifest,
      )
      ..add(
        'tableArn',
        tableArn,
      )
      ..add(
        'tableId',
        tableId,
      )
      ..add(
        'exportTime',
        exportTime,
      )
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        's3Bucket',
        s3Bucket,
      )
      ..add(
        's3BucketOwner',
        s3BucketOwner,
      )
      ..add(
        's3Prefix',
        s3Prefix,
      )
      ..add(
        's3SseAlgorithm',
        s3SseAlgorithm,
      )
      ..add(
        's3SseKmsKeyId',
        s3SseKmsKeyId,
      )
      ..add(
        'failureCode',
        failureCode,
      )
      ..add(
        'failureMessage',
        failureMessage,
      )
      ..add(
        'exportFormat',
        exportFormat,
      )
      ..add(
        'billedSizeBytes',
        billedSizeBytes,
      )
      ..add(
        'itemCount',
        itemCount,
      );
    return helper.toString();
  }
}

class ExportDescriptionAwsJson10Serializer
    extends _i6.StructuredSmithySerializer<ExportDescription> {
  const ExportDescriptionAwsJson10Serializer() : super('ExportDescription');

  @override
  Iterable<Type> get types => const [
        ExportDescription,
        _$ExportDescription,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ExportDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ExportArn':
          result.exportArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ExportStatus':
          result.exportStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ExportStatus),
          ) as _i2.ExportStatus);
        case 'StartTime':
          result.startTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'EndTime':
          result.endTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ExportManifest':
          result.exportManifest = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TableArn':
          result.tableArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TableId':
          result.tableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ExportTime':
          result.exportTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'S3Bucket':
          result.s3Bucket = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'S3BucketOwner':
          result.s3BucketOwner = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'S3Prefix':
          result.s3Prefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'S3SseAlgorithm':
          result.s3SseAlgorithm = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.S3SseAlgorithm),
          ) as _i3.S3SseAlgorithm);
        case 'S3SseKmsKeyId':
          result.s3SseKmsKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'FailureCode':
          result.failureCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'FailureMessage':
          result.failureMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ExportFormat':
          result.exportFormat = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ExportFormat),
          ) as _i4.ExportFormat);
        case 'BilledSizeBytes':
          result.billedSizeBytes = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.Int64),
          ) as _i5.Int64);
        case 'ItemCount':
          result.itemCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.Int64),
          ) as _i5.Int64);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ExportDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ExportDescription(
      :exportArn,
      :exportStatus,
      :startTime,
      :endTime,
      :exportManifest,
      :tableArn,
      :tableId,
      :exportTime,
      :clientToken,
      :s3Bucket,
      :s3BucketOwner,
      :s3Prefix,
      :s3SseAlgorithm,
      :s3SseKmsKeyId,
      :failureCode,
      :failureMessage,
      :exportFormat,
      :billedSizeBytes,
      :itemCount
    ) = object;
    if (exportArn != null) {
      result$
        ..add('ExportArn')
        ..add(serializers.serialize(
          exportArn,
          specifiedType: const FullType(String),
        ));
    }
    if (exportStatus != null) {
      result$
        ..add('ExportStatus')
        ..add(serializers.serialize(
          exportStatus,
          specifiedType: const FullType(_i2.ExportStatus),
        ));
    }
    if (startTime != null) {
      result$
        ..add('StartTime')
        ..add(serializers.serialize(
          startTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (endTime != null) {
      result$
        ..add('EndTime')
        ..add(serializers.serialize(
          endTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (exportManifest != null) {
      result$
        ..add('ExportManifest')
        ..add(serializers.serialize(
          exportManifest,
          specifiedType: const FullType(String),
        ));
    }
    if (tableArn != null) {
      result$
        ..add('TableArn')
        ..add(serializers.serialize(
          tableArn,
          specifiedType: const FullType(String),
        ));
    }
    if (tableId != null) {
      result$
        ..add('TableId')
        ..add(serializers.serialize(
          tableId,
          specifiedType: const FullType(String),
        ));
    }
    if (exportTime != null) {
      result$
        ..add('ExportTime')
        ..add(serializers.serialize(
          exportTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (clientToken != null) {
      result$
        ..add('ClientToken')
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (s3Bucket != null) {
      result$
        ..add('S3Bucket')
        ..add(serializers.serialize(
          s3Bucket,
          specifiedType: const FullType(String),
        ));
    }
    if (s3BucketOwner != null) {
      result$
        ..add('S3BucketOwner')
        ..add(serializers.serialize(
          s3BucketOwner,
          specifiedType: const FullType(String),
        ));
    }
    if (s3Prefix != null) {
      result$
        ..add('S3Prefix')
        ..add(serializers.serialize(
          s3Prefix,
          specifiedType: const FullType(String),
        ));
    }
    if (s3SseAlgorithm != null) {
      result$
        ..add('S3SseAlgorithm')
        ..add(serializers.serialize(
          s3SseAlgorithm,
          specifiedType: const FullType(_i3.S3SseAlgorithm),
        ));
    }
    if (s3SseKmsKeyId != null) {
      result$
        ..add('S3SseKmsKeyId')
        ..add(serializers.serialize(
          s3SseKmsKeyId,
          specifiedType: const FullType(String),
        ));
    }
    if (failureCode != null) {
      result$
        ..add('FailureCode')
        ..add(serializers.serialize(
          failureCode,
          specifiedType: const FullType(String),
        ));
    }
    if (failureMessage != null) {
      result$
        ..add('FailureMessage')
        ..add(serializers.serialize(
          failureMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (exportFormat != null) {
      result$
        ..add('ExportFormat')
        ..add(serializers.serialize(
          exportFormat,
          specifiedType: const FullType(_i4.ExportFormat),
        ));
    }
    if (billedSizeBytes != null) {
      result$
        ..add('BilledSizeBytes')
        ..add(serializers.serialize(
          billedSizeBytes,
          specifiedType: const FullType(_i5.Int64),
        ));
    }
    if (itemCount != null) {
      result$
        ..add('ItemCount')
        ..add(serializers.serialize(
          itemCount,
          specifiedType: const FullType(_i5.Int64),
        ));
    }
    return result$;
  }
}
