// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.get_method_response_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_method_response_request.g.dart';

/// Request to describe a MethodResponse resource.
abstract class GetMethodResponseRequest
    with
        _i1.HttpInput<GetMethodResponseRequestPayload>,
        _i2.AWSEquatable<GetMethodResponseRequest>
    implements
        Built<GetMethodResponseRequest, GetMethodResponseRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetMethodResponseRequestPayload> {
  /// Request to describe a MethodResponse resource.
  factory GetMethodResponseRequest({
    required String restApiId,
    required String resourceId,
    required String httpMethod,
    required String statusCode,
  }) {
    return _$GetMethodResponseRequest._(
      restApiId: restApiId,
      resourceId: resourceId,
      httpMethod: httpMethod,
      statusCode: statusCode,
    );
  }

  /// Request to describe a MethodResponse resource.
  factory GetMethodResponseRequest.build(
          [void Function(GetMethodResponseRequestBuilder) updates]) =
      _$GetMethodResponseRequest;

  const GetMethodResponseRequest._();

  factory GetMethodResponseRequest.fromRequest(
    GetMethodResponseRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetMethodResponseRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['resourceId'] != null) {
          b.resourceId = labels['resourceId']!;
        }
        if (labels['httpMethod'] != null) {
          b.httpMethod = labels['httpMethod']!;
        }
        if (labels['statusCode'] != null) {
          b.statusCode = labels['statusCode']!;
        }
      });

  static const List<_i1.SmithySerializer<GetMethodResponseRequestPayload>>
      serializers = [GetMethodResponseRequestRestJson1Serializer()];

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The Resource identifier for the MethodResponse resource.
  String get resourceId;

  /// The HTTP verb of the Method resource.
  String get httpMethod;

  /// The status code for the MethodResponse resource.
  String get statusCode;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'resourceId':
        return resourceId;
      case 'httpMethod':
        return httpMethod;
      case 'statusCode':
        return statusCode;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetMethodResponseRequestPayload getPayload() =>
      GetMethodResponseRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        resourceId,
        httpMethod,
        statusCode,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetMethodResponseRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'httpMethod',
        httpMethod,
      )
      ..add(
        'statusCode',
        statusCode,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetMethodResponseRequestPayload
    with
        _i2.AWSEquatable<GetMethodResponseRequestPayload>
    implements
        Built<GetMethodResponseRequestPayload,
            GetMethodResponseRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetMethodResponseRequestPayload(
          [void Function(GetMethodResponseRequestPayloadBuilder) updates]) =
      _$GetMethodResponseRequestPayload;

  const GetMethodResponseRequestPayload._();

  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetMethodResponseRequestPayload');
    return helper.toString();
  }
}

class GetMethodResponseRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetMethodResponseRequestPayload> {
  const GetMethodResponseRequestRestJson1Serializer()
      : super('GetMethodResponseRequest');

  @override
  Iterable<Type> get types => const [
        GetMethodResponseRequest,
        _$GetMethodResponseRequest,
        GetMethodResponseRequestPayload,
        _$GetMethodResponseRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetMethodResponseRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetMethodResponseRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetMethodResponseRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
