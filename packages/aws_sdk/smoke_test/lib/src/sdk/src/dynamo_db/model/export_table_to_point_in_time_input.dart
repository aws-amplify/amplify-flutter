// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.export_table_to_point_in_time_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_format.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/s3_sse_algorithm.dart'
    as _i3;

part 'export_table_to_point_in_time_input.g.dart';

abstract class ExportTableToPointInTimeInput
    with
        _i1.HttpInput<ExportTableToPointInTimeInput>,
        _i2.AWSEquatable<ExportTableToPointInTimeInput>
    implements
        Built<ExportTableToPointInTimeInput,
            ExportTableToPointInTimeInputBuilder> {
  factory ExportTableToPointInTimeInput({
    required String tableArn,
    DateTime? exportTime,
    String? clientToken,
    required String s3Bucket,
    String? s3BucketOwner,
    String? s3Prefix,
    _i3.S3SseAlgorithm? s3SseAlgorithm,
    String? s3SseKmsKeyId,
    _i4.ExportFormat? exportFormat,
  }) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    return _$ExportTableToPointInTimeInput._(
      tableArn: tableArn,
      exportTime: exportTime,
      clientToken: clientToken,
      s3Bucket: s3Bucket,
      s3BucketOwner: s3BucketOwner,
      s3Prefix: s3Prefix,
      s3SseAlgorithm: s3SseAlgorithm,
      s3SseKmsKeyId: s3SseKmsKeyId,
      exportFormat: exportFormat,
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

  static const List<_i1.SmithySerializer<ExportTableToPointInTimeInput>>
      serializers = [ExportTableToPointInTimeInputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExportTableToPointInTimeInputBuilder b) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
  }

  /// The Amazon Resource Name (ARN) associated with the table to export.
  String get tableArn;

  /// Time in the past from which to export table data, counted in seconds from the start of the Unix epoch. The table export will be a snapshot of the table's state at this point in time.
  DateTime? get exportTime;

  /// Providing a `ClientToken` makes the call to `ExportTableToPointInTimeInput` idempotent, meaning that multiple identical calls have the same effect as one single call.
  ///
  /// A client token is valid for 8 hours after the first request that uses it is completed. After 8 hours, any request with the same client token is treated as a new request. Do not resubmit the same request with the same client token for more than 8 hours, or the result might not be idempotent.
  ///
  /// If you submit a request with the same client token but a change in other parameters within the 8-hour idempotency window, DynamoDB returns an `ImportConflictException`.
  String? get clientToken;

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
  _i3.S3SseAlgorithm? get s3SseAlgorithm;

  /// The ID of the KMS managed key used to encrypt the S3 bucket where export data will be stored (if applicable).
  String? get s3SseKmsKeyId;

  /// The format for the exported data. Valid values for `ExportFormat` are `DYNAMODB_JSON` or `ION`.
  _i4.ExportFormat? get exportFormat;
  @override
  ExportTableToPointInTimeInput getPayload() => this;
  @override
  List<Object?> get props => [
        tableArn,
        exportTime,
        clientToken,
        s3Bucket,
        s3BucketOwner,
        s3Prefix,
        s3SseAlgorithm,
        s3SseKmsKeyId,
        exportFormat,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExportTableToPointInTimeInput')
      ..add(
        'tableArn',
        tableArn,
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
        'exportFormat',
        exportFormat,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TableArn':
          result.tableArn = (serializers.deserialize(
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
        case 'ExportFormat':
          result.exportFormat = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ExportFormat),
          ) as _i4.ExportFormat);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ExportTableToPointInTimeInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ExportTableToPointInTimeInput(
      :tableArn,
      :exportTime,
      :clientToken,
      :s3Bucket,
      :s3BucketOwner,
      :s3Prefix,
      :s3SseAlgorithm,
      :s3SseKmsKeyId,
      :exportFormat
    ) = object;
    result$.addAll([
      'TableArn',
      serializers.serialize(
        tableArn,
        specifiedType: const FullType(String),
      ),
      'S3Bucket',
      serializers.serialize(
        s3Bucket,
        specifiedType: const FullType(String),
      ),
    ]);
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
    if (exportFormat != null) {
      result$
        ..add('ExportFormat')
        ..add(serializers.serialize(
          exportFormat,
          specifiedType: const FullType(_i4.ExportFormat),
        ));
    }
    return result$;
  }
}
