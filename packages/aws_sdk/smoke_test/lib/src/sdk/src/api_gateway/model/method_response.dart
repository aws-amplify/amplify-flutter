// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.method_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'method_response.g.dart';

/// Represents a method response of a given HTTP status code returned to the client. The method response is passed from the back end through the associated integration response that can be transformed using a mapping template.
abstract class MethodResponse
    with _i1.AWSEquatable<MethodResponse>
    implements Built<MethodResponse, MethodResponseBuilder> {
  /// Represents a method response of a given HTTP status code returned to the client. The method response is passed from the back end through the associated integration response that can be transformed using a mapping template.
  factory MethodResponse({
    String? statusCode,
    Map<String, bool>? responseParameters,
    Map<String, String>? responseModels,
  }) {
    return _$MethodResponse._(
      statusCode: statusCode,
      responseParameters:
          responseParameters == null ? null : _i2.BuiltMap(responseParameters),
      responseModels:
          responseModels == null ? null : _i2.BuiltMap(responseModels),
    );
  }

  /// Represents a method response of a given HTTP status code returned to the client. The method response is passed from the back end through the associated integration response that can be transformed using a mapping template.
  factory MethodResponse.build([void Function(MethodResponseBuilder) updates]) =
      _$MethodResponse;

  const MethodResponse._();

  /// Constructs a [MethodResponse] from a [payload] and [response].
  factory MethodResponse.fromResponse(
    MethodResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<MethodResponse>> serializers = [
    MethodResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MethodResponseBuilder b) {}

  /// The method response's status code.
  String? get statusCode;

  /// A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header and the value specifies whether the associated method response header is required or not. The expression of the key must match the pattern `method.response.header.{name}`, where `name` is a valid and unique header name. API Gateway passes certain integration response data to the method response headers specified here according to the mapping you prescribe in the API's IntegrationResponse. The integration response data that can be mapped include an integration response header expressed in `integration.response.header.{name}`, a static value enclosed within a pair of single quotes (e.g., `'application/json'`), or a JSON expression from the back-end response payload in the form of `integration.response.body.{JSON-expression}`, where `JSON-expression` is a valid JSON expression without the `$` prefix.)
  _i2.BuiltMap<String, bool>? get responseParameters;

  /// Specifies the Model resources used for the response's content-type. Response models are represented as a key/value map, with a content-type as the key and a Model name as the value.
  _i2.BuiltMap<String, String>? get responseModels;
  @override
  List<Object?> get props => [
        statusCode,
        responseParameters,
        responseModels,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MethodResponse')
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

class MethodResponseRestJson1Serializer
    extends _i3.StructuredSmithySerializer<MethodResponse> {
  const MethodResponseRestJson1Serializer() : super('MethodResponse');

  @override
  Iterable<Type> get types => const [
        MethodResponse,
        _$MethodResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MethodResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MethodResponseBuilder();
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
              _i2.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i2.BuiltMap<String, String>));
        case 'responseParameters':
          result.responseParameters.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltMap,
              [
                FullType(String),
                FullType(bool),
              ],
            ),
          ) as _i2.BuiltMap<String, bool>));
        case 'statusCode':
          result.statusCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MethodResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MethodResponse(:responseModels, :responseParameters, :statusCode) =
        object;
    if (responseModels != null) {
      result$
        ..add('responseModels')
        ..add(serializers.serialize(
          responseModels,
          specifiedType: const FullType(
            _i2.BuiltMap,
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
            _i2.BuiltMap,
            [
              FullType(String),
              FullType(bool),
            ],
          ),
        ));
    }
    if (statusCode != null) {
      result$
        ..add('statusCode')
        ..add(serializers.serialize(
          statusCode,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
