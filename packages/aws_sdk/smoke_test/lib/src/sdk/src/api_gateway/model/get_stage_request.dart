// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_stage_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_stage_request.g.dart';

/// Requests API Gateway to get information about a Stage resource.
abstract class GetStageRequest
    with
        _i1.HttpInput<GetStageRequestPayload>,
        _i2.AWSEquatable<GetStageRequest>
    implements
        Built<GetStageRequest, GetStageRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetStageRequestPayload> {
  /// Requests API Gateway to get information about a Stage resource.
  factory GetStageRequest({
    required String restApiId,
    required String stageName,
  }) {
    return _$GetStageRequest._(
      restApiId: restApiId,
      stageName: stageName,
    );
  }

  /// Requests API Gateway to get information about a Stage resource.
  factory GetStageRequest.build(
      [void Function(GetStageRequestBuilder) updates]) = _$GetStageRequest;

  const GetStageRequest._();

  factory GetStageRequest.fromRequest(
    GetStageRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetStageRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['stageName'] != null) {
          b.stageName = labels['stageName']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetStageRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetStageRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The name of the Stage resource to get information about.
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
  GetStageRequestPayload getPayload() => GetStageRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        stageName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetStageRequest');
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
abstract class GetStageRequestPayload
    with _i2.AWSEquatable<GetStageRequestPayload>
    implements
        Built<GetStageRequestPayload, GetStageRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetStageRequestPayload(
          [void Function(GetStageRequestPayloadBuilder) updates]) =
      _$GetStageRequestPayload;

  const GetStageRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetStageRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetStageRequestPayload');
    return helper.toString();
  }
}

class GetStageRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetStageRequestPayload> {
  const GetStageRequestRestJson1Serializer() : super('GetStageRequest');

  @override
  Iterable<Type> get types => const [
        GetStageRequest,
        _$GetStageRequest,
        GetStageRequestPayload,
        _$GetStageRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetStageRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetStageRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
