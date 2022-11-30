// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.integration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i8;
import 'package:smoke_test/src/sdk/src/api_gateway/model/connection_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/api_gateway/model/content_handling_strategy.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/integration_response.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/integration_type.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/api_gateway/model/tls_config.dart'
    as _i5;

part 'integration.g.dart';

/// Represents an HTTP, HTTP\_PROXY, AWS, AWS\_PROXY, or Mock integration.
abstract class Integration
    with _i1.AWSEquatable<Integration>
    implements Built<Integration, IntegrationBuilder> {
  /// Represents an HTTP, HTTP\_PROXY, AWS, AWS\_PROXY, or Mock integration.
  factory Integration({
    List<String>? cacheKeyParameters,
    String? cacheNamespace,
    String? connectionId,
    _i2.ConnectionType? connectionType,
    _i3.ContentHandlingStrategy? contentHandling,
    String? credentials,
    String? httpMethod,
    Map<String, _i4.IntegrationResponse>? integrationResponses,
    String? passthroughBehavior,
    Map<String, String>? requestParameters,
    Map<String, String>? requestTemplates,
    int? timeoutInMillis,
    _i5.TlsConfig? tlsConfig,
    _i6.IntegrationType? type,
    String? uri,
  }) {
    return _$Integration._(
      cacheKeyParameters:
          cacheKeyParameters == null ? null : _i7.BuiltList(cacheKeyParameters),
      cacheNamespace: cacheNamespace,
      connectionId: connectionId,
      connectionType: connectionType,
      contentHandling: contentHandling,
      credentials: credentials,
      httpMethod: httpMethod,
      integrationResponses: integrationResponses == null
          ? null
          : _i7.BuiltMap(integrationResponses),
      passthroughBehavior: passthroughBehavior,
      requestParameters:
          requestParameters == null ? null : _i7.BuiltMap(requestParameters),
      requestTemplates:
          requestTemplates == null ? null : _i7.BuiltMap(requestTemplates),
      timeoutInMillis: timeoutInMillis,
      tlsConfig: tlsConfig,
      type: type,
      uri: uri,
    );
  }

  /// Represents an HTTP, HTTP\_PROXY, AWS, AWS\_PROXY, or Mock integration.
  factory Integration.build([void Function(IntegrationBuilder) updates]) =
      _$Integration;

  const Integration._();

  /// Constructs a [Integration] from a [payload] and [response].
  factory Integration.fromResponse(
    Integration payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i8.SmithySerializer> serializers = [
    IntegrationRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IntegrationBuilder b) {}

  /// A list of request parameters whose values API Gateway caches. To be valid values for `cacheKeyParameters`, these parameters must also be specified for Method `requestParameters`.
  _i7.BuiltList<String>? get cacheKeyParameters;

  /// Specifies a group of related cached parameters. By default, API Gateway uses the resource ID as the `cacheNamespace`. You can specify the same `cacheNamespace` across resources to return the same cached data for requests to different resources.
  String? get cacheNamespace;

  /// The ID of the VpcLink used for the integration when `connectionType=VPC_LINK` and undefined, otherwise.
  String? get connectionId;

  /// The type of the network connection to the integration endpoint. The valid value is `INTERNET` for connections through the public routable internet or `VPC_LINK` for private connections between API Gateway and a network load balancer in a VPC. The default value is `INTERNET`.
  _i2.ConnectionType? get connectionType;

  /// Specifies how to handle request payload content type conversions. Supported values are `CONVERT\_TO\_BINARY` and `CONVERT\_TO\_TEXT`, with the following behaviors:
  ///
  /// If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the `passthroughBehavior` is configured to support payload pass-through.
  _i3.ContentHandlingStrategy? get contentHandling;

  /// Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string `arn:aws:iam::\*:user/\*`. To use resource-based permissions on supported AWS services, specify null.
  String? get credentials;

  /// Specifies the integration's HTTP method type.
  String? get httpMethod;

  /// Specifies the integration's responses.
  _i7.BuiltMap<String, _i4.IntegrationResponse>? get integrationResponses;

  /// Specifies how the method request body of an unmapped content type will be passed through the integration request to the back end without transformation. A content type is unmapped if no mapping template is defined in the integration or the content type does not match any of the mapped content types, as specified in `requestTemplates`. The valid value is one of the following: `WHEN\_NO\_MATCH`: passes the method request body through the integration request to the back end without transformation when the method request content type does not match any content type associated with the mapping templates defined in the integration request. `WHEN\_NO\_TEMPLATES`: passes the method request body through the integration request to the back end without transformation when no mapping template is defined in the integration request. If a template is defined when this option is selected, the method request of an unmapped content-type will be rejected with an HTTP 415 Unsupported Media Type response. `NEVER`: rejects the method request with an HTTP 415 Unsupported Media Type response when either the method request content type does not match any content type associated with the mapping templates defined in the integration request or no mapping template is defined in the integration request.
  String? get passthroughBehavior;

  /// A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of `method.request.{location}.{name}`, where `location` is `querystring`, `path`, or `header` and `name` must be a valid and unique method request parameter name.
  _i7.BuiltMap<String, String>? get requestParameters;

  /// Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.
  _i7.BuiltMap<String, String>? get requestTemplates;

  /// Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds.
  int? get timeoutInMillis;

  /// Specifies the TLS configuration for an integration.
  _i5.TlsConfig? get tlsConfig;

  /// Specifies an API method integration type. The valid value is one of the following:
  ///
  /// For the HTTP and HTTP proxy integrations, each integration can specify a protocol (`http/https`), port and path. Standard 80 and 443 ports are supported as well as custom ports above 1024. An HTTP or HTTP proxy integration with a `connectionType` of `VPC_LINK` is referred to as a private integration and uses a VpcLink to connect API Gateway to a network load balancer of a VPC.
  _i6.IntegrationType? get type;

  /// Specifies Uniform Resource Identifier (URI) of the integration endpoint.
  ///
  /// For `HTTP` or `HTTP_PROXY` integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the RFC-3986 specification, for either standard integration, where `connectionType` is not `VPC_LINK`, or private integration, where `connectionType` is `VPC_LINK`. For a private HTTP integration, the URI is not used for routing. For `AWS` or `AWS_PROXY` integrations, the URI is of the form `arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api}`. Here, {Region} is the API Gateway region (e.g., us-east-1); {service} is the name of the integrated Amazon Web Services service (e.g., s3); and {subdomain} is a designated subdomain supported by certain Amazon Web Services service for fast host-name lookup. action can be used for an Amazon Web Services service action-based API, using an Action={name}&{p1}={v1}&p2={v2}... query string. The ensuing {service\_api} refers to a supported action {name} plus any required input parameters. Alternatively, path can be used for an AWS service path-based API. The ensuing service\_api refers to the path to an Amazon Web Services service resource, including the region of the integrated Amazon Web Services service, if applicable. For example, for integration with the S3 API of GetObject, the uri can be either `arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}` or `arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}`
  String? get uri;
  @override
  List<Object?> get props => [
        cacheKeyParameters,
        cacheNamespace,
        connectionId,
        connectionType,
        contentHandling,
        credentials,
        httpMethod,
        integrationResponses,
        passthroughBehavior,
        requestParameters,
        requestTemplates,
        timeoutInMillis,
        tlsConfig,
        type,
        uri,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Integration');
    helper.add(
      'cacheKeyParameters',
      cacheKeyParameters,
    );
    helper.add(
      'cacheNamespace',
      cacheNamespace,
    );
    helper.add(
      'connectionId',
      connectionId,
    );
    helper.add(
      'connectionType',
      connectionType,
    );
    helper.add(
      'contentHandling',
      contentHandling,
    );
    helper.add(
      'credentials',
      credentials,
    );
    helper.add(
      'httpMethod',
      httpMethod,
    );
    helper.add(
      'integrationResponses',
      integrationResponses,
    );
    helper.add(
      'passthroughBehavior',
      passthroughBehavior,
    );
    helper.add(
      'requestParameters',
      requestParameters,
    );
    helper.add(
      'requestTemplates',
      requestTemplates,
    );
    helper.add(
      'timeoutInMillis',
      timeoutInMillis,
    );
    helper.add(
      'tlsConfig',
      tlsConfig,
    );
    helper.add(
      'type',
      type,
    );
    helper.add(
      'uri',
      uri,
    );
    return helper.toString();
  }
}

class IntegrationRestJson1Serializer
    extends _i8.StructuredSmithySerializer<Integration> {
  const IntegrationRestJson1Serializer() : super('Integration');

  @override
  Iterable<Type> get types => const [
        Integration,
        _$Integration,
      ];
  @override
  Iterable<_i8.ShapeId> get supportedProtocols => const [
        _i8.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  Integration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntegrationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'cacheKeyParameters':
          if (value != null) {
            result.cacheKeyParameters.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(String)],
              ),
            ) as _i7.BuiltList<String>));
          }
          break;
        case 'cacheNamespace':
          if (value != null) {
            result.cacheNamespace = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'connectionId':
          if (value != null) {
            result.connectionId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'connectionType':
          if (value != null) {
            result.connectionType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ConnectionType),
            ) as _i2.ConnectionType);
          }
          break;
        case 'contentHandling':
          if (value != null) {
            result.contentHandling = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ContentHandlingStrategy),
            ) as _i3.ContentHandlingStrategy);
          }
          break;
        case 'credentials':
          if (value != null) {
            result.credentials = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'httpMethod':
          if (value != null) {
            result.httpMethod = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'integrationResponses':
          if (value != null) {
            result.integrationResponses.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltMap,
                [
                  FullType(String),
                  FullType(_i4.IntegrationResponse),
                ],
              ),
            ) as _i7.BuiltMap<String, _i4.IntegrationResponse>));
          }
          break;
        case 'passthroughBehavior':
          if (value != null) {
            result.passthroughBehavior = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'requestParameters':
          if (value != null) {
            result.requestParameters.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i7.BuiltMap<String, String>));
          }
          break;
        case 'requestTemplates':
          if (value != null) {
            result.requestTemplates.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i7.BuiltMap<String, String>));
          }
          break;
        case 'timeoutInMillis':
          if (value != null) {
            result.timeoutInMillis = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'tlsConfig':
          if (value != null) {
            result.tlsConfig.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.TlsConfig),
            ) as _i5.TlsConfig));
          }
          break;
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.IntegrationType),
            ) as _i6.IntegrationType);
          }
          break;
        case 'uri':
          if (value != null) {
            result.uri = (serializers.deserialize(
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
    final payload = (object as Integration);
    final result = <Object?>[];
    if (payload.cacheKeyParameters != null) {
      result
        ..add('cacheKeyParameters')
        ..add(serializers.serialize(
          payload.cacheKeyParameters!,
          specifiedType: const FullType(
            _i7.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.cacheNamespace != null) {
      result
        ..add('cacheNamespace')
        ..add(serializers.serialize(
          payload.cacheNamespace!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.connectionId != null) {
      result
        ..add('connectionId')
        ..add(serializers.serialize(
          payload.connectionId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.connectionType != null) {
      result
        ..add('connectionType')
        ..add(serializers.serialize(
          payload.connectionType!,
          specifiedType: const FullType(_i2.ConnectionType),
        ));
    }
    if (payload.contentHandling != null) {
      result
        ..add('contentHandling')
        ..add(serializers.serialize(
          payload.contentHandling!,
          specifiedType: const FullType(_i3.ContentHandlingStrategy),
        ));
    }
    if (payload.credentials != null) {
      result
        ..add('credentials')
        ..add(serializers.serialize(
          payload.credentials!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.httpMethod != null) {
      result
        ..add('httpMethod')
        ..add(serializers.serialize(
          payload.httpMethod!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.integrationResponses != null) {
      result
        ..add('integrationResponses')
        ..add(serializers.serialize(
          payload.integrationResponses!,
          specifiedType: const FullType(
            _i7.BuiltMap,
            [
              FullType(String),
              FullType(_i4.IntegrationResponse),
            ],
          ),
        ));
    }
    if (payload.passthroughBehavior != null) {
      result
        ..add('passthroughBehavior')
        ..add(serializers.serialize(
          payload.passthroughBehavior!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.requestParameters != null) {
      result
        ..add('requestParameters')
        ..add(serializers.serialize(
          payload.requestParameters!,
          specifiedType: const FullType(
            _i7.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.requestTemplates != null) {
      result
        ..add('requestTemplates')
        ..add(serializers.serialize(
          payload.requestTemplates!,
          specifiedType: const FullType(
            _i7.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.timeoutInMillis != null) {
      result
        ..add('timeoutInMillis')
        ..add(serializers.serialize(
          payload.timeoutInMillis!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.tlsConfig != null) {
      result
        ..add('tlsConfig')
        ..add(serializers.serialize(
          payload.tlsConfig!,
          specifiedType: const FullType(_i5.TlsConfig),
        ));
    }
    if (payload.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType(_i6.IntegrationType),
        ));
    }
    if (payload.uri != null) {
      result
        ..add('uri')
        ..add(serializers.serialize(
          payload.uri!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
