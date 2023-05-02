// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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

  static const List<_i6.SmithySerializer> serializers = [
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
    final helper = newBuiltValueToStringHelper('ExportDescription');
    helper.add(
      'exportArn',
      exportArn,
    );
    helper.add(
      'exportStatus',
      exportStatus,
    );
    helper.add(
      'startTime',
      startTime,
    );
    helper.add(
      'endTime',
      endTime,
    );
    helper.add(
      'exportManifest',
      exportManifest,
    );
    helper.add(
      'tableArn',
      tableArn,
    );
    helper.add(
      'tableId',
      tableId,
    );
    helper.add(
      'exportTime',
      exportTime,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      's3Bucket',
      s3Bucket,
    );
    helper.add(
      's3BucketOwner',
      s3BucketOwner,
    );
    helper.add(
      's3Prefix',
      s3Prefix,
    );
    helper.add(
      's3SseAlgorithm',
      s3SseAlgorithm,
    );
    helper.add(
      's3SseKmsKeyId',
      s3SseKmsKeyId,
    );
    helper.add(
      'failureCode',
      failureCode,
    );
    helper.add(
      'failureMessage',
      failureMessage,
    );
    helper.add(
      'exportFormat',
      exportFormat,
    );
    helper.add(
      'billedSizeBytes',
      billedSizeBytes,
    );
    helper.add(
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
      switch (key) {
        case 'ExportArn':
          if (value != null) {
            result.exportArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ExportStatus':
          if (value != null) {
            result.exportStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ExportStatus),
            ) as _i2.ExportStatus);
          }
          break;
        case 'StartTime':
          if (value != null) {
            result.startTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'EndTime':
          if (value != null) {
            result.endTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'ExportManifest':
          if (value != null) {
            result.exportManifest = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TableArn':
          if (value != null) {
            result.tableArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TableId':
          if (value != null) {
            result.tableId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ExportTime':
          if (value != null) {
            result.exportTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'S3Bucket':
          if (value != null) {
            result.s3Bucket = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'S3BucketOwner':
          if (value != null) {
            result.s3BucketOwner = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'S3Prefix':
          if (value != null) {
            result.s3Prefix = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'S3SseAlgorithm':
          if (value != null) {
            result.s3SseAlgorithm = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.S3SseAlgorithm),
            ) as _i3.S3SseAlgorithm);
          }
          break;
        case 'S3SseKmsKeyId':
          if (value != null) {
            result.s3SseKmsKeyId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'FailureCode':
          if (value != null) {
            result.failureCode = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'FailureMessage':
          if (value != null) {
            result.failureMessage = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ExportFormat':
          if (value != null) {
            result.exportFormat = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ExportFormat),
            ) as _i4.ExportFormat);
          }
          break;
        case 'BilledSizeBytes':
          if (value != null) {
            result.billedSizeBytes = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.Int64),
            ) as _i5.Int64);
          }
          break;
        case 'ItemCount':
          if (value != null) {
            result.itemCount = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.Int64),
            ) as _i5.Int64);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ExportDescription);
    final result = <Object?>[];
    if (payload.exportArn != null) {
      result
        ..add('ExportArn')
        ..add(serializers.serialize(
          payload.exportArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.exportStatus != null) {
      result
        ..add('ExportStatus')
        ..add(serializers.serialize(
          payload.exportStatus!,
          specifiedType: const FullType(_i2.ExportStatus),
        ));
    }
    if (payload.startTime != null) {
      result
        ..add('StartTime')
        ..add(serializers.serialize(
          payload.startTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.endTime != null) {
      result
        ..add('EndTime')
        ..add(serializers.serialize(
          payload.endTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.exportManifest != null) {
      result
        ..add('ExportManifest')
        ..add(serializers.serialize(
          payload.exportManifest!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tableArn != null) {
      result
        ..add('TableArn')
        ..add(serializers.serialize(
          payload.tableArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tableId != null) {
      result
        ..add('TableId')
        ..add(serializers.serialize(
          payload.tableId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.exportTime != null) {
      result
        ..add('ExportTime')
        ..add(serializers.serialize(
          payload.exportTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.clientToken != null) {
      result
        ..add('ClientToken')
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.s3Bucket != null) {
      result
        ..add('S3Bucket')
        ..add(serializers.serialize(
          payload.s3Bucket!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.s3BucketOwner != null) {
      result
        ..add('S3BucketOwner')
        ..add(serializers.serialize(
          payload.s3BucketOwner!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.s3Prefix != null) {
      result
        ..add('S3Prefix')
        ..add(serializers.serialize(
          payload.s3Prefix!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.s3SseAlgorithm != null) {
      result
        ..add('S3SseAlgorithm')
        ..add(serializers.serialize(
          payload.s3SseAlgorithm!,
          specifiedType: const FullType(_i3.S3SseAlgorithm),
        ));
    }
    if (payload.s3SseKmsKeyId != null) {
      result
        ..add('S3SseKmsKeyId')
        ..add(serializers.serialize(
          payload.s3SseKmsKeyId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.failureCode != null) {
      result
        ..add('FailureCode')
        ..add(serializers.serialize(
          payload.failureCode!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.failureMessage != null) {
      result
        ..add('FailureMessage')
        ..add(serializers.serialize(
          payload.failureMessage!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.exportFormat != null) {
      result
        ..add('ExportFormat')
        ..add(serializers.serialize(
          payload.exportFormat!,
          specifiedType: const FullType(_i4.ExportFormat),
        ));
    }
    if (payload.billedSizeBytes != null) {
      result
        ..add('BilledSizeBytes')
        ..add(serializers.serialize(
          payload.billedSizeBytes!,
          specifiedType: const FullType(_i5.Int64),
        ));
    }
    if (payload.itemCount != null) {
      result
        ..add('ItemCount')
        ..add(serializers.serialize(
          payload.itemCount!,
          specifiedType: const FullType(_i5.Int64),
        ));
    }
    return result;
  }
}
