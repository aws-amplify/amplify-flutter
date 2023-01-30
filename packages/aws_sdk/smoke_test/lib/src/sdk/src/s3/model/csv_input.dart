// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.csv_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/file_header_info.dart' as _i2;

part 'csv_input.g.dart';

/// Describes how an uncompressed comma-separated values (CSV)-formatted input object is formatted.
abstract class CsvInput
    with _i1.AWSEquatable<CsvInput>
    implements Built<CsvInput, CsvInputBuilder> {
  /// Describes how an uncompressed comma-separated values (CSV)-formatted input object is formatted.
  factory CsvInput({
    bool? allowQuotedRecordDelimiter,
    String? comments,
    String? fieldDelimiter,
    _i2.FileHeaderInfo? fileHeaderInfo,
    String? quoteCharacter,
    String? quoteEscapeCharacter,
    String? recordDelimiter,
  }) {
    return _$CsvInput._(
      allowQuotedRecordDelimiter: allowQuotedRecordDelimiter,
      comments: comments,
      fieldDelimiter: fieldDelimiter,
      fileHeaderInfo: fileHeaderInfo,
      quoteCharacter: quoteCharacter,
      quoteEscapeCharacter: quoteEscapeCharacter,
      recordDelimiter: recordDelimiter,
    );
  }

  /// Describes how an uncompressed comma-separated values (CSV)-formatted input object is formatted.
  factory CsvInput.build([void Function(CsvInputBuilder) updates]) = _$CsvInput;

  const CsvInput._();

  static const List<_i3.SmithySerializer> serializers = [
    CsvInputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CsvInputBuilder b) {}

  /// Specifies that CSV field values may contain quoted record delimiters and such records should be allowed. Default value is FALSE. Setting this value to TRUE may lower performance.
  bool? get allowQuotedRecordDelimiter;

  /// A single character used to indicate that a row should be ignored when the character is present at the start of that row. You can specify any character to indicate a comment line.
  String? get comments;

  /// A single character used to separate individual fields in a record. You can specify an arbitrary delimiter.
  String? get fieldDelimiter;

  /// Describes the first line of input. Valid values are:
  ///
  /// *   `NONE`: First line is not a header.
  ///
  /// *   `IGNORE`: First line is a header, but you can't use the header values to indicate the column in an expression. You can use column position (such as \_1, \_2, …) to indicate the column (`SELECT s._1 FROM OBJECT s`).
  ///
  /// *   `Use`: First line is a header, and you can use the header value to identify a column in an expression (`SELECT "name" FROM OBJECT`).
  _i2.FileHeaderInfo? get fileHeaderInfo;

  /// A single character used for escaping when the field delimiter is part of the value. For example, if the value is `a, b`, Amazon S3 wraps this field value in quotation marks, as follows: `" a , b "`.
  ///
  /// Type: String
  ///
  /// Default: `"`
  ///
  /// Ancestors: `CSV`
  String? get quoteCharacter;

  /// A single character used for escaping the quotation mark character inside an already escaped value. For example, the value `""" a , b """` is parsed as `" a , b "`.
  String? get quoteEscapeCharacter;

  /// A single character used to separate individual records in the input. Instead of the default value, you can specify an arbitrary delimiter.
  String? get recordDelimiter;
  @override
  List<Object?> get props => [
        allowQuotedRecordDelimiter,
        comments,
        fieldDelimiter,
        fileHeaderInfo,
        quoteCharacter,
        quoteEscapeCharacter,
        recordDelimiter,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CsvInput');
    helper.add(
      'allowQuotedRecordDelimiter',
      allowQuotedRecordDelimiter,
    );
    helper.add(
      'comments',
      comments,
    );
    helper.add(
      'fieldDelimiter',
      fieldDelimiter,
    );
    helper.add(
      'fileHeaderInfo',
      fileHeaderInfo,
    );
    helper.add(
      'quoteCharacter',
      quoteCharacter,
    );
    helper.add(
      'quoteEscapeCharacter',
      quoteEscapeCharacter,
    );
    helper.add(
      'recordDelimiter',
      recordDelimiter,
    );
    return helper.toString();
  }
}

class CsvInputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<CsvInput> {
  const CsvInputRestXmlSerializer() : super('CsvInput');

  @override
  Iterable<Type> get types => const [
        CsvInput,
        _$CsvInput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  CsvInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CsvInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AllowQuotedRecordDelimiter':
          if (value != null) {
            result.allowQuotedRecordDelimiter = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'Comments':
          if (value != null) {
            result.comments = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'FieldDelimiter':
          if (value != null) {
            result.fieldDelimiter = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'FileHeaderInfo':
          if (value != null) {
            result.fileHeaderInfo = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.FileHeaderInfo),
            ) as _i2.FileHeaderInfo);
          }
          break;
        case 'QuoteCharacter':
          if (value != null) {
            result.quoteCharacter = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'QuoteEscapeCharacter':
          if (value != null) {
            result.quoteEscapeCharacter = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'RecordDelimiter':
          if (value != null) {
            result.recordDelimiter = (serializers.deserialize(
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
    final payload = (object as CsvInput);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CsvInput',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.allowQuotedRecordDelimiter != null) {
      result
        ..add(const _i3.XmlElementName('AllowQuotedRecordDelimiter'))
        ..add(serializers.serialize(
          payload.allowQuotedRecordDelimiter!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.comments != null) {
      result
        ..add(const _i3.XmlElementName('Comments'))
        ..add(serializers.serialize(
          payload.comments!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.fieldDelimiter != null) {
      result
        ..add(const _i3.XmlElementName('FieldDelimiter'))
        ..add(serializers.serialize(
          payload.fieldDelimiter!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.fileHeaderInfo != null) {
      result
        ..add(const _i3.XmlElementName('FileHeaderInfo'))
        ..add(serializers.serialize(
          payload.fileHeaderInfo!,
          specifiedType: const FullType.nullable(_i2.FileHeaderInfo),
        ));
    }
    if (payload.quoteCharacter != null) {
      result
        ..add(const _i3.XmlElementName('QuoteCharacter'))
        ..add(serializers.serialize(
          payload.quoteCharacter!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.quoteEscapeCharacter != null) {
      result
        ..add(const _i3.XmlElementName('QuoteEscapeCharacter'))
        ..add(serializers.serialize(
          payload.quoteEscapeCharacter!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.recordDelimiter != null) {
      result
        ..add(const _i3.XmlElementName('RecordDelimiter'))
        ..add(serializers.serialize(
          payload.recordDelimiter!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
