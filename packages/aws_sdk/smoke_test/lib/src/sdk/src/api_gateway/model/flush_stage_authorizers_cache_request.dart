// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.flush_stage_authorizers_cache_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'flush_stage_authorizers_cache_request.g.dart';

/// Request to flush authorizer cache entries on a specified stage.
abstract class FlushStageAuthorizersCacheRequest
    with
        _i1.HttpInput<FlushStageAuthorizersCacheRequestPayload>,
        _i2.AWSEquatable<FlushStageAuthorizersCacheRequest>
    implements
        Built<FlushStageAuthorizersCacheRequest,
            FlushStageAuthorizersCacheRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<FlushStageAuthorizersCacheRequestPayload> {
  /// Request to flush authorizer cache entries on a specified stage.
  factory FlushStageAuthorizersCacheRequest({
    required String restApiId,
    required String stageName,
  }) {
    return _$FlushStageAuthorizersCacheRequest._(
      restApiId: restApiId,
      stageName: stageName,
    );
  }

  /// Request to flush authorizer cache entries on a specified stage.
  factory FlushStageAuthorizersCacheRequest.build(
          [void Function(FlushStageAuthorizersCacheRequestBuilder) updates]) =
      _$FlushStageAuthorizersCacheRequest;

  const FlushStageAuthorizersCacheRequest._();

  factory FlushStageAuthorizersCacheRequest.fromRequest(
    FlushStageAuthorizersCacheRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      FlushStageAuthorizersCacheRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['stageName'] != null) {
          b.stageName = labels['stageName']!;
        }
      });

  static const List<
          _i1.SmithySerializer<FlushStageAuthorizersCacheRequestPayload>>
      serializers = [FlushStageAuthorizersCacheRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FlushStageAuthorizersCacheRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The name of the stage to flush.
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
  FlushStageAuthorizersCacheRequestPayload getPayload() =>
      FlushStageAuthorizersCacheRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        stageName,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('FlushStageAuthorizersCacheRequest')
          ..add(
            'restApiId',
            restApiId,
          )
          ..add(
            'stageName',
            stageName,
          );
    return helper.toString();
  }
}

@_i3.internal
abstract class FlushStageAuthorizersCacheRequestPayload
    with
        _i2.AWSEquatable<FlushStageAuthorizersCacheRequestPayload>
    implements
        Built<FlushStageAuthorizersCacheRequestPayload,
            FlushStageAuthorizersCacheRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory FlushStageAuthorizersCacheRequestPayload(
      [void Function(FlushStageAuthorizersCacheRequestPayloadBuilder)
          updates]) = _$FlushStageAuthorizersCacheRequestPayload;

  const FlushStageAuthorizersCacheRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FlushStageAuthorizersCacheRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('FlushStageAuthorizersCacheRequestPayload');
    return helper.toString();
  }
}

class FlushStageAuthorizersCacheRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<FlushStageAuthorizersCacheRequestPayload> {
  const FlushStageAuthorizersCacheRequestRestJson1Serializer()
      : super('FlushStageAuthorizersCacheRequest');

  @override
  Iterable<Type> get types => const [
        FlushStageAuthorizersCacheRequest,
        _$FlushStageAuthorizersCacheRequest,
        FlushStageAuthorizersCacheRequestPayload,
        _$FlushStageAuthorizersCacheRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  FlushStageAuthorizersCacheRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return FlushStageAuthorizersCacheRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FlushStageAuthorizersCacheRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
