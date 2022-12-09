// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.method; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/api_gateway/model/integration.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/api_gateway/model/method_response.dart'
    as _i3;

part 'method.g.dart';

/// Represents a client-facing interface by which the client calls the API to access back-end resources. A Method resource is integrated with an Integration resource. Both consist of a request and one or more responses. The method request takes the client input that is passed to the back end through the integration request. A method response returns the output from the back end to the client through an integration response. A method request is embodied in a Method resource, whereas an integration request is embodied in an Integration resource. On the other hand, a method response is represented by a MethodResponse resource, whereas an integration response is represented by an IntegrationResponse resource.
abstract class Method
    with _i1.AWSEquatable<Method>
    implements Built<Method, MethodBuilder> {
  /// Represents a client-facing interface by which the client calls the API to access back-end resources. A Method resource is integrated with an Integration resource. Both consist of a request and one or more responses. The method request takes the client input that is passed to the back end through the integration request. A method response returns the output from the back end to the client through an integration response. A method request is embodied in a Method resource, whereas an integration request is embodied in an Integration resource. On the other hand, a method response is represented by a MethodResponse resource, whereas an integration response is represented by an IntegrationResponse resource.
  factory Method({
    bool? apiKeyRequired,
    List<String>? authorizationScopes,
    String? authorizationType,
    String? authorizerId,
    String? httpMethod,
    _i2.Integration? methodIntegration,
    Map<String, _i3.MethodResponse>? methodResponses,
    String? operationName,
    Map<String, String>? requestModels,
    Map<String, bool>? requestParameters,
    String? requestValidatorId,
  }) {
    return _$Method._(
      apiKeyRequired: apiKeyRequired,
      authorizationScopes: authorizationScopes == null
          ? null
          : _i4.BuiltList(authorizationScopes),
      authorizationType: authorizationType,
      authorizerId: authorizerId,
      httpMethod: httpMethod,
      methodIntegration: methodIntegration,
      methodResponses:
          methodResponses == null ? null : _i4.BuiltMap(methodResponses),
      operationName: operationName,
      requestModels: requestModels == null ? null : _i4.BuiltMap(requestModels),
      requestParameters:
          requestParameters == null ? null : _i4.BuiltMap(requestParameters),
      requestValidatorId: requestValidatorId,
    );
  }

  /// Represents a client-facing interface by which the client calls the API to access back-end resources. A Method resource is integrated with an Integration resource. Both consist of a request and one or more responses. The method request takes the client input that is passed to the back end through the integration request. A method response returns the output from the back end to the client through an integration response. A method request is embodied in a Method resource, whereas an integration request is embodied in an Integration resource. On the other hand, a method response is represented by a MethodResponse resource, whereas an integration response is represented by an IntegrationResponse resource.
  factory Method.build([void Function(MethodBuilder) updates]) = _$Method;

  const Method._();

  /// Constructs a [Method] from a [payload] and [response].
  factory Method.fromResponse(
    Method payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    MethodRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MethodBuilder b) {}

  /// A boolean flag specifying whether a valid ApiKey is required to invoke this method.
  bool? get apiKeyRequired;

  /// A list of authorization scopes configured on the method. The scopes are used with a `COGNITO\_USER\_POOLS` authorizer to authorize the method invocation. The authorization works by matching the method scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any method scopes matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the method scope is configured, the client must provide an access token instead of an identity token for authorization purposes.
  _i4.BuiltList<String>? get authorizationScopes;

  /// The method's authorization type. Valid values are `NONE` for open access, `AWS_IAM` for using AWS IAM permissions, `CUSTOM` for using a custom authorizer, or `COGNITO\_USER\_POOLS` for using a Cognito user pool.
  String? get authorizationType;

  /// The identifier of an Authorizer to use on this method. The `authorizationType` must be `CUSTOM`.
  String? get authorizerId;

  /// The method's HTTP verb.
  String? get httpMethod;

  /// Gets the method's integration responsible for passing the client-submitted request to the back end and performing necessary transformations to make the request compliant with the back end.
  _i2.Integration? get methodIntegration;

  /// Gets a method response associated with a given HTTP status code.
  _i4.BuiltMap<String, _i3.MethodResponse>? get methodResponses;

  /// A human-friendly operation identifier for the method. For example, you can assign the `operationName` of `ListPets` for the `GET /pets` method in the `PetStore` example.
  String? get operationName;

  /// A key-value map specifying data schemas, represented by Model resources, (as the mapped value) of the request payloads of given content types (as the mapping key).
  _i4.BuiltMap<String, String>? get requestModels;

  /// A key-value map defining required or optional method request parameters that can be accepted by API Gateway. A key is a method request parameter name matching the pattern of `method.request.{location}.{name}`, where `location` is `querystring`, `path`, or `header` and `name` is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (`true`) or optional (`false`). The method request parameter names defined here are available in Integration to be mapped to integration request parameters or templates.
  _i4.BuiltMap<String, bool>? get requestParameters;

  /// The identifier of a RequestValidator for request validation.
  String? get requestValidatorId;
  @override
  List<Object?> get props => [
        apiKeyRequired,
        authorizationScopes,
        authorizationType,
        authorizerId,
        httpMethod,
        methodIntegration,
        methodResponses,
        operationName,
        requestModels,
        requestParameters,
        requestValidatorId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Method');
    helper.add(
      'apiKeyRequired',
      apiKeyRequired,
    );
    helper.add(
      'authorizationScopes',
      authorizationScopes,
    );
    helper.add(
      'authorizationType',
      authorizationType,
    );
    helper.add(
      'authorizerId',
      authorizerId,
    );
    helper.add(
      'httpMethod',
      httpMethod,
    );
    helper.add(
      'methodIntegration',
      methodIntegration,
    );
    helper.add(
      'methodResponses',
      methodResponses,
    );
    helper.add(
      'operationName',
      operationName,
    );
    helper.add(
      'requestModels',
      requestModels,
    );
    helper.add(
      'requestParameters',
      requestParameters,
    );
    helper.add(
      'requestValidatorId',
      requestValidatorId,
    );
    return helper.toString();
  }
}

