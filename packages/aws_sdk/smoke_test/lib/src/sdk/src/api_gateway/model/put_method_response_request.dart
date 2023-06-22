// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.put_method_response_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'put_method_response_request.g.dart';

/// Request to add a MethodResponse to an existing Method resource.
abstract class PutMethodResponseRequest
    with
        _i1.HttpInput<PutMethodResponseRequestPayload>,
        _i2.AWSEquatable<PutMethodResponseRequest>
    implements
        Built<PutMethodResponseRequest, PutMethodResponseRequestBuilder>,
        _i1.HasPayload<PutMethodResponseRequestPayload> {
  /// Request to add a MethodResponse to an existing Method resource.
  factory PutMethodResponseRequest({
    required String restApiId,
    required String resourceId,
    required String httpMethod,
    required String statusCode,
    Map<String, bool>? responseParameters,
    Map<String, String>? responseModels,
  }) {
    return _$PutMethodResponseRequest._(
      restApiId: restApiId,
      resourceId: resourceId,
      httpMethod: httpMethod,
      statusCode: statusCode,
      responseParameters:
          responseParameters == null ? null : _i3.BuiltMap(responseParameters),
      responseModels:
          responseModels == null ? null : _i3.BuiltMap(responseModels),
    );
  }

  /// Request to add a MethodResponse to an existing Method resource.
  factory PutMethodResponseRequest.build(
          [void Function(PutMethodResponseRequestBuilder) updates]) =
      _$PutMethodResponseRequest;

  const PutMethodResponseRequest._();

  factory PutMethodResponseRequest.fromRequest(
    PutMethodResponseRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutMethodResponseRequest.build((b) {
        if (payload.responseModels != null) {
          b.responseModels.replace(payload.responseModels!);
        }
        if (payload.responseParameters != null) {
          b.responseParameters.replace(payload.responseParameters!);
        }
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

  static const List<_i1.SmithySerializer<PutMethodResponseRequestPayload>>
      serializers = [PutMethodResponseRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutMethodResponseRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The Resource identifier for the Method resource.
  String get resourceId;

  /// The HTTP verb of the Method resource.
  String get httpMethod;

  /// The method response's status code.
  String get statusCode;

  /// A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header name and the associated value is a Boolean flag indicating whether the method response parameter is required or not. The method response header names must match the pattern of `method.response.header.{name}`, where `name` is a valid and unique header name. The response parameter names defined here are available in the integration response to be mapped from an integration response header expressed in `integration.response.header.{name}`, a static value enclosed within a pair of single quotes (e.g., `'application/json'`), or a JSON expression from the back-end response payload in the form of `integration.response.body.{JSON-expression}`, where `JSON-expression` is a valid JSON expression without the `$` prefix.)
  _i3.BuiltMap<String, bool>? get responseParameters;

  /// Specifies the Model resources used for the response's content type. Response models are represented as a key/value map, with a content type as the key and a Model name as the value.
  _i3.BuiltMap<String, String>? get responseModels;
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
  PutMethodResponseRequestPayload getPayload() =>
      PutMethodResponseRequestPayload((b) {
        if (responseModels != null) {
          b.responseModels.replace(responseModels!);
        }
        if (responseParameters != null) {
          b.responseParameters.replace(responseParameters!);
        }
      });
  @override
  List<Object?> get props => [
        restApiId,
        resourceId,
        httpMethod,
        statusCode,
        responseParameters,
        responseModels,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutMethodResponseRequest')
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
      )
      ..add(
        'responseParameters',
        responseParameters,
      )
      ..add(
        'responseModels',
        responseModels,
      );
    return helper.toString();
  }
}

@_i4.internal
abstract class PutMethodResponseRequestPayload
    with
        _i2.AWSEquatable<PutMethodResponseRequestPayload>
    implements
        Built<PutMethodResponseRequestPayload,
            PutMethodResponseRequestPayloadBuilder> {
  factory PutMethodResponseRequestPayload(
          [void Function(PutMethodResponseRequestPayloadBuilder) updates]) =
      _$PutMethodResponseRequestPayload;

  const PutMethodResponseRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutMethodResponseRequestPayloadBuilder b) {}

  /// Specifies the Model resources used for the response's content type. Response models are represented as a key/value map, with a content type as the key and a Model name as the value.
  _i3.BuiltMap<String, String>? get responseModels;

  /// A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header name and the associated value is a Boolean flag indicating whether the method response parameter is required or not. The method response header names must match the pattern of `method.response.header.{name}`, where `name` is a valid and unique header name. The response parameter names defined here are available in the integration response to be mapped from an integration response header expressed in `integration.response.header.{name}`, a static value enclosed within a pair of single quotes (e.g., `'application/json'`), or a JSON expression from the back-end response payload in the form of `integration.response.body.{JSON-expression}`, where `JSON-expression` is a valid JSON expression without the `$` prefix.)
  _i3.BuiltMap<String, bool>? get responseParameters;
  @override
  List<Object?> get props => [
        responseModels,
        responseParameters,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutMethodResponseRequestPayload')
          ..add(
            'responseModels',
            responseModels,
          )
          ..add(
            'responseParameters',
            responseParameters,
          );
    return helper.toString();
  }
}

class PutMethodResponseRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<PutMethodResponseRequestPayload> {
  const PutMethodResponseRequestRestJson1Serializer()
      : super('PutMethodResponseRequest');

  @override
  Iterable<Type> get types => const [
        PutMethodResponseRequest,
        _$PutMethodResponseRequest,
        PutMethodResponseRequestPayload,
        _$PutMethodResponseRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  PutMethodResponseRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutMethodResponseRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'responseModels':
          result.responseModels.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i3.BuiltMap<String, String>));
        case 'responseParameters':
          result.responseParameters.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(bool),
              ],
            ),
          ) as _i3.BuiltMap<String, bool>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutMethodResponseRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutMethodResponseRequestPayload(
      :responseModels,
      :responseParameters
    ) = object;
    if (responseModels != null) {
      result$
        ..add('responseModels')
        ..add(serializers.serialize(
          responseModels,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (responseParameters != null) {
      result$
        ..add('responseParameters')
        ..add(serializers.serialize(
          responseParameters,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(bool),
            ],
          ),
        ));
    }
    return result$;
  }
}
