// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.import_table_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/input_compression_type.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/input_format.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/input_format_options.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/s3_bucket_source.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_creation_parameters.dart'
    as _i8;

part 'import_table_description.g.dart';

/// Represents the properties of the table being imported into.
abstract class ImportTableDescription
    with _i1.AWSEquatable<ImportTableDescription>
    implements Built<ImportTableDescription, ImportTableDescriptionBuilder> {
  /// Represents the properties of the table being imported into.
  factory ImportTableDescription({
    String? importArn,
    _i2.ImportStatus? importStatus,
    String? tableArn,
    String? tableId,
    String? clientToken,
    _i3.S3BucketSource? s3BucketSource,
    _i4.Int64? errorCount,
    String? cloudWatchLogGroupArn,
    _i5.InputFormat? inputFormat,
    _i6.InputFormatOptions? inputFormatOptions,
    _i7.InputCompressionType? inputCompressionType,
    _i8.TableCreationParameters? tableCreationParameters,
    DateTime? startTime,
    DateTime? endTime,
    _i4.Int64? processedSizeBytes,
    _i4.Int64? processedItemCount,
    _i4.Int64? importedItemCount,
    String? failureCode,
    String? failureMessage,
  }) {
    errorCount ??= _i4.Int64.ZERO;
    processedItemCount ??= _i4.Int64.ZERO;
    importedItemCount ??= _i4.Int64.ZERO;
    return _$ImportTableDescription._(
      importArn: importArn,
      importStatus: importStatus,
      tableArn: tableArn,
      tableId: tableId,
      clientToken: clientToken,
      s3BucketSource: s3BucketSource,
      errorCount: errorCount,
      cloudWatchLogGroupArn: cloudWatchLogGroupArn,
      inputFormat: inputFormat,
      inputFormatOptions: inputFormatOptions,
      inputCompressionType: inputCompressionType,
      tableCreationParameters: tableCreationParameters,
      startTime: startTime,
      endTime: endTime,
      processedSizeBytes: processedSizeBytes,
      processedItemCount: processedItemCount,
      importedItemCount: importedItemCount,
      failureCode: failureCode,
      failureMessage: failureMessage,
    );
  }

  /// Represents the properties of the table being imported into.
  factory ImportTableDescription.build(
          [void Function(ImportTableDescriptionBuilder) updates]) =
      _$ImportTableDescription;

  const ImportTableDescription._();

  static const List<_i9.SmithySerializer> serializers = [
    ImportTableDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportTableDescriptionBuilder b) {
    b.errorCount = _i4.Int64.ZERO;
    b.processedItemCount = _i4.Int64.ZERO;
    b.importedItemCount = _i4.Int64.ZERO;
  }

  /// The Amazon Resource Number (ARN) corresponding to the import request.
  String? get importArn;

  /// The status of the import.
  _i2.ImportStatus? get importStatus;

  /// The Amazon Resource Number (ARN) of the table being imported into.
  String? get tableArn;

  /// The table id corresponding to the table created by import table process.
  String? get tableId;

  /// The client token that was provided for the import task. Reusing the client token on retry makes a call to `ImportTable` idempotent.
  String? get clientToken;

  /// Values for the S3 bucket the source file is imported from. Includes bucket name (required), key prefix (optional) and bucket account owner ID (optional).
  _i3.S3BucketSource? get s3BucketSource;

  /// The number of errors occurred on importing the source file into the target table.
  _i4.Int64 get errorCount;

  /// The Amazon Resource Number (ARN) of the Cloudwatch Log Group associated with the target table.
  String? get cloudWatchLogGroupArn;

  /// The format of the source data going into the target table.
  _i5.InputFormat? get inputFormat;

  /// The format options for the data that was imported into the target table. There is one value, CsvOption.
  _i6.InputFormatOptions? get inputFormatOptions;

  /// The compression options for the data that has been imported into the target table. The values are NONE, GZIP, or ZSTD.
  _i7.InputCompressionType? get inputCompressionType;

  /// The parameters for the new table that is being imported into.
  _i8.TableCreationParameters? get tableCreationParameters;

  /// The time when this import task started.
  DateTime? get startTime;

  /// The time at which the creation of the table associated with this import task completed.
  DateTime? get endTime;

  /// The total size of data processed from the source file, in Bytes.
  _i4.Int64? get processedSizeBytes;

  /// The total number of items processed from the source file.
  _i4.Int64 get processedItemCount;

  /// The number of items successfully imported into the new table.
  _i4.Int64 get importedItemCount;

  /// The error code corresponding to the failure that the import job ran into during execution.
  String? get failureCode;

  /// The error message corresponding to the failure that the import job ran into during execution.
  String? get failureMessage;
  @override
  List<Object?> get props => [
        importArn,
        importStatus,
        tableArn,
        tableId,
        clientToken,
        s3BucketSource,
        errorCount,
        cloudWatchLogGroupArn,
        inputFormat,
        inputFormatOptions,
        inputCompressionType,
        tableCreationParameters,
        startTime,
        endTime,
        processedSizeBytes,
        processedItemCount,
        importedItemCount,
        failureCode,
        failureMessage,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportTableDescription');
    helper.add(
      'importArn',
      importArn,
    );
    helper.add(
      'importStatus',
      importStatus,
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
      'clientToken',
      clientToken,
    );
    helper.add(
      's3BucketSource',
      s3BucketSource,
    );
    helper.add(
      'errorCount',
      errorCount,
    );
    helper.add(
      'cloudWatchLogGroupArn',
      cloudWatchLogGroupArn,
    );
    helper.add(
      'inputFormat',
      inputFormat,
    );
    helper.add(
      'inputFormatOptions',
      inputFormatOptions,
    );
    helper.add(
      'inputCompressionType',
      inputCompressionType,
    );
    helper.add(
      'tableCreationParameters',
      tableCreationParameters,
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
      'processedSizeBytes',
      processedSizeBytes,
    );
    helper.add(
      'processedItemCount',
      processedItemCount,
    );
    helper.add(
      'importedItemCount',
      importedItemCount,
    );
    helper.add(
      'failureCode',
      failureCode,
    );
    helper.add(
      'failureMessage',
      failureMessage,
    );
    return helper.toString();
  }
}

