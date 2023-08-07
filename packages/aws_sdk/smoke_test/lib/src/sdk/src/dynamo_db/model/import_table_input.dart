// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.import_table_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/input_compression_type.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/input_format.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/input_format_options.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/s3_bucket_source.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_creation_parameters.dart';

part 'import_table_input.g.dart';

abstract class ImportTableInput
    with _i1.HttpInput<ImportTableInput>, _i2.AWSEquatable<ImportTableInput>
    implements Built<ImportTableInput, ImportTableInputBuilder> {
  factory ImportTableInput({
    String? clientToken,
    required S3BucketSource s3BucketSource,
    required InputFormat inputFormat,
    InputFormatOptions? inputFormatOptions,
    InputCompressionType? inputCompressionType,
    required TableCreationParameters tableCreationParameters,
  }) {
    return _$ImportTableInput._(
      clientToken: clientToken,
      s3BucketSource: s3BucketSource,
      inputFormat: inputFormat,
      inputFormatOptions: inputFormatOptions,
      inputCompressionType: inputCompressionType,
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

  static const List<_i1.SmithySerializer<ImportTableInput>> serializers = [
    ImportTableInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportTableInputBuilder b) {
    b.clientToken = const bool.hasEnvironment('SMITHY_TEST')
        ? '00000000-0000-4000-8000-000000000000'
        : _i2.uuid(secure: true);
  }

  /// Providing a `ClientToken` makes the call to `ImportTableInput` idempotent, meaning that multiple identical calls have the same effect as one single call.
  ///
  /// A client token is valid for 8 hours after the first request that uses it is completed. After 8 hours, any request with the same client token is treated as a new request. Do not resubmit the same request with the same client token for more than 8 hours, or the result might not be idempotent.
  ///
  /// If you submit a request with the same client token but a change in other parameters within the 8-hour idempotency window, DynamoDB returns an `IdempotentParameterMismatch` exception.
  String? get clientToken;

  /// The S3 bucket that provides the source for the import.
  S3BucketSource get s3BucketSource;

  /// The format of the source data. Valid values for `ImportFormat` are `CSV`, `DYNAMODB_JSON` or `ION`.
  InputFormat get inputFormat;

  /// Additional properties that specify how the input is formatted,
  InputFormatOptions? get inputFormatOptions;

  /// Type of compression to be used on the input coming from the imported table.
  InputCompressionType? get inputCompressionType;

  /// Parameters for the table to import the data into.
  TableCreationParameters get tableCreationParameters;
  @override
  ImportTableInput getPayload() => this;
  @override
  List<Object?> get props => [
        clientToken,
        s3BucketSource,
        inputFormat,
        inputFormatOptions,
        inputCompressionType,
        tableCreationParameters,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportTableInput')
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        's3BucketSource',
        s3BucketSource,
      )
      ..add(
        'inputFormat',
        inputFormat,
      )
      ..add(
        'inputFormatOptions',
        inputFormatOptions,
      )
      ..add(
        'inputCompressionType',
        inputCompressionType,
      )
      ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'S3BucketSource':
          result.s3BucketSource.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(S3BucketSource),
          ) as S3BucketSource));
        case 'InputFormat':
          result.inputFormat = (serializers.deserialize(
            value,
            specifiedType: const FullType(InputFormat),
          ) as InputFormat);
        case 'InputFormatOptions':
          result.inputFormatOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InputFormatOptions),
          ) as InputFormatOptions));
        case 'InputCompressionType':
          result.inputCompressionType = (serializers.deserialize(
            value,
            specifiedType: const FullType(InputCompressionType),
          ) as InputCompressionType);
        case 'TableCreationParameters':
          result.tableCreationParameters.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TableCreationParameters),
          ) as TableCreationParameters));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ImportTableInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ImportTableInput(
      :clientToken,
      :s3BucketSource,
      :inputFormat,
      :inputFormatOptions,
      :inputCompressionType,
      :tableCreationParameters
    ) = object;
    result$.addAll([
      'S3BucketSource',
      serializers.serialize(
        s3BucketSource,
        specifiedType: const FullType(S3BucketSource),
      ),
      'InputFormat',
      serializers.serialize(
        inputFormat,
        specifiedType: const FullType(InputFormat),
      ),
      'TableCreationParameters',
      serializers.serialize(
        tableCreationParameters,
        specifiedType: const FullType(TableCreationParameters),
      ),
    ]);
    if (clientToken != null) {
      result$
        ..add('ClientToken')
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (inputFormatOptions != null) {
      result$
        ..add('InputFormatOptions')
        ..add(serializers.serialize(
          inputFormatOptions,
          specifiedType: const FullType(InputFormatOptions),
        ));
    }
    if (inputCompressionType != null) {
      result$
        ..add('InputCompressionType')
        ..add(serializers.serialize(
          inputCompressionType,
          specifiedType: const FullType(InputCompressionType),
        ));
    }
    return result$;
  }
}
