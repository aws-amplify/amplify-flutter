// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_method_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_method_request.g.dart';

/// Request to describe an existing Method resource.
abstract class GetMethodRequest
    with
        _i1.HttpInput<GetMethodRequestPayload>,
        _i2.AWSEquatable<GetMethodRequest>
    implements
        Built<GetMethodRequest, GetMethodRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetMethodRequestPayload> {
  /// Request to describe an existing Method resource.
  factory GetMethodRequest({
    required String httpMethod,
    required String resourceId,
    required String restApiId,
  }) {
    return _$GetMethodRequest._(
      httpMethod: httpMethod,
      resourceId: resourceId,
      restApiId: restApiId,
    );
  }

  /// Request to describe an existing Method resource.
  factory GetMethodRequest.build(
      [void Function(GetMethodRequestBuilder) updates]) = _$GetMethodRequest;

  const GetMethodRequest._();

  factory GetMethodRequest.fromRequest(
    GetMethodRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetMethodRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['resourceId'] != null) {
          b.resourceId = labels['resourceId']!;
        }
        if (labels['httpMethod'] != null) {
          b.httpMethod = labels['httpMethod']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetMethodRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetMethodRequestBuilder b) {}

  /// Specifies the method request's HTTP method type.
  String get httpMethod;

  /// The Resource identifier for the Method resource.
  String get resourceId;

  /// The string identifier of the associated RestApi.
  String get restApiId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'resourceId':
        return resourceId;
      case 'httpMethod':
        return httpMethod;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetMethodRequestPayload getPayload() => GetMethodRequestPayload();
  @override
  List<Object?> get props => [
        httpMethod,
        resourceId,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetMethodRequest');
    helper.add(
      'httpMethod',
      httpMethod,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetMethodRequestPayload
    with _i2.AWSEquatable<GetMethodRequestPayload>
    implements
        Built<GetMethodRequestPayload, GetMethodRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetMethodRequestPayload(
          [void Function(GetMethodRequestPayloadBuilder) updates]) =
      _$GetMethodRequestPayload;

  const GetMethodRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetMethodRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetMethodRequestPayload');
    return helper.toString();
  }
}

class GetMethodRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetMethodRequestPayload> {
  const GetMethodRequestRestJson1Serializer() : super('GetMethodRequest');

  @override
  Iterable<Type> get types => const [
        GetMethodRequest,
        _$GetMethodRequest,
        GetMethodRequestPayload,
        _$GetMethodRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetMethodRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetMethodRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
