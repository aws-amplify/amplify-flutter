// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.tag_resource_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/tag.dart' as _i3;

part 'tag_resource_request.g.dart';

abstract class TagResourceRequest
    with _i1.HttpInput<TagResourceRequest>, _i2.AWSEquatable<TagResourceRequest>
    implements Built<TagResourceRequest, TagResourceRequestBuilder> {
  factory TagResourceRequest({
    required String resourceArn,
    required List<_i3.Tag> tags,
  }) {
    return _$TagResourceRequest._(
      resourceArn: resourceArn,
      tags: _i4.BuiltList(tags),
    );
  }

  factory TagResourceRequest.build(
          [void Function(TagResourceRequestBuilder) updates]) =
      _$TagResourceRequest;

  const TagResourceRequest._();

  factory TagResourceRequest.fromRequest(
    TagResourceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    TagResourceRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TagResourceRequestBuilder b) {}

  /// The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are `ConfigRule`, `ConfigurationAggregator` and `AggregatorAuthorization`.
  String get resourceArn;

  /// An array of tag object.
  _i4.BuiltList<_i3.Tag> get tags;
  @override
  TagResourceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        resourceArn,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TagResourceRequest');
    helper.add(
      'resourceArn',
      resourceArn,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class TagResourceRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<TagResourceRequest> {
  const TagResourceRequestAwsJson11Serializer() : super('TagResourceRequest');

  @override
  Iterable<Type> get types => const [
        TagResourceRequest,
        _$TagResourceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  TagResourceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagResourceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ResourceArn':
          result.resourceArn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Tags':
          result.tags.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.Tag)],
            ),
          ) as _i4.BuiltList<_i3.Tag>));
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
    final payload = (object as TagResourceRequest);
    final result = <Object?>[
      'ResourceArn',
      serializers.serialize(
        payload.resourceArn,
        specifiedType: const FullType(String),
      ),
      'Tags',
      serializers.serialize(
        payload.tags,
        specifiedType: const FullType(
          _i4.BuiltList,
          [FullType(_i3.Tag)],
        ),
      ),
    ];
    return result;
  }
}
