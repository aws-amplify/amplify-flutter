// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_storage_s3_dart.s3.model.csv_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/quote_fields.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'csv_output.g.dart';

/// Describes how uncompressed comma-separated values (CSV)-formatted results are formatted.
abstract class CsvOutput
    with _i1.AWSEquatable<CsvOutput>
    implements Built<CsvOutput, CsvOutputBuilder> {
  /// Describes how uncompressed comma-separated values (CSV)-formatted results are formatted.
  factory CsvOutput({
    _i2.QuoteFields? quoteFields,
    String? quoteEscapeCharacter,
    String? recordDelimiter,
    String? fieldDelimiter,
    String? quoteCharacter,
  }) {
    return _$CsvOutput._(
      quoteFields: quoteFields,
      quoteEscapeCharacter: quoteEscapeCharacter,
      recordDelimiter: recordDelimiter,
      fieldDelimiter: fieldDelimiter,
      quoteCharacter: quoteCharacter,
    );
  }

  /// Describes how uncompressed comma-separated values (CSV)-formatted results are formatted.
  factory CsvOutput.build([void Function(CsvOutputBuilder) updates]) =
      _$CsvOutput;

  const CsvOutput._();

  static const List<_i3.SmithySerializer<CsvOutput>> serializers = [
    CsvOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CsvOutputBuilder b) {}

  /// Indicates whether to use quotation marks around output fields.
  ///
  /// *   `ALWAYS`: Always use quotation marks for output fields.
  ///
  /// *   `ASNEEDED`: Use quotation marks for output fields when needed.
  _i2.QuoteFields? get quoteFields;

  /// The single character used for escaping the quote character inside an already escaped value.
  String? get quoteEscapeCharacter;

  /// A single character used to separate individual records in the output. Instead of the default value, you can specify an arbitrary delimiter.
  String? get recordDelimiter;

  /// The value used to separate individual fields in a record. You can specify an arbitrary delimiter.
  String? get fieldDelimiter;

  /// A single character used for escaping when the field delimiter is part of the value. For example, if the value is `a, b`, Amazon S3 wraps this field value in quotation marks, as follows: `" a , b "`.
  String? get quoteCharacter;
  @override
  List<Object?> get props => [
        quoteFields,
        quoteEscapeCharacter,
        recordDelimiter,
        fieldDelimiter,
        quoteCharacter,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CsvOutput')
      ..add(
        'quoteFields',
        quoteFields,
      )
      ..add(
        'quoteEscapeCharacter',
        quoteEscapeCharacter,
      )
      ..add(
        'recordDelimiter',
        recordDelimiter,
      )
      ..add(
        'fieldDelimiter',
        fieldDelimiter,
      )
      ..add(
        'quoteCharacter',
        quoteCharacter,
      );
    return helper.toString();
  }
}

class CsvOutputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<CsvOutput> {
  const CsvOutputRestXmlSerializer() : super('CsvOutput');

  @override
  Iterable<Type> get types => const [
        CsvOutput,
        _$CsvOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  CsvOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CsvOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'FieldDelimiter':
          result.fieldDelimiter = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'QuoteCharacter':
          result.quoteCharacter = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'QuoteEscapeCharacter':
          result.quoteEscapeCharacter = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'QuoteFields':
          result.quoteFields = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.QuoteFields),
          ) as _i2.QuoteFields);
        case 'RecordDelimiter':
          result.recordDelimiter = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CsvOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CsvOutput',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final CsvOutput(
      :fieldDelimiter,
      :quoteCharacter,
      :quoteEscapeCharacter,
      :quoteFields,
      :recordDelimiter
    ) = object;
    if (fieldDelimiter != null) {
      result$
        ..add(const _i3.XmlElementName('FieldDelimiter'))
        ..add(serializers.serialize(
          fieldDelimiter,
          specifiedType: const FullType(String),
        ));
    }
    if (quoteCharacter != null) {
      result$
        ..add(const _i3.XmlElementName('QuoteCharacter'))
        ..add(serializers.serialize(
          quoteCharacter,
          specifiedType: const FullType(String),
        ));
    }
    if (quoteEscapeCharacter != null) {
      result$
        ..add(const _i3.XmlElementName('QuoteEscapeCharacter'))
        ..add(serializers.serialize(
          quoteEscapeCharacter,
          specifiedType: const FullType(String),
        ));
    }
    if (quoteFields != null) {
      result$
        ..add(const _i3.XmlElementName('QuoteFields'))
        ..add(serializers.serialize(
          quoteFields,
          specifiedType: const FullType.nullable(_i2.QuoteFields),
        ));
    }
    if (recordDelimiter != null) {
      result$
        ..add(const _i3.XmlElementName('RecordDelimiter'))
        ..add(serializers.serialize(
          recordDelimiter,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
