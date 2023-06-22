// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.create_authorizer_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/authorizer_type.dart'
    as _i3;

part 'create_authorizer_request.g.dart';

/// Request to add a new Authorizer to an existing RestApi resource.
abstract class CreateAuthorizerRequest
    with
        _i1.HttpInput<CreateAuthorizerRequestPayload>,
        _i2.AWSEquatable<CreateAuthorizerRequest>
    implements
        Built<CreateAuthorizerRequest, CreateAuthorizerRequestBuilder>,
        _i1.HasPayload<CreateAuthorizerRequestPayload> {
  /// Request to add a new Authorizer to an existing RestApi resource.
  factory CreateAuthorizerRequest({
    required String restApiId,
    required String name,
    required _i3.AuthorizerType type,
    List<String>? providerArNs,
    String? authType,
    String? authorizerUri,
    String? authorizerCredentials,
    String? identitySource,
    String? identityValidationExpression,
    int? authorizerResultTtlInSeconds,
  }) {
    return _$CreateAuthorizerRequest._(
      restApiId: restApiId,
      name: name,
      type: type,
      providerArNs: providerArNs == null ? null : _i4.BuiltList(providerArNs),
      authType: authType,
      authorizerUri: authorizerUri,
      authorizerCredentials: authorizerCredentials,
      identitySource: identitySource,
      identityValidationExpression: identityValidationExpression,
      authorizerResultTtlInSeconds: authorizerResultTtlInSeconds,
    );
  }

  /// Request to add a new Authorizer to an existing RestApi resource.
  factory CreateAuthorizerRequest.build(
          [void Function(CreateAuthorizerRequestBuilder) updates]) =
      _$CreateAuthorizerRequest;

  const CreateAuthorizerRequest._();

  factory CreateAuthorizerRequest.fromRequest(
    CreateAuthorizerRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      CreateAuthorizerRequest.build((b) {
        b.authType = payload.authType;
        b.authorizerCredentials = payload.authorizerCredentials;
        b.authorizerResultTtlInSeconds = payload.authorizerResultTtlInSeconds;
        b.authorizerUri = payload.authorizerUri;
        b.identitySource = payload.identitySource;
        b.identityValidationExpression = payload.identityValidationExpression;
        b.name = payload.name;
        if (payload.providerArNs != null) {
          b.providerArNs.replace(payload.providerArNs!);
        }
        b.type = payload.type;
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<_i1.SmithySerializer<CreateAuthorizerRequestPayload>>
      serializers = [CreateAuthorizerRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateAuthorizerRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The name of the authorizer.
  String get name;

  /// The authorizer type. Valid values are `TOKEN` for a Lambda function using a single authorization token submitted in a custom header, `REQUEST` for a Lambda function using incoming request parameters, and `COGNITO\_USER\_POOLS` for using an Amazon Cognito user pool.
  _i3.AuthorizerType get type;

  /// A list of the Amazon Cognito user pool ARNs for the `COGNITO\_USER\_POOLS` authorizer. Each element is of this format: `arn:aws:cognito-idp:{region}:{account\_id}:userpool/{user\_pool_id}`. For a `TOKEN` or `REQUEST` authorizer, this is not defined.
  _i4.BuiltList<String>? get providerArNs;

  /// Optional customer-defined field, used in OpenAPI imports and exports without functional impact.
  String? get authType;

  /// Specifies the authorizer's Uniform Resource Identifier (URI). For `TOKEN` or `REQUEST` authorizers, this must be a well-formed Lambda function URI, for example, `arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account\_id}:function:{lambda\_function_name}/invocations`. In general, the URI has this form `arn:aws:apigateway:{region}:lambda:path/{service_api}`, where `{region}` is the same as the region hosting the Lambda function, `path` indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial `/`. For Lambda functions, this is usually of the form `/2015-03-31/functions/\[FunctionARN\]/invocations`.
  String? get authorizerUri;

  /// Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.
  String? get authorizerCredentials;

  /// The identity source for which authorization is requested. For a `TOKEN` or `COGNITO\_USER\_POOLS` authorizer, this is required and specifies the request header mapping expression for the custom header holding the authorization token submitted by the client. For example, if the token header name is `Auth`, the header mapping expression is `method.request.header.Auth`. For the `REQUEST` authorizer, this is required when authorization caching is enabled. The value is a comma-separated string of one or more mapping expressions of the specified request parameters. For example, if an `Auth` header, a `Name` query string parameter are defined as identity sources, this value is `method.request.header.Auth, method.request.querystring.Name`. These parameters will be used to derive the authorization caching key and to perform runtime validation of the `REQUEST` authorizer by verifying all of the identity-related request parameters are present, not null and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401 Unauthorized response without calling the Lambda function. The valid value is a string of comma-separated mapping expressions of the specified request parameters. When the authorization caching is not enabled, this property is optional.
  String? get identitySource;

  /// A validation expression for the incoming identity token. For `TOKEN` authorizers, this value is a regular expression. For `COGNITO\_USER\_POOLS` authorizers, API Gateway will match the `aud` field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the `REQUEST` authorizer.
  String? get identityValidationExpression;

  /// The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.
  int? get authorizerResultTtlInSeconds;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  CreateAuthorizerRequestPayload getPayload() =>
      CreateAuthorizerRequestPayload((b) {
        b.authType = authType;
        b.authorizerCredentials = authorizerCredentials;
        b.authorizerResultTtlInSeconds = authorizerResultTtlInSeconds;
        b.authorizerUri = authorizerUri;
        b.identitySource = identitySource;
        b.identityValidationExpression = identityValidationExpression;
        b.name = name;
        if (providerArNs != null) {
          b.providerArNs.replace(providerArNs!);
        }
        b.type = type;
      });
  @override
  List<Object?> get props => [
        restApiId,
        name,
        type,
        providerArNs,
        authType,
        authorizerUri,
        authorizerCredentials,
        identitySource,
        identityValidationExpression,
        authorizerResultTtlInSeconds,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateAuthorizerRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'name',
        name,
      )
      ..add(
        'type',
        type,
      )
      ..add(
        'providerArNs',
        providerArNs,
      )
      ..add(
        'authType',
        authType,
      )
      ..add(
        'authorizerUri',
        authorizerUri,
      )
      ..add(
        'authorizerCredentials',
        authorizerCredentials,
      )
      ..add(
        'identitySource',
        identitySource,
      )
      ..add(
        'identityValidationExpression',
        identityValidationExpression,
      )
      ..add(
        'authorizerResultTtlInSeconds',
        authorizerResultTtlInSeconds,
      );
    return helper.toString();
  }
}

@_i5.internal
abstract class CreateAuthorizerRequestPayload
    with
        _i2.AWSEquatable<CreateAuthorizerRequestPayload>
    implements
        Built<CreateAuthorizerRequestPayload,
            CreateAuthorizerRequestPayloadBuilder> {
  factory CreateAuthorizerRequestPayload(
          [void Function(CreateAuthorizerRequestPayloadBuilder) updates]) =
      _$CreateAuthorizerRequestPayload;

  const CreateAuthorizerRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateAuthorizerRequestPayloadBuilder b) {}

  /// Optional customer-defined field, used in OpenAPI imports and exports without functional impact.
  String? get authType;

  /// Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.
  String? get authorizerCredentials;

  /// The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.
  int? get authorizerResultTtlInSeconds;

  /// Specifies the authorizer's Uniform Resource Identifier (URI). For `TOKEN` or `REQUEST` authorizers, this must be a well-formed Lambda function URI, for example, `arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account\_id}:function:{lambda\_function_name}/invocations`. In general, the URI has this form `arn:aws:apigateway:{region}:lambda:path/{service_api}`, where `{region}` is the same as the region hosting the Lambda function, `path` indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial `/`. For Lambda functions, this is usually of the form `/2015-03-31/functions/\[FunctionARN\]/invocations`.
  String? get authorizerUri;

  /// The identity source for which authorization is requested. For a `TOKEN` or `COGNITO\_USER\_POOLS` authorizer, this is required and specifies the request header mapping expression for the custom header holding the authorization token submitted by the client. For example, if the token header name is `Auth`, the header mapping expression is `method.request.header.Auth`. For the `REQUEST` authorizer, this is required when authorization caching is enabled. The value is a comma-separated string of one or more mapping expressions of the specified request parameters. For example, if an `Auth` header, a `Name` query string parameter are defined as identity sources, this value is `method.request.header.Auth, method.request.querystring.Name`. These parameters will be used to derive the authorization caching key and to perform runtime validation of the `REQUEST` authorizer by verifying all of the identity-related request parameters are present, not null and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401 Unauthorized response without calling the Lambda function. The valid value is a string of comma-separated mapping expressions of the specified request parameters. When the authorization caching is not enabled, this property is optional.
  String? get identitySource;

  /// A validation expression for the incoming identity token. For `TOKEN` authorizers, this value is a regular expression. For `COGNITO\_USER\_POOLS` authorizers, API Gateway will match the `aud` field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the `REQUEST` authorizer.
  String? get identityValidationExpression;

  /// The name of the authorizer.
  String get name;

  /// A list of the Amazon Cognito user pool ARNs for the `COGNITO\_USER\_POOLS` authorizer. Each element is of this format: `arn:aws:cognito-idp:{region}:{account\_id}:userpool/{user\_pool_id}`. For a `TOKEN` or `REQUEST` authorizer, this is not defined.
  _i4.BuiltList<String>? get providerArNs;

  /// The authorizer type. Valid values are `TOKEN` for a Lambda function using a single authorization token submitted in a custom header, `REQUEST` for a Lambda function using incoming request parameters, and `COGNITO\_USER\_POOLS` for using an Amazon Cognito user pool.
  _i3.AuthorizerType get type;
  @override
  List<Object?> get props => [
        authType,
        authorizerCredentials,
        authorizerResultTtlInSeconds,
        authorizerUri,
        identitySource,
        identityValidationExpression,
        name,
        providerArNs,
        type,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateAuthorizerRequestPayload')
      ..add(
        'authType',
        authType,
      )
      ..add(
        'authorizerCredentials',
        authorizerCredentials,
      )
      ..add(
        'authorizerResultTtlInSeconds',
        authorizerResultTtlInSeconds,
      )
      ..add(
        'authorizerUri',
        authorizerUri,
      )
      ..add(
        'identitySource',
        identitySource,
      )
      ..add(
        'identityValidationExpression',
        identityValidationExpression,
      )
      ..add(
        'name',
        name,
      )
      ..add(
        'providerArNs',
        providerArNs,
      )
      ..add(
        'type',
        type,
      );
    return helper.toString();
  }
}

class CreateAuthorizerRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<CreateAuthorizerRequestPayload> {
  const CreateAuthorizerRequestRestJson1Serializer()
      : super('CreateAuthorizerRequest');

  @override
  Iterable<Type> get types => const [
        CreateAuthorizerRequest,
        _$CreateAuthorizerRequest,
        CreateAuthorizerRequestPayload,
        _$CreateAuthorizerRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  CreateAuthorizerRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateAuthorizerRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'authType':
          result.authType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'authorizerCredentials':
          result.authorizerCredentials = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'authorizerResultTtlInSeconds':
          result.authorizerResultTtlInSeconds = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'authorizerUri':
          result.authorizerUri = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'identitySource':
          result.identitySource = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'identityValidationExpression':
          result.identityValidationExpression = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'providerARNs':
          result.providerArNs.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.AuthorizerType),
          ) as _i3.AuthorizerType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateAuthorizerRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CreateAuthorizerRequestPayload(
      :authType,
      :authorizerCredentials,
      :authorizerResultTtlInSeconds,
      :authorizerUri,
      :identitySource,
      :identityValidationExpression,
      :name,
      :providerArNs,
      :type
    ) = object;
    result$.addAll([
      'name',
      serializers.serialize(
        name,
        specifiedType: const FullType(String),
      ),
      'type',
      serializers.serialize(
        type,
        specifiedType: const FullType(_i3.AuthorizerType),
      ),
    ]);
    if (authType != null) {
      result$
        ..add('authType')
        ..add(serializers.serialize(
          authType,
          specifiedType: const FullType(String),
        ));
    }
    if (authorizerCredentials != null) {
      result$
        ..add('authorizerCredentials')
        ..add(serializers.serialize(
          authorizerCredentials,
          specifiedType: const FullType(String),
        ));
    }
    if (authorizerResultTtlInSeconds != null) {
      result$
        ..add('authorizerResultTtlInSeconds')
        ..add(serializers.serialize(
          authorizerResultTtlInSeconds,
          specifiedType: const FullType(int),
        ));
    }
    if (authorizerUri != null) {
      result$
        ..add('authorizerUri')
        ..add(serializers.serialize(
          authorizerUri,
          specifiedType: const FullType(String),
        ));
    }
    if (identitySource != null) {
      result$
        ..add('identitySource')
        ..add(serializers.serialize(
          identitySource,
          specifiedType: const FullType(String),
        ));
    }
    if (identityValidationExpression != null) {
      result$
        ..add('identityValidationExpression')
        ..add(serializers.serialize(
          identityValidationExpression,
          specifiedType: const FullType(String),
        ));
    }
    if (providerArNs != null) {
      result$
        ..add('providerARNs')
        ..add(serializers.serialize(
          providerArNs,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
