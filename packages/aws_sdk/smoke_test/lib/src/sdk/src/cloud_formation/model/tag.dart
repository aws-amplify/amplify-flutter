// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.tag; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'tag.g.dart';

/// The Tag type enables you to specify a key-value pair that can be used to store information about an CloudFormation stack.
abstract class Tag
    with _i1.AWSEquatable<Tag>
    implements Built<Tag, TagBuilder> {
  /// The Tag type enables you to specify a key-value pair that can be used to store information about an CloudFormation stack.
  factory Tag({
    required String key,
    required String value,
  }) {
    return _$Tag._(
      key: key,
      value: value,
    );
  }

  /// The Tag type enables you to specify a key-value pair that can be used to store information about an CloudFormation stack.
  factory Tag.build([void Function(TagBuilder) updates]) = _$Tag;

  const Tag._();

  static const List<_i2.SmithySerializer<Tag>> serializers = [
    TagAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TagBuilder b) {}

  /// _Required_. A string used to identify this tag. You can specify a maximum of 128 characters for a tag key. Tags owned by Amazon Web Services (Amazon Web Services) have the reserved prefix: `aws:`.
  String get key;

  /// _Required_. A string containing the value for this tag. You can specify a maximum of 256 characters for a tag value.
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

class TagAwsQuerySerializer extends _i2.StructuredSmithySerializer<Tag> {
  const TagAwsQuerySerializer() : super('Tag');

  @override
  Iterable<Type> get types => const [
        Tag,
        _$Tag,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
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
        'TagResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
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
