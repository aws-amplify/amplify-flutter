// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.integration_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/content_handling_strategy.dart';

part 'integration_response.g.dart';

/// Represents an integration response. The status code must map to an existing MethodResponse, and parameters and templates can be used to transform the back-end response.
abstract class IntegrationResponse
    with _i1.AWSEquatable<IntegrationResponse>
    implements Built<IntegrationResponse, IntegrationResponseBuilder> {
  /// Represents an integration response. The status code must map to an existing MethodResponse, and parameters and templates can be used to transform the back-end response.
  factory IntegrationResponse({
    String? statusCode,
    String? selectionPattern,
    Map<String, String>? responseParameters,
    Map<String, String>? responseTemplates,
    ContentHandlingStrategy? contentHandling,
  }) {
    return _$IntegrationResponse._(
      statusCode: statusCode,
      selectionPattern: selectionPattern,
      responseParameters:
          responseParameters == null ? null : _i2.BuiltMap(responseParameters),
      responseTemplates:
          responseTemplates == null ? null : _i2.BuiltMap(responseTemplates),
      contentHandling: contentHandling,
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

  static const List<_i3.SmithySerializer<IntegrationResponse>> serializers = [
    IntegrationResponseRestJson1Serializer()
  ];

  /// Specifies the status code that is used to map the integration response to an existing MethodResponse.
  String? get statusCode;

  /// Specifies the regular expression (regex) pattern used to choose an integration response based on the response from the back end. For example, if the success response returns nothing and the error response returns some string, you could use the `.+` regex to match error response. However, make sure that the error response does not contain any newline (`\\n`) character in such cases. If the back end is an Lambda function, the Lambda function error header is matched. For all other HTTP and Amazon Web Services back ends, the HTTP status code is matched.
  String? get selectionPattern;

  /// A key-value map specifying response parameters that are passed to the method response from the back end. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of `method.response.header.{name}`, where `name` is a valid and unique header name. The mapped non-static value must match the pattern of `integration.response.header.{name}` or `integration.response.body.{JSON-expression}`, where `name` is a valid and unique response header name and `JSON-expression` is a valid JSON expression without the `$` prefix.
  _i2.BuiltMap<String, String>? get responseParameters;

  /// Specifies the templates used to transform the integration response body. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.
  _i2.BuiltMap<String, String>? get responseTemplates;

  /// Specifies how to handle response payload content type conversions. Supported values are `CONVERT\_TO\_BINARY` and `CONVERT\_TO\_TEXT`, with the following behaviors:
  ///
  /// If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.
  ContentHandlingStrategy? get contentHandling;
  @override
  List<Object?> get props => [
        statusCode,
        selectionPattern,
        responseParameters,
        responseTemplates,
        contentHandling,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IntegrationResponse')
      ..add(
        'statusCode',
        statusCode,
      )
      ..add(
        'selectionPattern',
        selectionPattern,
      )
      ..add(
        'responseParameters',
        responseParameters,
      )
      ..add(
        'responseTemplates',
        responseTemplates,
      )
      ..add(
        'contentHandling',
        contentHandling,
      );
    return helper.toString();
  }
}

class IntegrationResponseRestJson1Serializer
    extends _i3.StructuredSmithySerializer<IntegrationResponse> {
  const IntegrationResponseRestJson1Serializer() : super('IntegrationResponse');

  @override
  Iterable<Type> get types => const [
        IntegrationResponse,
        _$IntegrationResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'contentHandling':
          result.contentHandling = (serializers.deserialize(
            value,
            specifiedType: const FullType(ContentHandlingStrategy),
          ) as ContentHandlingStrategy);
        case 'responseParameters':
          result.responseParameters.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i2.BuiltMap<String, String>));
        case 'responseTemplates':
          result.responseTemplates.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i2.BuiltMap<String, String>));
        case 'selectionPattern':
          result.selectionPattern = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    IntegrationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final IntegrationResponse(
      :contentHandling,
      :responseParameters,
      :responseTemplates,
      :selectionPattern,
      :statusCode
    ) = object;
    if (contentHandling != null) {
      result$
        ..add('contentHandling')
        ..add(serializers.serialize(
          contentHandling,
          specifiedType: const FullType(ContentHandlingStrategy),
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
            _i2.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (selectionPattern != null) {
      result$
        ..add('selectionPattern')
        ..add(serializers.serialize(
          selectionPattern,
          specifiedType: const FullType(String),
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
