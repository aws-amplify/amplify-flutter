// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.export_table_to_point_in_time_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_format.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/s3_sse_algorithm.dart'
    as _i4;

part 'export_table_to_point_in_time_input.g.dart';

abstract class ExportTableToPointInTimeInput
    with
        _i1.HttpInput<ExportTableToPointInTimeInput>,
        _i2.AWSEquatable<ExportTableToPointInTimeInput>
    implements
        Built<ExportTableToPointInTimeInput,
            ExportTableToPointInTimeInputBuilder> {
  factory ExportTableToPointInTimeInput({
    String? clientToken,
    _i3.ExportFormat? exportFormat,
    DateTime? exportTime,
    required String s3Bucket,
    String? s3BucketOwner,
    String? s3Prefix,
    _i4.S3SseAlgorithm? s3SseAlgorithm,
    String? s3SseKmsKeyId,
    required String tableArn,
  }) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    return _$ExportTableToPointInTimeInput._(
      clientToken: clientToken,
      exportFormat: exportFormat,
      exportTime: exportTime,
      s3Bucket: s3Bucket,
      s3BucketOwner: s3BucketOwner,
      s3Prefix: s3Prefix,
      s3SseAlgorithm: s3SseAlgorithm,
      s3SseKmsKeyId: s3SseKmsKeyId,
      tableArn: tableArn,
    );
  }

  factory ExportTableToPointInTimeInput.build(
          [void Function(ExportTableToPointInTimeInputBuilder) updates]) =
      _$ExportTableToPointInTimeInput;

  const ExportTableToPointInTimeInput._();

  factory ExportTableToPointInTimeInput.fromRequest(
    ExportTableToPointInTimeInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ExportTableToPointInTimeInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExportTableToPointInTimeInputBuilder b) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
  }

  /// Providing a `ClientToken` makes the call to `ExportTableToPointInTimeInput` idempotent, meaning that multiple identical calls have the same effect as one single call.
  ///
  /// A client token is valid for 8 hours after the first request that uses it is completed. After 8 hours, any request with the same client token is treated as a new request. Do not resubmit the same request with the same client token for more than 8 hours, or the result might not be idempotent.
  ///
  /// If you submit a request with the same client token but a change in other parameters within the 8-hour idempotency window, DynamoDB returns an `ImportConflictException`.
  String? get clientToken;

  /// The format for the exported data. Valid values for `ExportFormat` are `DYNAMODB_JSON` or `ION`.
  _i3.ExportFormat? get exportFormat;

  /// Time in the past from which to export table data, counted in seconds from the start of the Unix epoch. The table export will be a snapshot of the table's state at this point in time.
  DateTime? get exportTime;

  /// The name of the Amazon S3 bucket to export the snapshot to.
  String get s3Bucket;

  /// The ID of the Amazon Web Services account that owns the bucket the export will be stored in.
  String? get s3BucketOwner;

  /// The Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.
  String? get s3Prefix;

  /// Type of encryption used on the bucket where export data will be stored. Valid values for `S3SseAlgorithm` are:
  ///
  /// *   `AES256` \- server-side encryption with Amazon S3 managed keys
  ///
  /// *   `KMS` \- server-side encryption with KMS managed keys
  _i4.S3SseAlgorithm? get s3SseAlgorithm;

  /// The ID of the KMS managed key used to encrypt the S3 bucket where export data will be stored (if applicable).
  String? get s3SseKmsKeyId;

  /// The Amazon Resource Name (ARN) associated with the table to export.
  String get tableArn;
  @override
  ExportTableToPointInTimeInput getPayload() => this;
  @override
  List<Object?> get props => [
        clientToken,
        exportFormat,
        exportTime,
        s3Bucket,
        s3BucketOwner,
        s3Prefix,
        s3SseAlgorithm,
        s3SseKmsKeyId,
        tableArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExportTableToPointInTimeInput');
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'exportFormat',
      exportFormat,
    );
    helper.add(
      'exportTime',
      exportTime,
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
      'tableArn',
      tableArn,
    );
    return helper.toString();
  }
}

class ExportTableToPointInTimeInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<ExportTableToPointInTimeInput> {
  const ExportTableToPointInTimeInputAwsJson10Serializer()
      : super('ExportTableToPointInTimeInput');

  @override
  Iterable<Type> get types => const [
        ExportTableToPointInTimeInput,
        _$ExportTableToPointInTimeInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ExportTableToPointInTimeInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportTableToPointInTimeInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ExportFormat':
          if (value != null) {
            result.exportFormat = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ExportFormat),
            ) as _i3.ExportFormat);
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
        case 'S3Bucket':
          result.s3Bucket = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
              specifiedType: const FullType(_i4.S3SseAlgorithm),
            ) as _i4.S3SseAlgorithm);
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
        case 'TableArn':
          result.tableArn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as ExportTableToPointInTimeInput);
    final result = <Object?>[
      'S3Bucket',
      serializers.serialize(
        payload.s3Bucket,
        specifiedType: const FullType(String),
      ),
      'TableArn',
      serializers.serialize(
        payload.tableArn,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.clientToken != null) {
      result
        ..add('ClientToken')
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.exportFormat != null) {
      result
        ..add('ExportFormat')
        ..add(serializers.serialize(
          payload.exportFormat!,
          specifiedType: const FullType(_i3.ExportFormat),
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
          specifiedType: const FullType(_i4.S3SseAlgorithm),
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
    return result;
  }
}
