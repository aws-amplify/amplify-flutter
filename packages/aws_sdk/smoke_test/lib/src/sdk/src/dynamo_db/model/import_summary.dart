// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.import_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/input_format.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/s3_bucket_source.dart'
    as _i4;

part 'import_summary.g.dart';

/// Summary information about the source file for the import.
abstract class ImportSummary
    with _i1.AWSEquatable<ImportSummary>
    implements Built<ImportSummary, ImportSummaryBuilder> {
  /// Summary information about the source file for the import.
  factory ImportSummary({
    String? cloudWatchLogGroupArn,
    DateTime? endTime,
    String? importArn,
    _i2.ImportStatus? importStatus,
    _i3.InputFormat? inputFormat,
    _i4.S3BucketSource? s3BucketSource,
    DateTime? startTime,
    String? tableArn,
  }) {
    return _$ImportSummary._(
      cloudWatchLogGroupArn: cloudWatchLogGroupArn,
      endTime: endTime,
      importArn: importArn,
      importStatus: importStatus,
      inputFormat: inputFormat,
      s3BucketSource: s3BucketSource,
      startTime: startTime,
      tableArn: tableArn,
    );
  }

  /// Summary information about the source file for the import.
  factory ImportSummary.build([void Function(ImportSummaryBuilder) updates]) =
      _$ImportSummary;

  const ImportSummary._();

  static const List<_i5.SmithySerializer> serializers = [
    ImportSummaryAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportSummaryBuilder b) {}

  /// The Amazon Resource Number (ARN) of the Cloudwatch Log Group associated with this import task.
  String? get cloudWatchLogGroupArn;

  /// The time at which this import task ended. (Does this include the successful complete creation of the table it was imported to?)
  DateTime? get endTime;

  /// The Amazon Resource Number (ARN) corresponding to the import request.
  String? get importArn;

  /// The status of the import operation.
  _i2.ImportStatus? get importStatus;

  /// The format of the source data. Valid values are `CSV`, `DYNAMODB_JSON` or `ION`.
  _i3.InputFormat? get inputFormat;

  /// The path and S3 bucket of the source file that is being imported. This includes the S3Bucket (required), S3KeyPrefix (optional) and S3BucketOwner (optional if the bucket is owned by the requester).
  _i4.S3BucketSource? get s3BucketSource;

  /// The time at which this import task began.
  DateTime? get startTime;

  /// The Amazon Resource Number (ARN) of the table being imported into.
  String? get tableArn;
  @override
  List<Object?> get props => [
        cloudWatchLogGroupArn,
        endTime,
        importArn,
        importStatus,
        inputFormat,
        s3BucketSource,
        startTime,
        tableArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportSummary');
    helper.add(
      'cloudWatchLogGroupArn',
      cloudWatchLogGroupArn,
    );
    helper.add(
      'endTime',
      endTime,
    );
    helper.add(
      'importArn',
      importArn,
    );
    helper.add(
      'importStatus',
      importStatus,
    );
    helper.add(
      'inputFormat',
      inputFormat,
    );
    helper.add(
      's3BucketSource',
      s3BucketSource,
    );
    helper.add(
      'startTime',
      startTime,
    );
    helper.add(
      'tableArn',
      tableArn,
    );
    return helper.toString();
  }
}

class ImportSummaryAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<ImportSummary> {
  const ImportSummaryAwsJson10Serializer() : super('ImportSummary');

  @override
  Iterable<Type> get types => const [
        ImportSummary,
        _$ImportSummary,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ImportSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'CloudWatchLogGroupArn':
          if (value != null) {
            result.cloudWatchLogGroupArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'ImportArn':
          if (value != null) {
            result.importArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ImportStatus':
          if (value != null) {
            result.importStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ImportStatus),
            ) as _i2.ImportStatus);
          }
          break;
        case 'InputFormat':
          if (value != null) {
            result.inputFormat = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.InputFormat),
            ) as _i3.InputFormat);
          }
          break;
        case 'S3BucketSource':
          if (value != null) {
            result.s3BucketSource.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.S3BucketSource),
            ) as _i4.S3BucketSource));
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
        case 'TableArn':
          if (value != null) {
            result.tableArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as ImportSummary);
    final result = <Object?>[];
    if (payload.cloudWatchLogGroupArn != null) {
      result
        ..add('CloudWatchLogGroupArn')
        ..add(serializers.serialize(
          payload.cloudWatchLogGroupArn!,
          specifiedType: const FullType(String),
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
    if (payload.importArn != null) {
      result
        ..add('ImportArn')
        ..add(serializers.serialize(
          payload.importArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.importStatus != null) {
      result
        ..add('ImportStatus')
        ..add(serializers.serialize(
          payload.importStatus!,
          specifiedType: const FullType(_i2.ImportStatus),
        ));
    }
    if (payload.inputFormat != null) {
      result
        ..add('InputFormat')
        ..add(serializers.serialize(
          payload.inputFormat!,
          specifiedType: const FullType(_i3.InputFormat),
        ));
    }
    if (payload.s3BucketSource != null) {
      result
        ..add('S3BucketSource')
        ..add(serializers.serialize(
          payload.s3BucketSource!,
          specifiedType: const FullType(_i4.S3BucketSource),
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
    if (payload.tableArn != null) {
      result
        ..add('TableArn')
        ..add(serializers.serialize(
          payload.tableArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
