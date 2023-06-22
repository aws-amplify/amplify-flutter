// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.method; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/api_gateway/model/integration.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/method_response.dart'
    as _i2;

part 'method.g.dart';

/// Represents a client-facing interface by which the client calls the API to access back-end resources. A Method resource is integrated with an Integration resource. Both consist of a request and one or more responses. The method request takes the client input that is passed to the back end through the integration request. A method response returns the output from the back end to the client through an integration response. A method request is embodied in a Method resource, whereas an integration request is embodied in an Integration resource. On the other hand, a method response is represented by a MethodResponse resource, whereas an integration response is represented by an IntegrationResponse resource.
abstract class Method
    with _i1.AWSEquatable<Method>
    implements Built<Method, MethodBuilder> {
  /// Represents a client-facing interface by which the client calls the API to access back-end resources. A Method resource is integrated with an Integration resource. Both consist of a request and one or more responses. The method request takes the client input that is passed to the back end through the integration request. A method response returns the output from the back end to the client through an integration response. A method request is embodied in a Method resource, whereas an integration request is embodied in an Integration resource. On the other hand, a method response is represented by a MethodResponse resource, whereas an integration response is represented by an IntegrationResponse resource.
  factory Method({
    String? httpMethod,
    String? authorizationType,
    String? authorizerId,
    bool? apiKeyRequired,
    String? requestValidatorId,
    String? operationName,
    Map<String, bool>? requestParameters,
    Map<String, String>? requestModels,
    Map<String, _i2.MethodResponse>? methodResponses,
    _i3.Integration? methodIntegration,
    List<String>? authorizationScopes,
  }) {
    return _$Method._(
      httpMethod: httpMethod,
      authorizationType: authorizationType,
      authorizerId: authorizerId,
      apiKeyRequired: apiKeyRequired,
      requestValidatorId: requestValidatorId,
      operationName: operationName,
      requestParameters:
          requestParameters == null ? null : _i4.BuiltMap(requestParameters),
      requestModels: requestModels == null ? null : _i4.BuiltMap(requestModels),
      methodResponses:
          methodResponses == null ? null : _i4.BuiltMap(methodResponses),
      methodIntegration: methodIntegration,
      authorizationScopes: authorizationScopes == null
          ? null
          : _i4.BuiltList(authorizationScopes),
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

  static const List<_i5.SmithySerializer<Method>> serializers = [
    MethodRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MethodBuilder b) {}

  /// The method's HTTP verb.
  String? get httpMethod;

  /// The method's authorization type. Valid values are `NONE` for open access, `AWS_IAM` for using AWS IAM permissions, `CUSTOM` for using a custom authorizer, or `COGNITO\_USER\_POOLS` for using a Cognito user pool.
  String? get authorizationType;

  /// The identifier of an Authorizer to use on this method. The `authorizationType` must be `CUSTOM`.
  String? get authorizerId;

  /// A boolean flag specifying whether a valid ApiKey is required to invoke this method.
  bool? get apiKeyRequired;

  /// The identifier of a RequestValidator for request validation.
  String? get requestValidatorId;

  /// A human-friendly operation identifier for the method. For example, you can assign the `operationName` of `ListPets` for the `GET /pets` method in the `PetStore` example.
  String? get operationName;

  /// A key-value map defining required or optional method request parameters that can be accepted by API Gateway. A key is a method request parameter name matching the pattern of `method.request.{location}.{name}`, where `location` is `querystring`, `path`, or `header` and `name` is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (`true`) or optional (`false`). The method request parameter names defined here are available in Integration to be mapped to integration request parameters or templates.
  _i4.BuiltMap<String, bool>? get requestParameters;

  /// A key-value map specifying data schemas, represented by Model resources, (as the mapped value) of the request payloads of given content types (as the mapping key).
  _i4.BuiltMap<String, String>? get requestModels;

  /// Gets a method response associated with a given HTTP status code.
  _i4.BuiltMap<String, _i2.MethodResponse>? get methodResponses;

  /// Gets the method's integration responsible for passing the client-submitted request to the back end and performing necessary transformations to make the request compliant with the back end.
  _i3.Integration? get methodIntegration;

  /// A list of authorization scopes configured on the method. The scopes are used with a `COGNITO\_USER\_POOLS` authorizer to authorize the method invocation. The authorization works by matching the method scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any method scopes matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the method scope is configured, the client must provide an access token instead of an identity token for authorization purposes.
  _i4.BuiltList<String>? get authorizationScopes;
  @override
  List<Object?> get props => [
        httpMethod,
        authorizationType,
        authorizerId,
        apiKeyRequired,
        requestValidatorId,
        operationName,
        requestParameters,
        requestModels,
        methodResponses,
        methodIntegration,
        authorizationScopes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Method')
      ..add(
        'httpMethod',
        httpMethod,
      )
      ..add(
        'authorizationType',
        authorizationType,
      )
      ..add(
        'authorizerId',
        authorizerId,
      )
      ..add(
        'apiKeyRequired',
        apiKeyRequired,
      )
      ..add(
        'requestValidatorId',
        requestValidatorId,
      )
      ..add(
        'operationName',
        operationName,
      )
      ..add(
        'requestParameters',
        requestParameters,
      )
      ..add(
        'requestModels',
        requestModels,
      )
      ..add(
        'methodResponses',
        methodResponses,
      )
      ..add(
        'methodIntegration',
        methodIntegration,
      )
      ..add(
        'authorizationScopes',
        authorizationScopes,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'apiKeyRequired':
          result.apiKeyRequired = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'authorizationScopes':
          result.authorizationScopes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'authorizationType':
          result.authorizationType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'authorizerId':
          result.authorizerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'httpMethod':
          result.httpMethod = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'methodIntegration':
          result.methodIntegration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Integration),
          ) as _i3.Integration));
        case 'methodResponses':
          result.methodResponses.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(_i2.MethodResponse),
              ],
            ),
          ) as _i4.BuiltMap<String, _i2.MethodResponse>));
        case 'operationName':
          result.operationName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'requestModels':
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
        case 'requestParameters':
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
        case 'requestValidatorId':
          result.requestValidatorId = (serializers.deserialize(
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
    Method object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Method(
      :apiKeyRequired,
      :authorizationScopes,
      :authorizationType,
      :authorizerId,
      :httpMethod,
      :methodIntegration,
      :methodResponses,
      :operationName,
      :requestModels,
      :requestParameters,
      :requestValidatorId
    ) = object;
    if (apiKeyRequired != null) {
      result$
        ..add('apiKeyRequired')
        ..add(serializers.serialize(
          apiKeyRequired,
          specifiedType: const FullType(bool),
        ));
    }
    if (authorizationScopes != null) {
      result$
        ..add('authorizationScopes')
        ..add(serializers.serialize(
          authorizationScopes,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (authorizationType != null) {
      result$
        ..add('authorizationType')
        ..add(serializers.serialize(
          authorizationType,
          specifiedType: const FullType(String),
        ));
    }
    if (authorizerId != null) {
      result$
        ..add('authorizerId')
        ..add(serializers.serialize(
          authorizerId,
          specifiedType: const FullType(String),
        ));
    }
    if (httpMethod != null) {
      result$
        ..add('httpMethod')
        ..add(serializers.serialize(
          httpMethod,
          specifiedType: const FullType(String),
        ));
    }
    if (methodIntegration != null) {
      result$
        ..add('methodIntegration')
        ..add(serializers.serialize(
          methodIntegration,
          specifiedType: const FullType(_i3.Integration),
        ));
    }
    if (methodResponses != null) {
      result$
        ..add('methodResponses')
        ..add(serializers.serialize(
          methodResponses,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(_i2.MethodResponse),
            ],
          ),
        ));
    }
    if (operationName != null) {
      result$
        ..add('operationName')
        ..add(serializers.serialize(
          operationName,
          specifiedType: const FullType(String),
        ));
    }
    if (requestModels != null) {
      result$
        ..add('requestModels')
        ..add(serializers.serialize(
          requestModels,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (requestParameters != null) {
      result$
        ..add('requestParameters')
        ..add(serializers.serialize(
          requestParameters,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(bool),
            ],
          ),
        ));
    }
    if (requestValidatorId != null) {
      result$
        ..add('requestValidatorId')
        ..add(serializers.serialize(
          requestValidatorId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
