// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.put_gateway_response_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/gateway_response_type.dart'
    as _i3;

part 'put_gateway_response_request.g.dart';

/// Creates a customization of a GatewayResponse of a specified response type and status code on the given RestApi.
abstract class PutGatewayResponseRequest
    with
        _i1.HttpInput<PutGatewayResponseRequestPayload>,
        _i2.AWSEquatable<PutGatewayResponseRequest>
    implements
        Built<PutGatewayResponseRequest, PutGatewayResponseRequestBuilder>,
        _i1.HasPayload<PutGatewayResponseRequestPayload> {
  /// Creates a customization of a GatewayResponse of a specified response type and status code on the given RestApi.
  factory PutGatewayResponseRequest({
    required String restApiId,
    required _i3.GatewayResponseType responseType,
    String? statusCode,
    Map<String, String>? responseParameters,
    Map<String, String>? responseTemplates,
  }) {
    return _$PutGatewayResponseRequest._(
      restApiId: restApiId,
      responseType: responseType,
      statusCode: statusCode,
      responseParameters:
          responseParameters == null ? null : _i4.BuiltMap(responseParameters),
      responseTemplates:
          responseTemplates == null ? null : _i4.BuiltMap(responseTemplates),
    );
  }

  /// Creates a customization of a GatewayResponse of a specified response type and status code on the given RestApi.
  factory PutGatewayResponseRequest.build(
          [void Function(PutGatewayResponseRequestBuilder) updates]) =
      _$PutGatewayResponseRequest;

  const PutGatewayResponseRequest._();

  factory PutGatewayResponseRequest.fromRequest(
    PutGatewayResponseRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutGatewayResponseRequest.build((b) {
        if (payload.responseParameters != null) {
          b.responseParameters.replace(payload.responseParameters!);
        }
        if (payload.responseTemplates != null) {
          b.responseTemplates.replace(payload.responseTemplates!);
        }
        b.statusCode = payload.statusCode;
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['responseType'] != null) {
          b.responseType =
              _i3.GatewayResponseType.values.byValue(labels['responseType']!);
        }
      });

  static const List<_i1.SmithySerializer<PutGatewayResponseRequestPayload>>
      serializers = [PutGatewayResponseRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutGatewayResponseRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The response type of the associated GatewayResponse
  _i3.GatewayResponseType get responseType;

  /// The HTTP status code of the GatewayResponse.
  String? get statusCode;

  /// Response parameters (paths, query strings and headers) of the GatewayResponse as a string-to-string map of key-value pairs.
  _i4.BuiltMap<String, String>? get responseParameters;

  /// Response templates of the GatewayResponse as a string-to-string map of key-value pairs.
  _i4.BuiltMap<String, String>? get responseTemplates;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'responseType':
        return responseType.value;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  PutGatewayResponseRequestPayload getPayload() =>
      PutGatewayResponseRequestPayload((b) {
        if (responseParameters != null) {
          b.responseParameters.replace(responseParameters!);
        }
        if (responseTemplates != null) {
          b.responseTemplates.replace(responseTemplates!);
        }
        b.statusCode = statusCode;
      });
  @override
  List<Object?> get props => [
        restApiId,
        responseType,
        statusCode,
        responseParameters,
        responseTemplates,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutGatewayResponseRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'responseType',
        responseType,
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
        'responseTemplates',
        responseTemplates,
      );
    return helper.toString();
  }
}

@_i5.internal
abstract class PutGatewayResponseRequestPayload
    with
        _i2.AWSEquatable<PutGatewayResponseRequestPayload>
    implements
        Built<PutGatewayResponseRequestPayload,
            PutGatewayResponseRequestPayloadBuilder> {
  factory PutGatewayResponseRequestPayload(
          [void Function(PutGatewayResponseRequestPayloadBuilder) updates]) =
      _$PutGatewayResponseRequestPayload;

  const PutGatewayResponseRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutGatewayResponseRequestPayloadBuilder b) {}

  /// Response parameters (paths, query strings and headers) of the GatewayResponse as a string-to-string map of key-value pairs.
  _i4.BuiltMap<String, String>? get responseParameters;

  /// Response templates of the GatewayResponse as a string-to-string map of key-value pairs.
  _i4.BuiltMap<String, String>? get responseTemplates;

  /// The HTTP status code of the GatewayResponse.
  String? get statusCode;
  @override
  List<Object?> get props => [
        responseParameters,
        responseTemplates,
        statusCode,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutGatewayResponseRequestPayload')
          ..add(
            'responseParameters',
            responseParameters,
          )
          ..add(
            'responseTemplates',
            responseTemplates,
          )
          ..add(
            'statusCode',
            statusCode,
          );
    return helper.toString();
  }
}

class PutGatewayResponseRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<PutGatewayResponseRequestPayload> {
  const PutGatewayResponseRequestRestJson1Serializer()
      : super('PutGatewayResponseRequest');

  @override
  Iterable<Type> get types => const [
        PutGatewayResponseRequest,
        _$PutGatewayResponseRequest,
        PutGatewayResponseRequestPayload,
        _$PutGatewayResponseRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  PutGatewayResponseRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutGatewayResponseRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'responseParameters':
          result.responseParameters.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i4.BuiltMap<String, String>));
        case 'responseTemplates':
          result.responseTemplates.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i4.BuiltMap<String, String>));
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
    PutGatewayResponseRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutGatewayResponseRequestPayload(
      :responseParameters,
      :responseTemplates,
      :statusCode
    ) = object;
    if (responseParameters != null) {
      result$
        ..add('responseParameters')
        ..add(serializers.serialize(
          responseParameters,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (responseTemplates != null) {
      result$
        ..add('responseTemplates')
        ..add(serializers.serialize(
          responseTemplates,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(String),
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
