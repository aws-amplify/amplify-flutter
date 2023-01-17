// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_deployments_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_deployments_request.g.dart';

/// Requests API Gateway to get information about a Deployments collection.
abstract class GetDeploymentsRequest
    with
        _i1.HttpInput<GetDeploymentsRequestPayload>,
        _i2.AWSEquatable<GetDeploymentsRequest>
    implements
        Built<GetDeploymentsRequest, GetDeploymentsRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetDeploymentsRequestPayload> {
  /// Requests API Gateway to get information about a Deployments collection.
  factory GetDeploymentsRequest({
    int? limit,
    String? position,
    required String restApiId,
  }) {
    return _$GetDeploymentsRequest._(
      limit: limit,
      position: position,
      restApiId: restApiId,
    );
  }

  /// Requests API Gateway to get information about a Deployments collection.
  factory GetDeploymentsRequest.build(
          [void Function(GetDeploymentsRequestBuilder) updates]) =
      _$GetDeploymentsRequest;

  const GetDeploymentsRequest._();

  factory GetDeploymentsRequest.fromRequest(
    GetDeploymentsRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetDeploymentsRequest.build((b) {
        if (request.queryParameters['position'] != null) {
          b.position = request.queryParameters['position']!;
        }
        if (request.queryParameters['limit'] != null) {
          b.limit = int.parse(request.queryParameters['limit']!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetDeploymentsRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDeploymentsRequestBuilder b) {}

  /// The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
  int? get limit;

  /// The current pagination position in the paged result set.
  String? get position;

  /// The string identifier of the associated RestApi.
  String get restApiId;
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
  GetDeploymentsRequestPayload getPayload() => GetDeploymentsRequestPayload();
  @override
  List<Object?> get props => [
        limit,
        position,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetDeploymentsRequest');
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'position',
      position,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetDeploymentsRequestPayload
    with
        _i2.AWSEquatable<GetDeploymentsRequestPayload>
    implements
        Built<GetDeploymentsRequestPayload,
            GetDeploymentsRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetDeploymentsRequestPayload(
          [void Function(GetDeploymentsRequestPayloadBuilder) updates]) =
      _$GetDeploymentsRequestPayload;

  const GetDeploymentsRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDeploymentsRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetDeploymentsRequestPayload');
    return helper.toString();
  }
}

class GetDeploymentsRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetDeploymentsRequestPayload> {
  const GetDeploymentsRequestRestJson1Serializer()
      : super('GetDeploymentsRequest');

  @override
  Iterable<Type> get types => const [
        GetDeploymentsRequest,
        _$GetDeploymentsRequest,
        GetDeploymentsRequestPayload,
        _$GetDeploymentsRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetDeploymentsRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetDeploymentsRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
