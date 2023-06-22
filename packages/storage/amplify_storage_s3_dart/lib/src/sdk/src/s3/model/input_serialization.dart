// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_storage_s3_dart.s3.model.input_serialization; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/compression_type.dart'
    as _i3;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/csv_input.dart'
    as _i2;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/json_input.dart'
    as _i4;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/parquet_input.dart'
    as _i5;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;

part 'input_serialization.g.dart';

/// Describes the serialization format of the object.
abstract class InputSerialization
    with _i1.AWSEquatable<InputSerialization>
    implements Built<InputSerialization, InputSerializationBuilder> {
  /// Describes the serialization format of the object.
  factory InputSerialization({
    _i2.CsvInput? csv,
    _i3.CompressionType? compressionType,
    _i4.JsonInput? json,
    _i5.ParquetInput? parquet,
  }) {
    return _$InputSerialization._(
      csv: csv,
      compressionType: compressionType,
      json: json,
      parquet: parquet,
    );
  }

  /// Describes the serialization format of the object.
  factory InputSerialization.build(
          [void Function(InputSerializationBuilder) updates]) =
      _$InputSerialization;

  const InputSerialization._();

  static const List<_i6.SmithySerializer<InputSerialization>> serializers = [
    InputSerializationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InputSerializationBuilder b) {}

  /// Describes the serialization of a CSV-encoded object.
  _i2.CsvInput? get csv;

  /// Specifies object's compression format. Valid values: NONE, GZIP, BZIP2. Default Value: NONE.
  _i3.CompressionType? get compressionType;

  /// Specifies JSON as object's input serialization format.
  _i4.JsonInput? get json;

  /// Specifies Parquet as object's input serialization format.
  _i5.ParquetInput? get parquet;
  @override
  List<Object?> get props => [
        csv,
        compressionType,
        json,
        parquet,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InputSerialization')
      ..add(
        'csv',
        csv,
      )
      ..add(
        'compressionType',
        compressionType,
      )
      ..add(
        'json',
        json,
      )
      ..add(
        'parquet',
        parquet,
      );
    return helper.toString();
  }
}

class InputSerializationRestXmlSerializer
    extends _i6.StructuredSmithySerializer<InputSerialization> {
  const InputSerializationRestXmlSerializer() : super('InputSerialization');

  @override
  Iterable<Type> get types => const [
        InputSerialization,
        _$InputSerialization,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  InputSerialization deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InputSerializationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CompressionType':
          result.compressionType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.CompressionType),
          ) as _i3.CompressionType);
        case 'CSV':
          result.csv.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.CsvInput),
          ) as _i2.CsvInput));
        case 'JSON':
          result.json.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.JsonInput),
          ) as _i4.JsonInput));
        case 'Parquet':
          result.parquet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.ParquetInput),
          ) as _i5.ParquetInput));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InputSerialization object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i6.XmlElementName(
        'InputSerialization',
        _i6.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final InputSerialization(:compressionType, :csv, :json, :parquet) = object;
    if (compressionType != null) {
      result$
        ..add(const _i6.XmlElementName('CompressionType'))
        ..add(serializers.serialize(
          compressionType,
          specifiedType: const FullType.nullable(_i3.CompressionType),
        ));
    }
    if (csv != null) {
      result$
        ..add(const _i6.XmlElementName('CSV'))
        ..add(serializers.serialize(
          csv,
          specifiedType: const FullType(_i2.CsvInput),
        ));
    }
    if (json != null) {
      result$
        ..add(const _i6.XmlElementName('JSON'))
        ..add(serializers.serialize(
          json,
          specifiedType: const FullType(_i4.JsonInput),
        ));
    }
    if (parquet != null) {
      result$
        ..add(const _i6.XmlElementName('Parquet'))
        ..add(serializers.serialize(
          parquet,
          specifiedType: const FullType(_i5.ParquetInput),
        ));
    }
    return result$;
  }
}
