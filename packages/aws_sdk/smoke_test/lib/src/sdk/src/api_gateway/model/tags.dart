// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.tags; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'tags.g.dart';

/// The collection of tags. Each tag element is associated with a given resource.
abstract class Tags
    with _i1.AWSEquatable<Tags>
    implements Built<Tags, TagsBuilder> {
  /// The collection of tags. Each tag element is associated with a given resource.
  factory Tags({Map<String, String>? tags}) {
    return _$Tags._(tags: tags == null ? null : _i2.BuiltMap(tags));
  }

  /// The collection of tags. Each tag element is associated with a given resource.
  factory Tags.build([void Function(TagsBuilder) updates]) = _$Tags;

  const Tags._();

  /// Constructs a [Tags] from a [payload] and [response].
  factory Tags.fromResponse(
    Tags payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    TagsRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TagsBuilder b) {}

  /// The collection of tags. Each tag element is associated with a given resource.
  _i2.BuiltMap<String, String>? get tags;
  @override
  List<Object?> get props => [tags];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Tags');
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class TagsRestJson1Serializer extends _i3.StructuredSmithySerializer<Tags> {
  const TagsRestJson1Serializer() : super('Tags');

  @override
  Iterable<Type> get types => const [
        Tags,
        _$Tags,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  Tags deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'tags':
          if (value != null) {
            result.tags.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i2.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i2.BuiltMap<String, String>));
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
    final payload = (object as Tags);
    final result = <Object?>[];
    if (payload.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(
          payload.tags!,
          specifiedType: const FullType(
            _i2.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    return result;
  }
}
