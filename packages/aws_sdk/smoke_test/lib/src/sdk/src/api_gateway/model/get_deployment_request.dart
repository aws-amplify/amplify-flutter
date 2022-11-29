// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_deployment_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'get_deployment_request.g.dart';

/// Requests API Gateway to get information about a Deployment resource.
abstract class GetDeploymentRequest
    with
        _i1.HttpInput<GetDeploymentRequestPayload>,
        _i2.AWSEquatable<GetDeploymentRequest>
    implements
        Built<GetDeploymentRequest, GetDeploymentRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetDeploymentRequestPayload> {
  /// Requests API Gateway to get information about a Deployment resource.
  factory GetDeploymentRequest({
    required String deploymentId,
    List<String>? embed,
    required String restApiId,
  }) {
    return _$GetDeploymentRequest._(
      deploymentId: deploymentId,
      embed: embed == null ? null : _i3.BuiltList(embed),
      restApiId: restApiId,
    );
  }

  /// Requests API Gateway to get information about a Deployment resource.
  factory GetDeploymentRequest.build(
          [void Function(GetDeploymentRequestBuilder) updates]) =
      _$GetDeploymentRequest;

  const GetDeploymentRequest._();

  factory GetDeploymentRequest.fromRequest(
    GetDeploymentRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetDeploymentRequest.build((b) {
        if (request.queryParameters['embed'] != null) {
          b.embed.addAll(_i1
              .parseHeader(request.queryParameters['embed']!)
              .map((el) => el.trim()));
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['deploymentId'] != null) {
          b.deploymentId = labels['deploymentId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetDeploymentRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDeploymentRequestBuilder b) {}

  /// The identifier of the Deployment resource to get information about.
  String get deploymentId;

  /// A query parameter to retrieve the specified embedded resources of the returned Deployment resource in the response. In a REST API call, this `embed` parameter value is a list of comma-separated strings, as in `GET /restapis/{restapi\_id}/deployments/{deployment\_id}?embed=var1,var2`. The SDK and other platform-dependent libraries might use a different format for the list. Currently, this request supports only retrieval of the embedded API summary this way. Hence, the parameter value must be a single-valued list containing only the `"apisummary"` string. For example, `GET /restapis/{restapi\_id}/deployments/{deployment\_id}?embed=apisummary`.
  _i3.BuiltList<String>? get embed;

  /// The string identifier of the associated RestApi.
  String get restApiId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'deploymentId':
        return deploymentId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetDeploymentRequestPayload getPayload() => GetDeploymentRequestPayload();
  @override
  List<Object?> get props => [
        deploymentId,
        embed,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetDeploymentRequest');
    helper.add(
      'deploymentId',
      deploymentId,
    );
    helper.add(
      'embed',
      embed,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    return helper.toString();
  }
}

@_i4.internal
abstract class GetDeploymentRequestPayload
    with _i2.AWSEquatable<GetDeploymentRequestPayload>
    implements
        Built<GetDeploymentRequestPayload, GetDeploymentRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetDeploymentRequestPayload(
          [void Function(GetDeploymentRequestPayloadBuilder) updates]) =
      _$GetDeploymentRequestPayload;

  const GetDeploymentRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDeploymentRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetDeploymentRequestPayload');
    return helper.toString();
  }
}

class GetDeploymentRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetDeploymentRequestPayload> {
  const GetDeploymentRequestRestJson1Serializer()
      : super('GetDeploymentRequest');

  @override
  Iterable<Type> get types => const [
        GetDeploymentRequest,
        _$GetDeploymentRequest,
        GetDeploymentRequestPayload,
        _$GetDeploymentRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetDeploymentRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetDeploymentRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
