// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.output_serialization; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/csv_output.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/json_output.dart' as _i3;

part 'output_serialization.g.dart';

/// Describes how results of the Select job are serialized.
abstract class OutputSerialization
    with _i1.AWSEquatable<OutputSerialization>
    implements Built<OutputSerialization, OutputSerializationBuilder> {
  /// Describes how results of the Select job are serialized.
  factory OutputSerialization({
    _i2.CsvOutput? csv,
    _i3.JsonOutput? json,
  }) {
    return _$OutputSerialization._(
      csv: csv,
      json: json,
    );
  }

  /// Describes how results of the Select job are serialized.
  factory OutputSerialization.build(
          [void Function(OutputSerializationBuilder) updates]) =
      _$OutputSerialization;

  const OutputSerialization._();

  static const List<_i4.SmithySerializer> serializers = [
    OutputSerializationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OutputSerializationBuilder b) {}

  /// Describes the serialization of CSV-encoded Select results.
  _i2.CsvOutput? get csv;

  /// Specifies JSON as request's output serialization format.
  _i3.JsonOutput? get json;
  @override
  List<Object?> get props => [
        csv,
        json,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OutputSerialization');
    helper.add(
      'csv',
      csv,
    );
    helper.add(
      'json',
      json,
    );
    return helper.toString();
  }
}

class OutputSerializationRestXmlSerializer
    extends _i4.StructuredSmithySerializer<OutputSerialization> {
  const OutputSerializationRestXmlSerializer() : super('OutputSerialization');

  @override
  Iterable<Type> get types => const [
        OutputSerialization,
        _$OutputSerialization,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  OutputSerialization deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OutputSerializationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'CSV':
          if (value != null) {
            result.csv.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CsvOutput),
            ) as _i2.CsvOutput));
          }
          break;
        case 'JSON':
          if (value != null) {
            result.json.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.JsonOutput),
            ) as _i3.JsonOutput));
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
    final payload = (object as OutputSerialization);
    final result = <Object?>[
      const _i4.XmlElementName(
        'OutputSerialization',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.csv != null) {
      result
        ..add(const _i4.XmlElementName('CSV'))
        ..add(serializers.serialize(
          payload.csv!,
          specifiedType: const FullType(_i2.CsvOutput),
        ));
    }
    if (payload.json != null) {
      result
        ..add(const _i4.XmlElementName('JSON'))
        ..add(serializers.serialize(
          payload.json!,
          specifiedType: const FullType(_i3.JsonOutput),
        ));
    }
    return result;
  }
}
