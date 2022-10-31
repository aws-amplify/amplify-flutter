// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.tag; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'tag.g.dart';

/// The tags for the resource. The metadata that you apply to a resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
abstract class Tag
    with _i1.AWSEquatable<Tag>
    implements Built<Tag, TagBuilder> {
  /// The tags for the resource. The metadata that you apply to a resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
  factory Tag({
    String? key,
    String? value,
  }) {
    return _$Tag._(
      key: key,
      value: value,
    );
  }

  /// The tags for the resource. The metadata that you apply to a resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
  factory Tag.build([void Function(TagBuilder) updates]) = _$Tag;

  const Tag._();

  static const List<_i2.SmithySerializer> serializers = [
    TagAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TagBuilder b) {}

  /// One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
  String? get key;

  /// The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
  String? get value;
  @override
  List<Object?> get props => [
        key,
        value,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Tag');
    helper.add(
      'key',
      key,
    );
    helper.add(
      'value',
      value,
    );
    return helper.toString();
  }
}

class TagAwsJson11Serializer extends _i2.StructuredSmithySerializer<Tag> {
  const TagAwsJson11Serializer() : super('Tag');

  @override
  Iterable<Type> get types => const [
        Tag,
        _$Tag,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
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
      switch (key) {
        case 'Key':
          if (value != null) {
            result.key = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Value':
          if (value != null) {
            result.value = (serializers.deserialize(
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
    final payload = (object as Tag);
    final result = <Object?>[];
    if (payload.key != null) {
      result
        ..add('Key')
        ..add(serializers.serialize(
          payload.key!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.value != null) {
      result
        ..add('Value')
        ..add(serializers.serialize(
          payload.value!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
