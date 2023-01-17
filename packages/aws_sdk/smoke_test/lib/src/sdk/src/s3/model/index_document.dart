// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.index_document; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'index_document.g.dart';

/// Container for the `Suffix` element.
abstract class IndexDocument
    with _i1.AWSEquatable<IndexDocument>
    implements Built<IndexDocument, IndexDocumentBuilder> {
  /// Container for the `Suffix` element.
  factory IndexDocument({required String suffix}) {
    return _$IndexDocument._(suffix: suffix);
  }

  /// Container for the `Suffix` element.
  factory IndexDocument.build([void Function(IndexDocumentBuilder) updates]) =
      _$IndexDocument;

  const IndexDocument._();

  static const List<_i2.SmithySerializer> serializers = [
    IndexDocumentRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IndexDocumentBuilder b) {}

  /// A suffix that is appended to a request that is for a directory on the website endpoint (for example,if the suffix is index.html and you make a request to samplebucket/images/ the data that is returned will be for the object with the key name images/index.html) The suffix must not be empty and must not include a slash character.
  ///
  /// Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  String get suffix;
  @override
  List<Object?> get props => [suffix];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IndexDocument');
    helper.add(
      'suffix',
      suffix,
    );
    return helper.toString();
  }
}

class IndexDocumentRestXmlSerializer
    extends _i2.StructuredSmithySerializer<IndexDocument> {
  const IndexDocumentRestXmlSerializer() : super('IndexDocument');

  @override
  Iterable<Type> get types => const [
        IndexDocument,
        _$IndexDocument,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  IndexDocument deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndexDocumentBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Suffix':
          result.suffix = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as IndexDocument);
    final result = <Object?>[
      const _i2.XmlElementName(
        'IndexDocument',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Suffix'))
      ..add(serializers.serialize(
        payload.suffix,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
