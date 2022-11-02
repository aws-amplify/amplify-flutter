// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.import_table_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_status.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/input_compression_type.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/input_format.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/input_format_options.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/s3_bucket_source.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_creation_parameters.dart'
    as _i8;

part 'import_table_description.g.dart';

/// Represents the properties of the table being imported into.
abstract class ImportTableDescription
    with _i1.AWSEquatable<ImportTableDescription>
    implements Built<ImportTableDescription, ImportTableDescriptionBuilder> {
  /// Represents the properties of the table being imported into.
  factory ImportTableDescription({
    String? clientToken,
    String? cloudWatchLogGroupArn,
    DateTime? endTime,
    _i2.Int64? errorCount,
    String? failureCode,
    String? failureMessage,
    String? importArn,
    _i3.ImportStatus? importStatus,
    _i2.Int64? importedItemCount,
    _i4.InputCompressionType? inputCompressionType,
    _i5.InputFormat? inputFormat,
    _i6.InputFormatOptions? inputFormatOptions,
    _i2.Int64? processedItemCount,
    _i2.Int64? processedSizeBytes,
    _i7.S3BucketSource? s3BucketSource,
    DateTime? startTime,
    String? tableArn,
    _i8.TableCreationParameters? tableCreationParameters,
    String? tableId,
  }) {
    return _$ImportTableDescription._(
      clientToken: clientToken,
      cloudWatchLogGroupArn: cloudWatchLogGroupArn,
      endTime: endTime,
      errorCount: errorCount,
      failureCode: failureCode,
      failureMessage: failureMessage,
      importArn: importArn,
      importStatus: importStatus,
      importedItemCount: importedItemCount,
      inputCompressionType: inputCompressionType,
      inputFormat: inputFormat,
      inputFormatOptions: inputFormatOptions,
      processedItemCount: processedItemCount,
      processedSizeBytes: processedSizeBytes,
      s3BucketSource: s3BucketSource,
      startTime: startTime,
      tableArn: tableArn,
      tableCreationParameters: tableCreationParameters,
      tableId: tableId,
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
  static void _init(ImportTableDescriptionBuilder b) {}

  /// The client token that was provided for the import task. Reusing the client token on retry makes a call to `ImportTable` idempotent.
  String? get clientToken;

  /// The Amazon Resource Number (ARN) of the Cloudwatch Log Group associated with the target table.
  String? get cloudWatchLogGroupArn;

  /// The time at which the creation of the table associated with this import task completed.
  DateTime? get endTime;

  /// The number of errors occurred on importing the source file into the target table.
  _i2.Int64? get errorCount;

  /// The error code corresponding to the failure that the import job ran into during execution.
  String? get failureCode;

  /// The error message corresponding to the failure that the import job ran into during execution.
  String? get failureMessage;

  /// The Amazon Resource Number (ARN) corresponding to the import request.
  String? get importArn;

  /// The status of the import.
  _i3.ImportStatus? get importStatus;

  /// The number of items successfully imported into the new table.
  _i2.Int64? get importedItemCount;

  /// The compression options for the data that has been imported into the target table. The values are NONE, GZIP, or ZSTD.
  _i4.InputCompressionType? get inputCompressionType;

  /// The format of the source data going into the target table.
  _i5.InputFormat? get inputFormat;

  /// The format options for the data that was imported into the target table. There is one value, CsvOption.
  _i6.InputFormatOptions? get inputFormatOptions;

  /// The total number of items processed from the source file.
  _i2.Int64? get processedItemCount;

  /// The total size of data processed from the source file, in Bytes.
  _i2.Int64? get processedSizeBytes;

  /// Values for the S3 bucket the source file is imported from. Includes bucket name (required), key prefix (optional) and bucket account owner ID (optional).
  _i7.S3BucketSource? get s3BucketSource;

  /// The time when this import task started.
  DateTime? get startTime;

  /// The Amazon Resource Number (ARN) of the table being imported into.
  String? get tableArn;

  /// The parameters for the new table that is being imported into.
  _i8.TableCreationParameters? get tableCreationParameters;

  /// The table id corresponding to the table created by import table process.
  String? get tableId;
  @override
  List<Object?> get props => [
        clientToken,
        cloudWatchLogGroupArn,
        endTime,
        errorCount,
        failureCode,
        failureMessage,
        importArn,
        importStatus,
        importedItemCount,
        inputCompressionType,
        inputFormat,
        inputFormatOptions,
        processedItemCount,
        processedSizeBytes,
        s3BucketSource,
        startTime,
        tableArn,
        tableCreationParameters,
        tableId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportTableDescription');
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'cloudWatchLogGroupArn',
      cloudWatchLogGroupArn,
    );
    helper.add(
      'endTime',
      endTime,
    );
    helper.add(
      'errorCount',
      errorCount,
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
      'importArn',
      importArn,
    );
    helper.add(
      'importStatus',
      importStatus,
    );
    helper.add(
      'importedItemCount',
      importedItemCount,
    );
    helper.add(
      'inputCompressionType',
      inputCompressionType,
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
      'processedItemCount',
      processedItemCount,
    );
    helper.add(
      'processedSizeBytes',
      processedSizeBytes,
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
    helper.add(
      'tableCreationParameters',
      tableCreationParameters,
    );
    helper.add(
      'tableId',
      tableId,
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
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
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
        case 'ErrorCount':
          if (value != null) {
            result.errorCount = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
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
              specifiedType: const FullType(_i3.ImportStatus),
            ) as _i3.ImportStatus);
          }
          break;
        case 'ImportedItemCount':
          if (value != null) {
            result.importedItemCount = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'InputCompressionType':
          if (value != null) {
            result.inputCompressionType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.InputCompressionType),
            ) as _i4.InputCompressionType);
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
        case 'ProcessedItemCount':
          if (value != null) {
            result.processedItemCount = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'ProcessedSizeBytes':
          if (value != null) {
            result.processedSizeBytes = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'S3BucketSource':
          if (value != null) {
            result.s3BucketSource.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.S3BucketSource),
            ) as _i7.S3BucketSource));
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
        case 'TableCreationParameters':
          if (value != null) {
            result.tableCreationParameters.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.TableCreationParameters),
            ) as _i8.TableCreationParameters));
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
    final result = <Object?>[];
    if (payload.clientToken != null) {
      result
        ..add('ClientToken')
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
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
    if (payload.endTime != null) {
      result
        ..add('EndTime')
        ..add(serializers.serialize(
          payload.endTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.errorCount != null) {
      result
        ..add('ErrorCount')
        ..add(serializers.serialize(
          payload.errorCount!,
          specifiedType: const FullType(_i2.Int64),
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
          specifiedType: const FullType(_i3.ImportStatus),
        ));
    }
    if (payload.importedItemCount != null) {
      result
        ..add('ImportedItemCount')
        ..add(serializers.serialize(
          payload.importedItemCount!,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (payload.inputCompressionType != null) {
      result
        ..add('InputCompressionType')
        ..add(serializers.serialize(
          payload.inputCompressionType!,
          specifiedType: const FullType(_i4.InputCompressionType),
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
    if (payload.processedItemCount != null) {
      result
        ..add('ProcessedItemCount')
        ..add(serializers.serialize(
          payload.processedItemCount!,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (payload.processedSizeBytes != null) {
      result
        ..add('ProcessedSizeBytes')
        ..add(serializers.serialize(
          payload.processedSizeBytes!,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (payload.s3BucketSource != null) {
      result
        ..add('S3BucketSource')
        ..add(serializers.serialize(
          payload.s3BucketSource!,
          specifiedType: const FullType(_i7.S3BucketSource),
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
    if (payload.tableCreationParameters != null) {
      result
        ..add('TableCreationParameters')
        ..add(serializers.serialize(
          payload.tableCreationParameters!,
          specifiedType: const FullType(_i8.TableCreationParameters),
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
    return result;
  }
}
