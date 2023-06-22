// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.tag; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'tag.g.dart';

/// A container of a key value name pair.
abstract class Tag
    with _i1.AWSEquatable<Tag>
    implements Built<Tag, TagBuilder> {
  /// A container of a key value name pair.
  factory Tag({
    required String key,
    required String value,
  }) {
    return _$Tag._(
      key: key,
      value: value,
    );
  }

  /// A container of a key value name pair.
  factory Tag.build([void Function(TagBuilder) updates]) = _$Tag;

  const Tag._();

  static const List<_i2.SmithySerializer<Tag>> serializers = [
    TagRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TagBuilder b) {}

  /// Name of the object key.
  String get key;

  /// Value of the tag.
  String get value;
  @override
  List<Object?> get props => [
        key,
        value,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Tag')
      ..add(
        'key',
        key,
      )
      ..add(
        'value',
        value,
      );
    return helper.toString();
  }
}

class TagRestXmlSerializer extends _i2.StructuredSmithySerializer<Tag> {
  const TagRestXmlSerializer() : super('Tag');

  @override
  Iterable<Type> get types => const [
        Tag,
        _$Tag,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Tag deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagBuilder();
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
        case 'Value':
          result.value = (serializers.deserialize(
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
    Tag object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'Tag',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final Tag(:key, :value) = object;
    result$
      ..add(const _i2.XmlElementName('Key'))
      ..add(serializers.serialize(
        key,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('Value'))
      ..add(serializers.serialize(
        value,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