class MethodRestJson1Serializer extends _i5.StructuredSmithySerializer<Method> {
  const MethodRestJson1Serializer() : super('Method');

  @override
  Iterable<Type> get types => const [
        Method,
        _$Method,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  Method deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MethodBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'apiKeyRequired':
          if (value != null) {
            result.apiKeyRequired = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'authorizationScopes':
          if (value != null) {
            result.authorizationScopes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'authorizationType':
          if (value != null) {
            result.authorizationType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'authorizerId':
          if (value != null) {
            result.authorizerId = (serializers.deserialize(
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
        case 'methodIntegration':
          if (value != null) {
            result.methodIntegration.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Integration),
            ) as _i2.Integration));
          }
          break;
        case 'methodResponses':
          if (value != null) {
            result.methodResponses.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltMap,
                [
                  FullType(String),
                  FullType(_i3.MethodResponse),
                ],
              ),
            ) as _i4.BuiltMap<String, _i3.MethodResponse>));
          }
          break;
        case 'operationName':
          if (value != null) {
            result.operationName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'requestModels':
          if (value != null) {
            result.requestModels.replace((serializers.deserialize(
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
        case 'requestParameters':
          if (value != null) {
            result.requestParameters.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltMap,
                [
                  FullType(String),
                  FullType(bool),
                ],
              ),
            ) as _i4.BuiltMap<String, bool>));
          }
          break;
        case 'requestValidatorId':
          if (value != null) {
            result.requestValidatorId = (serializers.deserialize(
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
    final payload = (object as Method);
    final result = <Object?>[];
    if (payload.apiKeyRequired != null) {
      result
        ..add('apiKeyRequired')
        ..add(serializers.serialize(
          payload.apiKeyRequired!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.authorizationScopes != null) {
      result
        ..add('authorizationScopes')
        ..add(serializers.serialize(
          payload.authorizationScopes!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.authorizationType != null) {
      result
        ..add('authorizationType')
        ..add(serializers.serialize(
          payload.authorizationType!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.authorizerId != null) {
      result
        ..add('authorizerId')
        ..add(serializers.serialize(
          payload.authorizerId!,
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
    if (payload.methodIntegration != null) {
      result
        ..add('methodIntegration')
        ..add(serializers.serialize(
          payload.methodIntegration!,
          specifiedType: const FullType(_i2.Integration),
        ));
    }
    if (payload.methodResponses != null) {
      result
        ..add('methodResponses')
        ..add(serializers.serialize(
          payload.methodResponses!,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(_i3.MethodResponse),
            ],
          ),
        ));
    }
    if (payload.operationName != null) {
      result
        ..add('operationName')
        ..add(serializers.serialize(
          payload.operationName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.requestModels != null) {
      result
        ..add('requestModels')
        ..add(serializers.serialize(
          payload.requestModels!,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.requestParameters != null) {
      result
        ..add('requestParameters')
        ..add(serializers.serialize(
          payload.requestParameters!,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(bool),
            ],
          ),
        ));
    }
    if (payload.requestValidatorId != null) {
      result
        ..add('requestValidatorId')
        ..add(serializers.serialize(
          payload.requestValidatorId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
