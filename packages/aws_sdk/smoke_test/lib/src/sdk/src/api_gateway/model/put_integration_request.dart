// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.put_integration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i8;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/connection_type.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/content_handling_strategy.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/integration_type.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/api_gateway/model/tls_config.dart'
    as _i5;

part 'put_integration_request.g.dart';

/// Sets up a method's integration.
abstract class PutIntegrationRequest
    with
        _i1.HttpInput<PutIntegrationRequestPayload>,
        _i2.AWSEquatable<PutIntegrationRequest>
    implements
        Built<PutIntegrationRequest, PutIntegrationRequestBuilder>,
        _i1.HasPayload<PutIntegrationRequestPayload> {
  /// Sets up a method's integration.
  factory PutIntegrationRequest({
    List<String>? cacheKeyParameters,
    String? cacheNamespace,
    String? connectionId,
    _i3.ConnectionType? connectionType,
    _i4.ContentHandlingStrategy? contentHandling,
    String? credentials,
    required String httpMethod,
    String? integrationHttpMethod,
    String? passthroughBehavior,
    Map<String, String>? requestParameters,
    Map<String, String>? requestTemplates,
    required String resourceId,
    required String restApiId,
    int? timeoutInMillis,
    _i5.TlsConfig? tlsConfig,
    required _i6.IntegrationType type,
    String? uri,
  }) {
    return _$PutIntegrationRequest._(
      cacheKeyParameters:
          cacheKeyParameters == null ? null : _i7.BuiltList(cacheKeyParameters),
      cacheNamespace: cacheNamespace,
      connectionId: connectionId,
      connectionType: connectionType,
      contentHandling: contentHandling,
      credentials: credentials,
      httpMethod: httpMethod,
      integrationHttpMethod: integrationHttpMethod,
      passthroughBehavior: passthroughBehavior,
      requestParameters:
          requestParameters == null ? null : _i7.BuiltMap(requestParameters),
      requestTemplates:
          requestTemplates == null ? null : _i7.BuiltMap(requestTemplates),
      resourceId: resourceId,
      restApiId: restApiId,
      timeoutInMillis: timeoutInMillis,
      tlsConfig: tlsConfig,
      type: type,
      uri: uri,
    );
  }

  /// Sets up a method's integration.
  factory PutIntegrationRequest.build(
          [void Function(PutIntegrationRequestBuilder) updates]) =
      _$PutIntegrationRequest;

  const PutIntegrationRequest._();

  factory PutIntegrationRequest.fromRequest(
    PutIntegrationRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutIntegrationRequest.build((b) {
        if (payload.cacheKeyParameters != null) {
          b.cacheKeyParameters.replace(payload.cacheKeyParameters!);
        }
        b.cacheNamespace = payload.cacheNamespace;
        b.connectionId = payload.connectionId;
        b.connectionType = payload.connectionType;
        b.contentHandling = payload.contentHandling;
        b.credentials = payload.credentials;
        b.integrationHttpMethod = payload.integrationHttpMethod;
        b.passthroughBehavior = payload.passthroughBehavior;
        if (payload.requestParameters != null) {
          b.requestParameters.replace(payload.requestParameters!);
        }
        if (payload.requestTemplates != null) {
          b.requestTemplates.replace(payload.requestTemplates!);
        }
        b.timeoutInMillis = payload.timeoutInMillis;
        if (payload.tlsConfig != null) {
          b.tlsConfig.replace(payload.tlsConfig!);
        }
        b.type = payload.type;
        b.uri = payload.uri;
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
    PutIntegrationRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutIntegrationRequestBuilder b) {}

  /// A list of request parameters whose values API Gateway caches. To be valid values for `cacheKeyParameters`, these parameters must also be specified for Method `requestParameters`.
  _i7.BuiltList<String>? get cacheKeyParameters;

  /// Specifies a group of related cached parameters. By default, API Gateway uses the resource ID as the `cacheNamespace`. You can specify the same `cacheNamespace` across resources to return the same cached data for requests to different resources.
  String? get cacheNamespace;

  /// The ID of the VpcLink used for the integration. Specify this value only if you specify `VPC_LINK` as the connection type.
  String? get connectionId;

  /// The type of the network connection to the integration endpoint. The valid value is `INTERNET` for connections through the public routable internet or `VPC_LINK` for private connections between API Gateway and a network load balancer in a VPC. The default value is `INTERNET`.
  _i3.ConnectionType? get connectionType;

  /// Specifies how to handle request payload content type conversions. Supported values are `CONVERT\_TO\_BINARY` and `CONVERT\_TO\_TEXT`, with the following behaviors:
  ///
  /// If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the `passthroughBehavior` is configured to support payload pass-through.
  _i4.ContentHandlingStrategy? get contentHandling;

  /// Specifies whether credentials are required for a put integration.
  String? get credentials;

  /// Specifies the HTTP method for the integration.
  String get httpMethod;

  /// The HTTP method for the integration.
  String? get integrationHttpMethod;

  /// Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the `requestTemplates` property on the Integration resource. There are three valid values: `WHEN\_NO\_MATCH`, `WHEN\_NO\_TEMPLATES`, and `NEVER`.
  String? get passthroughBehavior;

  /// A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of `method.request.{location}.{name}`, where `location` is `querystring`, `path`, or `header` and `name` must be a valid and unique method request parameter name.
  _i7.BuiltMap<String, String>? get requestParameters;

  /// Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.
  _i7.BuiltMap<String, String>? get requestTemplates;

  /// Specifies a put integration request's resource ID.
  String get resourceId;

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds.
  int? get timeoutInMillis;

  /// Specifies the TLS configuration for an integration.
  _i5.TlsConfig? get tlsConfig;

  /// Specifies a put integration input's type.
  _i6.IntegrationType get type;

  /// Specifies Uniform Resource Identifier (URI) of the integration endpoint. For HTTP or `HTTP_PROXY` integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the RFC-3986 specification, for either standard integration, where `connectionType` is not `VPC_LINK`, or private integration, where `connectionType` is `VPC_LINK`. For a private HTTP integration, the URI is not used for routing. For `AWS` or `AWS_PROXY` integrations, the URI is of the form `arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api`}. Here, {Region} is the API Gateway region (e.g., us-east-1); {service} is the name of the integrated Amazon Web Services service (e.g., s3); and {subdomain} is a designated subdomain supported by certain Amazon Web Services service for fast host-name lookup. action can be used for an Amazon Web Services service action-based API, using an Action={name}&{p1}={v1}&p2={v2}... query string. The ensuing {service\_api} refers to a supported action {name} plus any required input parameters. Alternatively, path can be used for an Amazon Web Services service path-based API. The ensuing service\_api refers to the path to an Amazon Web Services service resource, including the region of the integrated Amazon Web Services service, if applicable. For example, for integration with the S3 API of `GetObject`, the `uri` can be either `arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}` or `arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}`.
  String? get uri;
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
  PutIntegrationRequestPayload getPayload() =>
      PutIntegrationRequestPayload((b) {
        if (cacheKeyParameters != null) {
          b.cacheKeyParameters.replace(cacheKeyParameters!);
        }
        b.cacheNamespace = cacheNamespace;
        b.connectionId = connectionId;
        b.connectionType = connectionType;
        b.contentHandling = contentHandling;
        b.credentials = credentials;
        b.integrationHttpMethod = integrationHttpMethod;
        b.passthroughBehavior = passthroughBehavior;
        if (requestParameters != null) {
          b.requestParameters.replace(requestParameters!);
        }
        if (requestTemplates != null) {
          b.requestTemplates.replace(requestTemplates!);
        }
        b.timeoutInMillis = timeoutInMillis;
        if (tlsConfig != null) {
          b.tlsConfig.replace(tlsConfig!);
        }
        b.type = type;
        b.uri = uri;
      });
  @override
  List<Object?> get props => [
        cacheKeyParameters,
        cacheNamespace,
        connectionId,
        connectionType,
        contentHandling,
        credentials,
        httpMethod,
        integrationHttpMethod,
        passthroughBehavior,
        requestParameters,
        requestTemplates,
        resourceId,
        restApiId,
        timeoutInMillis,
        tlsConfig,
        type,
        uri,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutIntegrationRequest');
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
      'integrationHttpMethod',
      integrationHttpMethod,
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
      'resourceId',
      resourceId,
    );
    helper.add(
      'restApiId',
      restApiId,
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

@_i8.internal
abstract class PutIntegrationRequestPayload
    with
        _i2.AWSEquatable<PutIntegrationRequestPayload>
    implements
        Built<PutIntegrationRequestPayload,
            PutIntegrationRequestPayloadBuilder> {
  factory PutIntegrationRequestPayload(
          [void Function(PutIntegrationRequestPayloadBuilder) updates]) =
      _$PutIntegrationRequestPayload;

  const PutIntegrationRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutIntegrationRequestPayloadBuilder b) {}

  /// A list of request parameters whose values API Gateway caches. To be valid values for `cacheKeyParameters`, these parameters must also be specified for Method `requestParameters`.
  _i7.BuiltList<String>? get cacheKeyParameters;

  /// Specifies a group of related cached parameters. By default, API Gateway uses the resource ID as the `cacheNamespace`. You can specify the same `cacheNamespace` across resources to return the same cached data for requests to different resources.
  String? get cacheNamespace;

  /// The ID of the VpcLink used for the integration. Specify this value only if you specify `VPC_LINK` as the connection type.
  String? get connectionId;

  /// The type of the network connection to the integration endpoint. The valid value is `INTERNET` for connections through the public routable internet or `VPC_LINK` for private connections between API Gateway and a network load balancer in a VPC. The default value is `INTERNET`.
  _i3.ConnectionType? get connectionType;

  /// Specifies how to handle request payload content type conversions. Supported values are `CONVERT\_TO\_BINARY` and `CONVERT\_TO\_TEXT`, with the following behaviors:
  ///
  /// If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the `passthroughBehavior` is configured to support payload pass-through.
  _i4.ContentHandlingStrategy? get contentHandling;

  /// Specifies whether credentials are required for a put integration.
  String? get credentials;

  /// The HTTP method for the integration.
  String? get integrationHttpMethod;

  /// Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the `requestTemplates` property on the Integration resource. There are three valid values: `WHEN\_NO\_MATCH`, `WHEN\_NO\_TEMPLATES`, and `NEVER`.
  String? get passthroughBehavior;

  /// A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of `method.request.{location}.{name}`, where `location` is `querystring`, `path`, or `header` and `name` must be a valid and unique method request parameter name.
  _i7.BuiltMap<String, String>? get requestParameters;

  /// Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.
  _i7.BuiltMap<String, String>? get requestTemplates;

  /// Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds.
  int? get timeoutInMillis;

  /// Specifies the TLS configuration for an integration.
  _i5.TlsConfig? get tlsConfig;

  /// Specifies a put integration input's type.
  _i6.IntegrationType get type;

  /// Specifies Uniform Resource Identifier (URI) of the integration endpoint. For HTTP or `HTTP_PROXY` integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the RFC-3986 specification, for either standard integration, where `connectionType` is not `VPC_LINK`, or private integration, where `connectionType` is `VPC_LINK`. For a private HTTP integration, the URI is not used for routing. For `AWS` or `AWS_PROXY` integrations, the URI is of the form `arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api`}. Here, {Region} is the API Gateway region (e.g., us-east-1); {service} is the name of the integrated Amazon Web Services service (e.g., s3); and {subdomain} is a designated subdomain supported by certain Amazon Web Services service for fast host-name lookup. action can be used for an Amazon Web Services service action-based API, using an Action={name}&{p1}={v1}&p2={v2}... query string. The ensuing {service\_api} refers to a supported action {name} plus any required input parameters. Alternatively, path can be used for an Amazon Web Services service path-based API. The ensuing service\_api refers to the path to an Amazon Web Services service resource, including the region of the integrated Amazon Web Services service, if applicable. For example, for integration with the S3 API of `GetObject`, the `uri` can be either `arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}` or `arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}`.
  String? get uri;
  @override
  List<Object?> get props => [
        cacheKeyParameters,
        cacheNamespace,
        connectionId,
        connectionType,
        contentHandling,
        credentials,
        integrationHttpMethod,
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
    final helper = newBuiltValueToStringHelper('PutIntegrationRequestPayload');
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
      'integrationHttpMethod',
      integrationHttpMethod,
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

class PutIntegrationRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<PutIntegrationRequestPayload> {
  const PutIntegrationRequestRestJson1Serializer()
      : super('PutIntegrationRequest');

  @override
  Iterable<Type> get types => const [
        PutIntegrationRequest,
        _$PutIntegrationRequest,
        PutIntegrationRequestPayload,
        _$PutIntegrationRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  PutIntegrationRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutIntegrationRequestPayloadBuilder();
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
              specifiedType: const FullType(_i3.ConnectionType),
            ) as _i3.ConnectionType);
          }
          break;
        case 'contentHandling':
          if (value != null) {
            result.contentHandling = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ContentHandlingStrategy),
            ) as _i4.ContentHandlingStrategy);
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
            result.integrationHttpMethod = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
          result.type = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i6.IntegrationType),
          ) as _i6.IntegrationType);
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
    final payload = object is PutIntegrationRequest
        ? object.getPayload()
        : (object as PutIntegrationRequestPayload);
    final result = <Object?>[
      'type',
      serializers.serialize(
        payload.type,
        specifiedType: const FullType(_i6.IntegrationType),
      ),
    ];
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
          specifiedType: const FullType(_i3.ConnectionType),
        ));
    }
    if (payload.contentHandling != null) {
      result
        ..add('contentHandling')
        ..add(serializers.serialize(
          payload.contentHandling!,
          specifiedType: const FullType(_i4.ContentHandlingStrategy),
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
    if (payload.integrationHttpMethod != null) {
      result
        ..add('httpMethod')
        ..add(serializers.serialize(
          payload.integrationHttpMethod!,
          specifiedType: const FullType(String),
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
