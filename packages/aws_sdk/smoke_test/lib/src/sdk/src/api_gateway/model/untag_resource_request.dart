// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.untag_resource_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'untag_resource_request.g.dart';

/// Removes a tag from a given resource.
abstract class UntagResourceRequest
    with
        _i1.HttpInput<UntagResourceRequestPayload>,
        _i2.AWSEquatable<UntagResourceRequest>
    implements
        Built<UntagResourceRequest, UntagResourceRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<UntagResourceRequestPayload> {
  /// Removes a tag from a given resource.
  factory UntagResourceRequest({
    required String resourceArn,
    required List<String> tagKeys,
  }) {
    return _$UntagResourceRequest._(
      resourceArn: resourceArn,
      tagKeys: _i3.BuiltList(tagKeys),
    );
  }

  /// Removes a tag from a given resource.
  factory UntagResourceRequest.build(
          [void Function(UntagResourceRequestBuilder) updates]) =
      _$UntagResourceRequest;

  const UntagResourceRequest._();

  factory UntagResourceRequest.fromRequest(
    UntagResourceRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UntagResourceRequest.build((b) {
        if (request.queryParameters['tagKeys'] != null) {
          b.tagKeys.addAll(_i1
              .parseHeader(request.queryParameters['tagKeys']!)
              .map((el) => el.trim()));
        }
        if (labels['resourceArn'] != null) {
          b.resourceArn = labels['resourceArn']!;
        }
      });

  static const List<_i1.SmithySerializer<UntagResourceRequestPayload>>
      serializers = [UntagResourceRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UntagResourceRequestBuilder b) {}

  /// The ARN of a resource that can be tagged.
  String get resourceArn;

  /// The Tag keys to delete.
  _i3.BuiltList<String> get tagKeys;
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
  UntagResourceRequestPayload getPayload() => UntagResourceRequestPayload();
  @override
  List<Object?> get props => [
        resourceArn,
        tagKeys,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UntagResourceRequest')
      ..add(
        'resourceArn',
        resourceArn,
      )
      ..add(
        'tagKeys',
        tagKeys,
      );
    return helper.toString();
  }
}

@_i4.internal
abstract class UntagResourceRequestPayload
    with _i2.AWSEquatable<UntagResourceRequestPayload>
    implements
        Built<UntagResourceRequestPayload, UntagResourceRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory UntagResourceRequestPayload(
          [void Function(UntagResourceRequestPayloadBuilder) updates]) =
      _$UntagResourceRequestPayload;

  const UntagResourceRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UntagResourceRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UntagResourceRequestPayload');
    return helper.toString();
  }
}

class UntagResourceRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<UntagResourceRequestPayload> {
  const UntagResourceRequestRestJson1Serializer()
      : super('UntagResourceRequest');

  @override
  Iterable<Type> get types => const [
        UntagResourceRequest,
        _$UntagResourceRequest,
        UntagResourceRequestPayload,
        _$UntagResourceRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UntagResourceRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return UntagResourceRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UntagResourceRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
