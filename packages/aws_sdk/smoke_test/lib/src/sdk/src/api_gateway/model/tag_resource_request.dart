// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.tag_resource_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'tag_resource_request.g.dart';

/// Adds or updates a tag on a given resource.
abstract class TagResourceRequest
    with
        _i1.HttpInput<TagResourceRequestPayload>,
        _i2.AWSEquatable<TagResourceRequest>
    implements
        Built<TagResourceRequest, TagResourceRequestBuilder>,
        _i1.HasPayload<TagResourceRequestPayload> {
  /// Adds or updates a tag on a given resource.
  factory TagResourceRequest({
    required String resourceArn,
    required Map<String, String> tags,
  }) {
    return _$TagResourceRequest._(
      resourceArn: resourceArn,
      tags: _i3.BuiltMap(tags),
    );
  }

  /// Adds or updates a tag on a given resource.
  factory TagResourceRequest.build(
          [void Function(TagResourceRequestBuilder) updates]) =
      _$TagResourceRequest;

  const TagResourceRequest._();

  factory TagResourceRequest.fromRequest(
    TagResourceRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      TagResourceRequest.build((b) {
        b.tags.replace(payload.tags);
        if (labels['resourceArn'] != null) {
          b.resourceArn = labels['resourceArn']!;
        }
      });

  static const List<_i1.SmithySerializer<TagResourceRequestPayload>>
      serializers = [TagResourceRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TagResourceRequestBuilder b) {}

  /// The ARN of a resource that can be tagged.
  String get resourceArn;

  /// The key-value map of strings. The valid character set is \[a-zA-Z+-=._:/\]. The tag key can be up to 128 characters and must not start with `aws:`. The tag value can be up to 256 characters.
  _i3.BuiltMap<String, String> get tags;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'resourceArn':
        return resourceArn;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  TagResourceRequestPayload getPayload() => TagResourceRequestPayload((b) {
        b.tags.replace(tags);
      });
  @override
  List<Object?> get props => [
        resourceArn,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TagResourceRequest')
      ..add(
        'resourceArn',
        resourceArn,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

@_i4.internal
abstract class TagResourceRequestPayload
    with _i2.AWSEquatable<TagResourceRequestPayload>
    implements
        Built<TagResourceRequestPayload, TagResourceRequestPayloadBuilder> {
  factory TagResourceRequestPayload(
          [void Function(TagResourceRequestPayloadBuilder) updates]) =
      _$TagResourceRequestPayload;

  const TagResourceRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TagResourceRequestPayloadBuilder b) {}

  /// The key-value map of strings. The valid character set is \[a-zA-Z+-=._:/\]. The tag key can be up to 128 characters and must not start with `aws:`. The tag value can be up to 256 characters.
  _i3.BuiltMap<String, String> get tags;
  @override
  List<Object?> get props => [tags];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TagResourceRequestPayload')
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class TagResourceRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<TagResourceRequestPayload> {
  const TagResourceRequestRestJson1Serializer() : super('TagResourceRequest');

  @override
  Iterable<Type> get types => const [
        TagResourceRequest,
        _$TagResourceRequest,
        TagResourceRequestPayload,
        _$TagResourceRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  TagResourceRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagResourceRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'tags':
          result.tags.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i3.BuiltMap<String, String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TagResourceRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TagResourceRequestPayload(:tags) = object;
    result$.addAll([
      'tags',
      serializers.serialize(
        tags,
        specifiedType: const FullType(
          _i3.BuiltMap,
          [
            FullType(String),
            FullType(String),
          ],
        ),
      ),
    ]);
    return result$;
  }
}
