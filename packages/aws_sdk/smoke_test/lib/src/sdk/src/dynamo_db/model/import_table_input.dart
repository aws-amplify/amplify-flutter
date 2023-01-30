// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.import_table_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/input_compression_type.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/input_format.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/input_format_options.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/s3_bucket_source.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_creation_parameters.dart'
    as _i7;

part 'import_table_input.g.dart';

abstract class ImportTableInput
    with _i1.HttpInput<ImportTableInput>, _i2.AWSEquatable<ImportTableInput>
    implements Built<ImportTableInput, ImportTableInputBuilder> {
  factory ImportTableInput({
    String? clientToken,
    _i3.InputCompressionType? inputCompressionType,
    required _i4.InputFormat inputFormat,
    _i5.InputFormatOptions? inputFormatOptions,
    required _i6.S3BucketSource s3BucketSource,
    required _i7.TableCreationParameters tableCreationParameters,
  }) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    return _$ImportTableInput._(
      clientToken: clientToken,
      inputCompressionType: inputCompressionType,
      inputFormat: inputFormat,
      inputFormatOptions: inputFormatOptions,
      s3BucketSource: s3BucketSource,
      tableCreationParameters: tableCreationParameters,
    );
  }

  factory ImportTableInput.build(
      [void Function(ImportTableInputBuilder) updates]) = _$ImportTableInput;

  const ImportTableInput._();

  factory ImportTableInput.fromRequest(
    ImportTableInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ImportTableInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportTableInputBuilder b) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
  }

  /// Providing a `ClientToken` makes the call to `ImportTableInput` idempotent, meaning that multiple identical calls have the same effect as one single call.
  ///
  /// A client token is valid for 8 hours after the first request that uses it is completed. After 8 hours, any request with the same client token is treated as a new request. Do not resubmit the same request with the same client token for more than 8 hours, or the result might not be idempotent.
  ///
  /// If you submit a request with the same client token but a change in other parameters within the 8-hour idempotency window, DynamoDB returns an `IdempotentParameterMismatch` exception.
  String? get clientToken;

  /// Type of compression to be used on the input coming from the imported table.
  _i3.InputCompressionType? get inputCompressionType;

  /// The format of the source data. Valid values for `ImportFormat` are `CSV`, `DYNAMODB_JSON` or `ION`.
  _i4.InputFormat get inputFormat;

  /// Additional properties that specify how the input is formatted,
  _i5.InputFormatOptions? get inputFormatOptions;

  /// The S3 bucket that provides the source for the import.
  _i6.S3BucketSource get s3BucketSource;

  /// Parameters for the table to import the data into.
  _i7.TableCreationParameters get tableCreationParameters;
  @override
  ImportTableInput getPayload() => this;
  @override
  List<Object?> get props => [
        clientToken,
        inputCompressionType,
        inputFormat,
        inputFormatOptions,
        s3BucketSource,
        tableCreationParameters,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportTableInput');
    helper.add(
      'clientToken',
      clientToken,
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
      's3BucketSource',
      s3BucketSource,
    );
    helper.add(
      'tableCreationParameters',
      tableCreationParameters,
    );
    return helper.toString();
  }
}

class ImportTableInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<ImportTableInput> {
  const ImportTableInputAwsJson10Serializer() : super('ImportTableInput');

  @override
  Iterable<Type> get types => const [
        ImportTableInput,
        _$ImportTableInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ImportTableInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportTableInputBuilder();
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
        case 'InputCompressionType':
          if (value != null) {
            result.inputCompressionType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.InputCompressionType),
            ) as _i3.InputCompressionType);
          }
          break;
        case 'InputFormat':
          result.inputFormat = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i4.InputFormat),
          ) as _i4.InputFormat);
          break;
        case 'InputFormatOptions':
          if (value != null) {
            result.inputFormatOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.InputFormatOptions),
            ) as _i5.InputFormatOptions));
          }
          break;
        case 'S3BucketSource':
          result.s3BucketSource.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.S3BucketSource),
          ) as _i6.S3BucketSource));
          break;
        case 'TableCreationParameters':
          result.tableCreationParameters.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.TableCreationParameters),
          ) as _i7.TableCreationParameters));
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
    final payload = (object as ImportTableInput);
    final result = <Object?>[
      'InputFormat',
      serializers.serialize(
        payload.inputFormat,
        specifiedType: const FullType(_i4.InputFormat),
      ),
      'S3BucketSource',
      serializers.serialize(
        payload.s3BucketSource,
        specifiedType: const FullType(_i6.S3BucketSource),
      ),
      'TableCreationParameters',
      serializers.serialize(
        payload.tableCreationParameters,
        specifiedType: const FullType(_i7.TableCreationParameters),
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
    if (payload.inputCompressionType != null) {
      result
        ..add('InputCompressionType')
        ..add(serializers.serialize(
          payload.inputCompressionType!,
          specifiedType: const FullType(_i3.InputCompressionType),
        ));
    }
    if (payload.inputFormatOptions != null) {
      result
        ..add('InputFormatOptions')
        ..add(serializers.serialize(
          payload.inputFormatOptions!,
          specifiedType: const FullType(_i5.InputFormatOptions),
        ));
    }
    return result;
  }
}
