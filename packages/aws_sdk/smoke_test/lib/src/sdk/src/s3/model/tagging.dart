// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.tagging; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart' as _i2;

part 'tagging.g.dart';

/// Container for `TagSet` elements.
abstract class Tagging
    with _i1.AWSEquatable<Tagging>
    implements Built<Tagging, TaggingBuilder> {
  /// Container for `TagSet` elements.
  factory Tagging({required List<_i2.Tag> tagSet}) {
    return _$Tagging._(tagSet: _i3.BuiltList(tagSet));
  }

  /// Container for `TagSet` elements.
  factory Tagging.build([void Function(TaggingBuilder) updates]) = _$Tagging;

  const Tagging._();

  static const List<_i4.SmithySerializer> serializers = [
    TaggingRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TaggingBuilder b) {}

  /// A collection for a set of tags
  _i3.BuiltList<_i2.Tag> get tagSet;
  @override
  List<Object?> get props => [tagSet];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Tagging');
    helper.add(
      'tagSet',
      tagSet,
    );
    return helper.toString();
  }
}

class TaggingRestXmlSerializer extends _i4.StructuredSmithySerializer<Tagging> {
  const TaggingRestXmlSerializer() : super('Tagging');

  @override
  Iterable<Type> get types => const [
        Tagging,
        _$Tagging,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Tagging deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TaggingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TagSet':
          result.tagSet.replace(
              (const _i4.XmlBuiltListSerializer(memberName: 'Tag').deserialize(
            serializers,
            (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.Tag)],
            ),
          ) as _i3.BuiltList<_i2.Tag>));
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
    final payload = (object as Tagging);
    final result = <Object?>[
      const _i4.XmlElementName(
        'Tagging',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i4.XmlElementName('TagSet'))
      ..add(const _i4.XmlBuiltListSerializer(memberName: 'Tag').serialize(
        serializers,
        payload.tagSet,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(_i2.Tag)],
        ),
      ));
    return result;
  }
}
