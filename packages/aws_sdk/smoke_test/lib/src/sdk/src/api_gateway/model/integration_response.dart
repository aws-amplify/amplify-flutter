// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.integration_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/content_handling_strategy.dart'
    as _i2;

part 'integration_response.g.dart';

/// Represents an integration response. The status code must map to an existing MethodResponse, and parameters and templates can be used to transform the back-end response.
abstract class IntegrationResponse
    with _i1.AWSEquatable<IntegrationResponse>
    implements Built<IntegrationResponse, IntegrationResponseBuilder> {
  /// Represents an integration response. The status code must map to an existing MethodResponse, and parameters and templates can be used to transform the back-end response.
  factory IntegrationResponse({
    _i2.ContentHandlingStrategy? contentHandling,
    Map<String, String>? responseParameters,
    Map<String, String>? responseTemplates,
    String? selectionPattern,
    String? statusCode,
  }) {
    return _$IntegrationResponse._(
      contentHandling: contentHandling,
      responseParameters:
          responseParameters == null ? null : _i3.BuiltMap(responseParameters),
      responseTemplates:
          responseTemplates == null ? null : _i3.BuiltMap(responseTemplates),
      selectionPattern: selectionPattern,
      statusCode: statusCode,
    );
  }

  /// Represents an integration response. The status code must map to an existing MethodResponse, and parameters and templates can be used to transform the back-end response.
  factory IntegrationResponse.build(
          [void Function(IntegrationResponseBuilder) updates]) =
      _$IntegrationResponse;

  const IntegrationResponse._();

  /// Constructs a [IntegrationResponse] from a [payload] and [response].
  factory IntegrationResponse.fromResponse(
    IntegrationResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    IntegrationResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IntegrationResponseBuilder b) {}

  /// Specifies how to handle response payload content type conversions. Supported values are `CONVERT\_TO\_BINARY` and `CONVERT\_TO\_TEXT`, with the following behaviors:
  ///
  /// If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.
  _i2.ContentHandlingStrategy? get contentHandling;

  /// A key-value map specifying response parameters that are passed to the method response from the back end. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of `method.response.header.{name}`, where `name` is a valid and unique header name. The mapped non-static value must match the pattern of `integration.response.header.{name}` or `integration.response.body.{JSON-expression}`, where `name` is a valid and unique response header name and `JSON-expression` is a valid JSON expression without the `$` prefix.
  _i3.BuiltMap<String, String>? get responseParameters;

  /// Specifies the templates used to transform the integration response body. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.
  _i3.BuiltMap<String, String>? get responseTemplates;

  /// Specifies the regular expression (regex) pattern used to choose an integration response based on the response from the back end. For example, if the success response returns nothing and the error response returns some string, you could use the `.+` regex to match error response. However, make sure that the error response does not contain any newline (`\\n`) character in such cases. If the back end is an AWS Lambda function, the AWS Lambda function error header is matched. For all other HTTP and AWS back ends, the HTTP status code is matched.
  String? get selectionPattern;

  /// Specifies the status code that is used to map the integration response to an existing MethodResponse.
  String? get statusCode;
  @override
  List<Object?> get props => [
        contentHandling,
        responseParameters,
        responseTemplates,
        selectionPattern,
        statusCode,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IntegrationResponse');
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
    helper.add(
      'statusCode',
      statusCode,
    );
    return helper.toString();
  }
}

class IntegrationResponseRestJson1Serializer
    extends _i4.StructuredSmithySerializer<IntegrationResponse> {
  const IntegrationResponseRestJson1Serializer() : super('IntegrationResponse');

  @override
  Iterable<Type> get types => const [
        IntegrationResponse,
        _$IntegrationResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  IntegrationResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntegrationResponseBuilder();
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
              specifiedType: const FullType(_i2.ContentHandlingStrategy),
            ) as _i2.ContentHandlingStrategy);
          }
          break;
        case 'responseParameters':
          if (value != null) {
            result.responseParameters.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i3.BuiltMap<String, String>));
          }
          break;
        case 'responseTemplates':
          if (value != null) {
            result.responseTemplates.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i3.BuiltMap<String, String>));
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
        case 'statusCode':
          if (value != null) {
            result.statusCode = (serializers.deserialize(
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
    final payload = (object as IntegrationResponse);
    final result = <Object?>[];
    if (payload.contentHandling != null) {
      result
        ..add('contentHandling')
        ..add(serializers.serialize(
          payload.contentHandling!,
          specifiedType: const FullType(_i2.ContentHandlingStrategy),
        ));
    }
    if (payload.responseParameters != null) {
      result
        ..add('responseParameters')
        ..add(serializers.serialize(
          payload.responseParameters!,
          specifiedType: const FullType(
            _i3.BuiltMap,
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
            _i3.BuiltMap,
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
    if (payload.statusCode != null) {
      result
        ..add('statusCode')
        ..add(serializers.serialize(
          payload.statusCode!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