class ImportTableDescriptionAwsJson10Serializer
    extends _i9.StructuredSmithySerializer<ImportTableDescription> {
  const ImportTableDescriptionAwsJson10Serializer()
      : super('ImportTableDescription');

  @override
  Iterable<Type> get types => const [
        ImportTableDescription,
        _$ImportTableDescription,
      ];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ImportTableDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportTableDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
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
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'S3BucketSource':
          if (value != null) {
            result.s3BucketSource.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.S3BucketSource),
            ) as _i3.S3BucketSource));
          }
          break;
        case 'ErrorCount':
          result.errorCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i4.Int64),
          ) as _i4.Int64);
          break;
        case 'CloudWatchLogGroupArn':
          if (value != null) {
            result.cloudWatchLogGroupArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'InputFormat':
          if (value != null) {
            result.inputFormat = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.InputFormat),
            ) as _i5.InputFormat);
          }
          break;
        case 'InputFormatOptions':
          if (value != null) {
            result.inputFormatOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.InputFormatOptions),
            ) as _i6.InputFormatOptions));
          }
          break;
        case 'InputCompressionType':
          if (value != null) {
            result.inputCompressionType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.InputCompressionType),
            ) as _i7.InputCompressionType);
          }
          break;
        case 'TableCreationParameters':
          if (value != null) {
            result.tableCreationParameters.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.TableCreationParameters),
            ) as _i8.TableCreationParameters));
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
        case 'ProcessedSizeBytes':
          if (value != null) {
            result.processedSizeBytes = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.Int64),
            ) as _i4.Int64);
          }
          break;
        case 'ProcessedItemCount':
          result.processedItemCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i4.Int64),
          ) as _i4.Int64);
          break;
        case 'ImportedItemCount':
          result.importedItemCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i4.Int64),
          ) as _i4.Int64);
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
    final payload = (object as ImportTableDescription);
    final result = <Object?>[
      'ErrorCount',
      serializers.serialize(
        payload.errorCount,
        specifiedType: const FullType(_i4.Int64),
      ),
      'ProcessedItemCount',
      serializers.serialize(
        payload.processedItemCount,
        specifiedType: const FullType(_i4.Int64),
      ),
      'ImportedItemCount',
      serializers.serialize(
        payload.importedItemCount,
        specifiedType: const FullType(_i4.Int64),
      ),
    ];
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
    if (payload.clientToken != null) {
      result
        ..add('ClientToken')
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.s3BucketSource != null) {
      result
        ..add('S3BucketSource')
        ..add(serializers.serialize(
          payload.s3BucketSource!,
          specifiedType: const FullType(_i3.S3BucketSource),
        ));
    }
    if (payload.cloudWatchLogGroupArn != null) {
      result
        ..add('CloudWatchLogGroupArn')
        ..add(serializers.serialize(
          payload.cloudWatchLogGroupArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.inputFormat != null) {
      result
        ..add('InputFormat')
        ..add(serializers.serialize(
          payload.inputFormat!,
          specifiedType: const FullType(_i5.InputFormat),
        ));
    }
    if (payload.inputFormatOptions != null) {
      result
        ..add('InputFormatOptions')
        ..add(serializers.serialize(
          payload.inputFormatOptions!,
          specifiedType: const FullType(_i6.InputFormatOptions),
        ));
    }
    if (payload.inputCompressionType != null) {
      result
        ..add('InputCompressionType')
        ..add(serializers.serialize(
          payload.inputCompressionType!,
          specifiedType: const FullType(_i7.InputCompressionType),
        ));
    }
    if (payload.tableCreationParameters != null) {
      result
        ..add('TableCreationParameters')
        ..add(serializers.serialize(
          payload.tableCreationParameters!,
          specifiedType: const FullType(_i8.TableCreationParameters),
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
    if (payload.processedSizeBytes != null) {
      result
        ..add('ProcessedSizeBytes')
        ..add(serializers.serialize(
          payload.processedSizeBytes!,
          specifiedType: const FullType(_i4.Int64),
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
    return result;
  }
}
