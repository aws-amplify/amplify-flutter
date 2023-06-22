// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.error_document; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'error_document.g.dart';

/// The error information.
abstract class ErrorDocument
    with _i1.AWSEquatable<ErrorDocument>
    implements Built<ErrorDocument, ErrorDocumentBuilder> {
  /// The error information.
  factory ErrorDocument({required String key}) {
    return _$ErrorDocument._(key: key);
  }

  /// The error information.
  factory ErrorDocument.build([void Function(ErrorDocumentBuilder) updates]) =
      _$ErrorDocument;

  const ErrorDocument._();

  static const List<_i2.SmithySerializer<ErrorDocument>> serializers = [
    ErrorDocumentRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ErrorDocumentBuilder b) {}

  /// The object key name to use when a 4XX class error occurs.
  ///
  /// Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  String get key;
  @override
  List<Object?> get props => [key];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ErrorDocument')
      ..add(
        'key',
        key,
      );
    return helper.toString();
  }
}

class ErrorDocumentRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ErrorDocument> {
  const ErrorDocumentRestXmlSerializer() : super('ErrorDocument');

  @override
  Iterable<Type> get types => const [
        ErrorDocument,
        _$ErrorDocument,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ErrorDocument deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorDocumentBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Key':
          result.key = (serializers.deserialize(
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
    ErrorDocument object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ErrorDocument',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ErrorDocument(:key) = object;
    result$
      ..add(const _i2.XmlElementName('Key'))
      ..add(serializers.serialize(
        key,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
