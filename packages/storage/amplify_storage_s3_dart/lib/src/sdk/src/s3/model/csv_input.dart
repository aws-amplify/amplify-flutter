// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_storage_s3_dart.s3.model.csv_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/file_header_info.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'csv_input.g.dart';

/// Describes how an uncompressed comma-separated values (CSV)-formatted input object is formatted.
abstract class CsvInput
    with _i1.AWSEquatable<CsvInput>
    implements Built<CsvInput, CsvInputBuilder> {
  /// Describes how an uncompressed comma-separated values (CSV)-formatted input object is formatted.
  factory CsvInput({
    _i2.FileHeaderInfo? fileHeaderInfo,
    String? comments,
    String? quoteEscapeCharacter,
    String? recordDelimiter,
    String? fieldDelimiter,
    String? quoteCharacter,
    bool? allowQuotedRecordDelimiter,
  }) {
    return _$CsvInput._(
      fileHeaderInfo: fileHeaderInfo,
      comments: comments,
      quoteEscapeCharacter: quoteEscapeCharacter,
      recordDelimiter: recordDelimiter,
      fieldDelimiter: fieldDelimiter,
      quoteCharacter: quoteCharacter,
      allowQuotedRecordDelimiter: allowQuotedRecordDelimiter,
    );
  }

  /// Describes how an uncompressed comma-separated values (CSV)-formatted input object is formatted.
  factory CsvInput.build([void Function(CsvInputBuilder) updates]) = _$CsvInput;

  const CsvInput._();

  static const List<_i3.SmithySerializer<CsvInput>> serializers = [
    CsvInputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CsvInputBuilder b) {}

  /// Describes the first line of input. Valid values are:
  ///
  /// *   `NONE`: First line is not a header.
  ///
  /// *   `IGNORE`: First line is a header, but you can't use the header values to indicate the column in an expression. You can use column position (such as \_1, \_2, …) to indicate the column (`SELECT s._1 FROM OBJECT s`).
  ///
  /// *   `Use`: First line is a header, and you can use the header value to identify a column in an expression (`SELECT "name" FROM OBJECT`).
  _i2.FileHeaderInfo? get fileHeaderInfo;

  /// A single character used to indicate that a row should be ignored when the character is present at the start of that row. You can specify any character to indicate a comment line. The default character is `#`.
  ///
  /// Default: `#`
  String? get comments;

  /// A single character used for escaping the quotation mark character inside an already escaped value. For example, the value `""" a , b """` is parsed as `" a , b "`.
  String? get quoteEscapeCharacter;

  /// A single character used to separate individual records in the input. Instead of the default value, you can specify an arbitrary delimiter.
  String? get recordDelimiter;

  /// A single character used to separate individual fields in a record. You can specify an arbitrary delimiter.
  String? get fieldDelimiter;

  /// A single character used for escaping when the field delimiter is part of the value. For example, if the value is `a, b`, Amazon S3 wraps this field value in quotation marks, as follows: `" a , b "`.
  ///
  /// Type: String
  ///
  /// Default: `"`
  ///
  /// Ancestors: `CSV`
  String? get quoteCharacter;

  /// Specifies that CSV field values may contain quoted record delimiters and such records should be allowed. Default value is FALSE. Setting this value to TRUE may lower performance.
  bool? get allowQuotedRecordDelimiter;
  @override
  List<Object?> get props => [
        fileHeaderInfo,
        comments,
        quoteEscapeCharacter,
        recordDelimiter,
        fieldDelimiter,
        quoteCharacter,
        allowQuotedRecordDelimiter,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CsvInput')
      ..add(
        'fileHeaderInfo',
        fileHeaderInfo,
      )
      ..add(
        'comments',
        comments,
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
      )
      ..add(
        'allowQuotedRecordDelimiter',
        allowQuotedRecordDelimiter,
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AllowQuotedRecordDelimiter':
          result.allowQuotedRecordDelimiter = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Comments':
          result.comments = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'FieldDelimiter':
          result.fieldDelimiter = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'FileHeaderInfo':
          result.fileHeaderInfo = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.FileHeaderInfo),
          ) as _i2.FileHeaderInfo);
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
    CsvInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CsvInput',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final CsvInput(
      :allowQuotedRecordDelimiter,
      :comments,
      :fieldDelimiter,
      :fileHeaderInfo,
      :quoteCharacter,
      :quoteEscapeCharacter,
      :recordDelimiter
    ) = object;
    if (allowQuotedRecordDelimiter != null) {
      result$
        ..add(const _i3.XmlElementName('AllowQuotedRecordDelimiter'))
        ..add(serializers.serialize(
          allowQuotedRecordDelimiter,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (comments != null) {
      result$
        ..add(const _i3.XmlElementName('Comments'))
        ..add(serializers.serialize(
          comments,
          specifiedType: const FullType(String),
        ));
    }
    if (fieldDelimiter != null) {
      result$
        ..add(const _i3.XmlElementName('FieldDelimiter'))
        ..add(serializers.serialize(
          fieldDelimiter,
          specifiedType: const FullType(String),
        ));
    }
    if (fileHeaderInfo != null) {
      result$
        ..add(const _i3.XmlElementName('FileHeaderInfo'))
        ..add(serializers.serialize(
          fileHeaderInfo,
          specifiedType: const FullType.nullable(_i2.FileHeaderInfo),
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
