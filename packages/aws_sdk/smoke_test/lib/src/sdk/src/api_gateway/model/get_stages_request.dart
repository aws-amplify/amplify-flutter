// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.get_stages_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_stages_request.g.dart';

/// Requests API Gateway to get information about one or more Stage resources.
abstract class GetStagesRequest
    with
        _i1.HttpInput<GetStagesRequestPayload>,
        _i2.AWSEquatable<GetStagesRequest>
    implements
        Built<GetStagesRequest, GetStagesRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetStagesRequestPayload> {
  /// Requests API Gateway to get information about one or more Stage resources.
  factory GetStagesRequest({
    required String restApiId,
    String? deploymentId,
  }) {
    return _$GetStagesRequest._(
      restApiId: restApiId,
      deploymentId: deploymentId,
    );
  }

  /// Requests API Gateway to get information about one or more Stage resources.
  factory GetStagesRequest.build(
      [void Function(GetStagesRequestBuilder) updates]) = _$GetStagesRequest;

  const GetStagesRequest._();

  factory GetStagesRequest.fromRequest(
    GetStagesRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetStagesRequest.build((b) {
        if (request.queryParameters['deploymentId'] != null) {
          b.deploymentId = request.queryParameters['deploymentId']!;
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<_i1.SmithySerializer<GetStagesRequestPayload>> serializers =
      [GetStagesRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetStagesRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The stages' deployment identifiers.
  String? get deploymentId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetStagesRequestPayload getPayload() => GetStagesRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        deploymentId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetStagesRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'deploymentId',
        deploymentId,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetStagesRequestPayload
    with _i2.AWSEquatable<GetStagesRequestPayload>
    implements
        Built<GetStagesRequestPayload, GetStagesRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetStagesRequestPayload(
          [void Function(GetStagesRequestPayloadBuilder) updates]) =
      _$GetStagesRequestPayload;

  const GetStagesRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetStagesRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetStagesRequestPayload');
    return helper.toString();
  }
}

class GetStagesRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetStagesRequestPayload> {
  const GetStagesRequestRestJson1Serializer() : super('GetStagesRequest');

  @override
  Iterable<Type> get types => const [
        GetStagesRequest,
        _$GetStagesRequest,
        GetStagesRequestPayload,
        _$GetStagesRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetStagesRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetStagesRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetStagesRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
