// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.output_serialization; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/csv_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/json_output.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'output_serialization.g.dart';

/// Describes how results of the Select job are serialized.
abstract class OutputSerialization
    with _i1.AWSEquatable<OutputSerialization>
    implements Built<OutputSerialization, OutputSerializationBuilder> {
  /// Describes how results of the Select job are serialized.
  factory OutputSerialization({
    CsvOutput? csv,
    JsonOutput? json,
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

  static const List<_i2.SmithySerializer<OutputSerialization>> serializers = [
    OutputSerializationRestXmlSerializer()
  ];

  /// Describes the serialization of CSV-encoded Select results.
  CsvOutput? get csv;

  /// Specifies JSON as request's output serialization format.
  JsonOutput? get json;
  @override
  List<Object?> get props => [
        csv,
        json,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OutputSerialization')
      ..add(
        'csv',
        csv,
      )
      ..add(
        'json',
        json,
      );
    return helper.toString();
  }
}

class OutputSerializationRestXmlSerializer
    extends _i2.StructuredSmithySerializer<OutputSerialization> {
  const OutputSerializationRestXmlSerializer() : super('OutputSerialization');

  @override
  Iterable<Type> get types => const [
        OutputSerialization,
        _$OutputSerialization,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CSV':
          result.csv.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CsvOutput),
          ) as CsvOutput));
        case 'JSON':
          result.json.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(JsonOutput),
          ) as JsonOutput));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    OutputSerialization object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'OutputSerialization',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final OutputSerialization(:csv, :json) = object;
    if (csv != null) {
      result$
        ..add(const _i2.XmlElementName('CSV'))
        ..add(serializers.serialize(
          csv,
          specifiedType: const FullType(CsvOutput),
        ));
    }
    if (json != null) {
      result$
        ..add(const _i2.XmlElementName('JSON'))
        ..add(serializers.serialize(
          json,
          specifiedType: const FullType(JsonOutput),
        ));
    }
    return result$;
  }
}
