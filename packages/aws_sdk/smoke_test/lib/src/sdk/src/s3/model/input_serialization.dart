// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.input_serialization; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/compression_type.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/csv_input.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/json_input.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/parquet_input.dart' as _i5;

part 'input_serialization.g.dart';

/// Describes the serialization format of the object.
abstract class InputSerialization
    with _i1.AWSEquatable<InputSerialization>
    implements Built<InputSerialization, InputSerializationBuilder> {
  /// Describes the serialization format of the object.
  factory InputSerialization({
    _i2.CompressionType? compressionType,
    _i3.CsvInput? csv,
    _i4.JsonInput? json,
    _i5.ParquetInput? parquet,
  }) {
    return _$InputSerialization._(
      compressionType: compressionType,
      csv: csv,
      json: json,
      parquet: parquet,
    );
  }

  /// Describes the serialization format of the object.
  factory InputSerialization.build(
          [void Function(InputSerializationBuilder) updates]) =
      _$InputSerialization;

  const InputSerialization._();

  static const List<_i6.SmithySerializer> serializers = [
    InputSerializationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InputSerializationBuilder b) {}

  /// Specifies object's compression format. Valid values: NONE, GZIP, BZIP2. Default Value: NONE.
  _i2.CompressionType? get compressionType;

  /// Describes the serialization of a CSV-encoded object.
  _i3.CsvInput? get csv;

  /// Specifies JSON as object's input serialization format.
  _i4.JsonInput? get json;

  /// Specifies Parquet as object's input serialization format.
  _i5.ParquetInput? get parquet;
  @override
  List<Object?> get props => [
        compressionType,
        csv,
        json,
        parquet,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InputSerialization');
    helper.add(
      'compressionType',
      compressionType,
    );
    helper.add(
      'csv',
      csv,
    );
    helper.add(
      'json',
      json,
    );
    helper.add(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'CompressionType':
          if (value != null) {
            result.compressionType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CompressionType),
            ) as _i2.CompressionType);
          }
          break;
        case 'CSV':
          if (value != null) {
            result.csv.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.CsvInput),
            ) as _i3.CsvInput));
          }
          break;
        case 'JSON':
          if (value != null) {
            result.json.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.JsonInput),
            ) as _i4.JsonInput));
          }
          break;
        case 'Parquet':
          if (value != null) {
            result.parquet.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.ParquetInput),
            ) as _i5.ParquetInput));
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
    final payload = (object as InputSerialization);
    final result = <Object?>[
      const _i6.XmlElementName(
        'InputSerialization',
        _i6.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.compressionType != null) {
      result
        ..add(const _i6.XmlElementName('CompressionType'))
        ..add(serializers.serialize(
          payload.compressionType!,
          specifiedType: const FullType.nullable(_i2.CompressionType),
        ));
    }
    if (payload.csv != null) {
      result
        ..add(const _i6.XmlElementName('CSV'))
        ..add(serializers.serialize(
          payload.csv!,
          specifiedType: const FullType(_i3.CsvInput),
        ));
    }
    if (payload.json != null) {
      result
        ..add(const _i6.XmlElementName('JSON'))
        ..add(serializers.serialize(
          payload.json!,
          specifiedType: const FullType(_i4.JsonInput),
        ));
    }
    if (payload.parquet != null) {
      result
        ..add(const _i6.XmlElementName('Parquet'))
        ..add(serializers.serialize(
          payload.parquet!,
          specifiedType: const FullType(_i5.ParquetInput),
        ));
    }
    return result;
  }
}
