// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.put_integration_response_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/content_handling_strategy.dart'
    as _i3;

part 'put_integration_response_request.g.dart';

/// Represents a put integration response request.
abstract class PutIntegrationResponseRequest
    with
        _i1.HttpInput<PutIntegrationResponseRequestPayload>,
        _i2.AWSEquatable<PutIntegrationResponseRequest>
    implements
        Built<PutIntegrationResponseRequest,
            PutIntegrationResponseRequestBuilder>,
        _i1.HasPayload<PutIntegrationResponseRequestPayload> {
  /// Represents a put integration response request.
  factory PutIntegrationResponseRequest({
    _i3.ContentHandlingStrategy? contentHandling,
    required String httpMethod,
    required String resourceId,
    Map<String, String>? responseParameters,
    Map<String, String>? responseTemplates,
    required String restApiId,
    String? selectionPattern,
    required String statusCode,
  }) {
    return _$PutIntegrationResponseRequest._(
      contentHandling: contentHandling,
      httpMethod: httpMethod,
      resourceId: resourceId,
      responseParameters:
          responseParameters == null ? null : _i4.BuiltMap(responseParameters),
      responseTemplates:
          responseTemplates == null ? null : _i4.BuiltMap(responseTemplates),
      restApiId: restApiId,
      selectionPattern: selectionPattern,
      statusCode: statusCode,
    );
  }

  /// Represents a put integration response request.
  factory PutIntegrationResponseRequest.build(
          [void Function(PutIntegrationResponseRequestBuilder) updates]) =
      _$PutIntegrationResponseRequest;

  const PutIntegrationResponseRequest._();

  factory PutIntegrationResponseRequest.fromRequest(
    PutIntegrationResponseRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutIntegrationResponseRequest.build((b) {
        b.contentHandling = payload.contentHandling;
        if (payload.responseParameters != null) {
          b.responseParameters.replace(payload.responseParameters!);
        }
        if (payload.responseTemplates != null) {
          b.responseTemplates.replace(payload.responseTemplates!);
        }
        b.selectionPattern = payload.selectionPattern;
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

  static const List<_i1.SmithySerializer> serializers = [
    PutIntegrationResponseRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutIntegrationResponseRequestBuilder b) {}

  /// Specifies how to handle response payload content type conversions. Supported values are `CONVERT\_TO\_BINARY` and `CONVERT\_TO\_TEXT`, with the following behaviors:
  ///
  /// If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.
  _i3.ContentHandlingStrategy? get contentHandling;

  /// Specifies a put integration response request's HTTP method.
  String get httpMethod;

  /// Specifies a put integration response request's resource identifier.
  String get resourceId;

  /// A key-value map specifying response parameters that are passed to the method response from the back end. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of `method.response.header.{name}`, where `name` is a valid and unique header name. The mapped non-static value must match the pattern of `integration.response.header.{name}` or `integration.response.body.{JSON-expression}`, where `name` must be a valid and unique response header name and `JSON-expression` a valid JSON expression without the `$` prefix.
  _i4.BuiltMap<String, String>? get responseParameters;

  /// Specifies a put integration response's templates.
  _i4.BuiltMap<String, String>? get responseTemplates;

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// Specifies the selection pattern of a put integration response.
  String? get selectionPattern;

  /// Specifies the status code that is used to map the integration response to an existing MethodResponse.
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
  PutIntegrationResponseRequestPayload getPayload() =>
      PutIntegrationResponseRequestPayload((b) {
        b.contentHandling = contentHandling;
        if (responseParameters != null) {
          b.responseParameters.replace(responseParameters!);
        }
        if (responseTemplates != null) {
          b.responseTemplates.replace(responseTemplates!);
        }
        b.selectionPattern = selectionPattern;
      });
  @override
  List<Object?> get props => [
        contentHandling,
        httpMethod,
        resourceId,
        responseParameters,
        responseTemplates,
        restApiId,
        selectionPattern,
        statusCode,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutIntegrationResponseRequest');
    helper.add(
      'contentHandling',
      contentHandling,
    );
    helper.add(
      'httpMethod',
      httpMethod,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'responseParameters',
      responseParameters,
    );
    helper.add(
      'responseTemplates',
      responseTemplates,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    helper.add(
      'selectionPattern',
      selectionPattern,
    );
    helper.add(
      'statusCode',
      statusCode,
    );
    return helper.toString();
  }
}

@_i5.internal
abstract class PutIntegrationResponseRequestPayload
    with
        _i2.AWSEquatable<PutIntegrationResponseRequestPayload>
    implements
        Built<PutIntegrationResponseRequestPayload,
            PutIntegrationResponseRequestPayloadBuilder> {
  factory PutIntegrationResponseRequestPayload(
      [void Function(PutIntegrationResponseRequestPayloadBuilder)
          updates]) = _$PutIntegrationResponseRequestPayload;

  const PutIntegrationResponseRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutIntegrationResponseRequestPayloadBuilder b) {}

  /// Specifies how to handle response payload content type conversions. Supported values are `CONVERT\_TO\_BINARY` and `CONVERT\_TO\_TEXT`, with the following behaviors:
  ///
  /// If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.
  _i3.ContentHandlingStrategy? get contentHandling;

  /// A key-value map specifying response parameters that are passed to the method response from the back end. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of `method.response.header.{name}`, where `name` is a valid and unique header name. The mapped non-static value must match the pattern of `integration.response.header.{name}` or `integration.response.body.{JSON-expression}`, where `name` must be a valid and unique response header name and `JSON-expression` a valid JSON expression without the `$` prefix.
  _i4.BuiltMap<String, String>? get responseParameters;

  /// Specifies a put integration response's templates.
  _i4.BuiltMap<String, String>? get responseTemplates;

  /// Specifies the selection pattern of a put integration response.
  String? get selectionPattern;
  @override
  List<Object?> get props => [
        contentHandling,
        responseParameters,
        responseTemplates,
        selectionPattern,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutIntegrationResponseRequestPayload');
    helper.add(
      'contentHandling',
      contentHandling,
    );
    helper.add(
      'responseParameters',
      responseParameters,
    );
    helper.add(
      'responseTemplates',
      responseTemplates,
    );
    helper.add(
      'selectionPattern',
      selectionPattern,
    );
    return helper.toString();
  }
}

class PutIntegrationResponseRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<PutIntegrationResponseRequestPayload> {
  const PutIntegrationResponseRequestRestJson1Serializer()
      : super('PutIntegrationResponseRequest');

  @override
  Iterable<Type> get types => const [
        PutIntegrationResponseRequest,
        _$PutIntegrationResponseRequest,
        PutIntegrationResponseRequestPayload,
        _$PutIntegrationResponseRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  PutIntegrationResponseRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutIntegrationResponseRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'contentHandling':
          if (value != null) {
            result.contentHandling = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ContentHandlingStrategy),
            ) as _i3.ContentHandlingStrategy);
          }
          break;
        case 'responseParameters':
          if (value != null) {
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
          }
          break;
        case 'responseTemplates':
          if (value != null) {
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
          }
          break;
        case 'selectionPattern':
          if (value != null) {
            result.selectionPattern = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is PutIntegrationResponseRequest
        ? object.getPayload()
        : (object as PutIntegrationResponseRequestPayload);
    final result = <Object?>[];
    if (payload.contentHandling != null) {
      result
        ..add('contentHandling')
        ..add(serializers.serialize(
          payload.contentHandling!,
          specifiedType: const FullType(_i3.ContentHandlingStrategy),
        ));
    }
    if (payload.responseParameters != null) {
      result
        ..add('responseParameters')
        ..add(serializers.serialize(
          payload.responseParameters!,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.responseTemplates != null) {
      result
        ..add('responseTemplates')
        ..add(serializers.serialize(
          payload.responseTemplates!,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.selectionPattern != null) {
      result
        ..add('selectionPattern')
        ..add(serializers.serialize(
          payload.selectionPattern!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
