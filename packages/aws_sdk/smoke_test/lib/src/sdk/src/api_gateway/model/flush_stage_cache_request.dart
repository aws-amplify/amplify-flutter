// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.flush_stage_cache_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'flush_stage_cache_request.g.dart';

/// Requests API Gateway to flush a stage's cache.
abstract class FlushStageCacheRequest
    with
        _i1.HttpInput<FlushStageCacheRequestPayload>,
        _i2.AWSEquatable<FlushStageCacheRequest>
    implements
        Built<FlushStageCacheRequest, FlushStageCacheRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<FlushStageCacheRequestPayload> {
  /// Requests API Gateway to flush a stage's cache.
  factory FlushStageCacheRequest({
    required String restApiId,
    required String stageName,
  }) {
    return _$FlushStageCacheRequest._(
      restApiId: restApiId,
      stageName: stageName,
    );
  }

  /// Requests API Gateway to flush a stage's cache.
  factory FlushStageCacheRequest.build(
          [void Function(FlushStageCacheRequestBuilder) updates]) =
      _$FlushStageCacheRequest;

  const FlushStageCacheRequest._();

  factory FlushStageCacheRequest.fromRequest(
    FlushStageCacheRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      FlushStageCacheRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['stageName'] != null) {
          b.stageName = labels['stageName']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    FlushStageCacheRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FlushStageCacheRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The name of the stage to flush its cache.
  String get stageName;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'stageName':
        return stageName;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  FlushStageCacheRequestPayload getPayload() => FlushStageCacheRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        stageName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FlushStageCacheRequest');
    helper.add(
      'restApiId',
      restApiId,
    );
    helper.add(
      'stageName',
      stageName,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class FlushStageCacheRequestPayload
    with
        _i2.AWSEquatable<FlushStageCacheRequestPayload>
    implements
        Built<FlushStageCacheRequestPayload,
            FlushStageCacheRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory FlushStageCacheRequestPayload(
          [void Function(FlushStageCacheRequestPayloadBuilder) updates]) =
      _$FlushStageCacheRequestPayload;

  const FlushStageCacheRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FlushStageCacheRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FlushStageCacheRequestPayload');
    return helper.toString();
  }
}

class FlushStageCacheRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<FlushStageCacheRequestPayload> {
  const FlushStageCacheRequestRestJson1Serializer()
      : super('FlushStageCacheRequest');

  @override
  Iterable<Type> get types => const [
        FlushStageCacheRequest,
        _$FlushStageCacheRequest,
        FlushStageCacheRequestPayload,
        _$FlushStageCacheRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  FlushStageCacheRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return FlushStageCacheRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
