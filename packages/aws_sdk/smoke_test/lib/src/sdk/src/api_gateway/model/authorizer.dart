// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.authorizer; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/authorizer_type.dart'
    as _i2;

part 'authorizer.g.dart';

/// Represents an authorization layer for methods. If enabled on a method, API Gateway will activate the authorizer when a client calls the method.
abstract class Authorizer
    with _i1.AWSEquatable<Authorizer>
    implements Built<Authorizer, AuthorizerBuilder> {
  /// Represents an authorization layer for methods. If enabled on a method, API Gateway will activate the authorizer when a client calls the method.
  factory Authorizer({
    String? id,
    String? name,
    _i2.AuthorizerType? type,
    List<String>? providerArNs,
    String? authType,
    String? authorizerUri,
    String? authorizerCredentials,
    String? identitySource,
    String? identityValidationExpression,
    int? authorizerResultTtlInSeconds,
  }) {
    return _$Authorizer._(
      id: id,
      name: name,
      type: type,
      providerArNs: providerArNs == null ? null : _i3.BuiltList(providerArNs),
      authType: authType,
      authorizerUri: authorizerUri,
      authorizerCredentials: authorizerCredentials,
      identitySource: identitySource,
      identityValidationExpression: identityValidationExpression,
      authorizerResultTtlInSeconds: authorizerResultTtlInSeconds,
    );
  }

  /// Represents an authorization layer for methods. If enabled on a method, API Gateway will activate the authorizer when a client calls the method.
  factory Authorizer.build([void Function(AuthorizerBuilder) updates]) =
      _$Authorizer;

  const Authorizer._();

  /// Constructs a [Authorizer] from a [payload] and [response].
  factory Authorizer.fromResponse(
    Authorizer payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<Authorizer>> serializers = [
    AuthorizerRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AuthorizerBuilder b) {}

  /// The identifier for the authorizer resource.
  String? get id;

  /// The name of the authorizer.
  String? get name;

  /// The authorizer type. Valid values are `TOKEN` for a Lambda function using a single authorization token submitted in a custom header, `REQUEST` for a Lambda function using incoming request parameters, and `COGNITO\_USER\_POOLS` for using an Amazon Cognito user pool.
  _i2.AuthorizerType? get type;

  /// A list of the Amazon Cognito user pool ARNs for the `COGNITO\_USER\_POOLS` authorizer. Each element is of this format: `arn:aws:cognito-idp:{region}:{account\_id}:userpool/{user\_pool_id}`. For a `TOKEN` or `REQUEST` authorizer, this is not defined.
  _i3.BuiltList<String>? get providerArNs;

  /// Optional customer-defined field, used in OpenAPI imports and exports without functional impact.
  String? get authType;

  /// Specifies the authorizer's Uniform Resource Identifier (URI). For `TOKEN` or `REQUEST` authorizers, this must be a well-formed Lambda function URI, for example, `arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account\_id}:function:{lambda\_function_name}/invocations`. In general, the URI has this form `arn:aws:apigateway:{region}:lambda:path/{service_api}`, where `{region}` is the same as the region hosting the Lambda function, `path` indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial `/`. For Lambda functions, this is usually of the form `/2015-03-31/functions/\[FunctionARN\]/invocations`.
  String? get authorizerUri;

  /// Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.
  String? get authorizerCredentials;

  /// The identity source for which authorization is requested. For a `TOKEN` or `COGNITO\_USER\_POOLS` authorizer, this is required and specifies the request header mapping expression for the custom header holding the authorization token submitted by the client. For example, if the token header name is `Auth`, the header mapping expression is `method.request.header.Auth`. For the `REQUEST` authorizer, this is required when authorization caching is enabled. The value is a comma-separated string of one or more mapping expressions of the specified request parameters. For example, if an `Auth` header, a `Name` query string parameter are defined as identity sources, this value is `method.request.header.Auth`, `method.request.querystring.Name`. These parameters will be used to derive the authorization caching key and to perform runtime validation of the `REQUEST` authorizer by verifying all of the identity-related request parameters are present, not null and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401 Unauthorized response without calling the Lambda function. The valid value is a string of comma-separated mapping expressions of the specified request parameters. When the authorization caching is not enabled, this property is optional.
  String? get identitySource;

  /// A validation expression for the incoming identity token. For `TOKEN` authorizers, this value is a regular expression. For `COGNITO\_USER\_POOLS` authorizers, API Gateway will match the `aud` field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the `REQUEST` authorizer.
  String? get identityValidationExpression;

  /// The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.
  int? get authorizerResultTtlInSeconds;
  @override
  List<Object?> get props => [
        id,
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
    final helper = newBuiltValueToStringHelper('Authorizer')
      ..add(
        'id',
        id,
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

class AuthorizerRestJson1Serializer
    extends _i4.StructuredSmithySerializer<Authorizer> {
  const AuthorizerRestJson1Serializer() : super('Authorizer');

  @override
  Iterable<Type> get types => const [
        Authorizer,
        _$Authorizer,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  Authorizer deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthorizerBuilder();
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
        case 'id':
          result.id = (serializers.deserialize(
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
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AuthorizerType),
          ) as _i2.AuthorizerType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Authorizer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Authorizer(
      :authType,
      :authorizerCredentials,
      :authorizerResultTtlInSeconds,
      :authorizerUri,
      :id,
      :identitySource,
      :identityValidationExpression,
      :name,
      :providerArNs,
      :type
    ) = object;
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
    if (id != null) {
      result$
        ..add('id')
        ..add(serializers.serialize(
          id,
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
    if (name != null) {
      result$
        ..add('name')
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (providerArNs != null) {
      result$
        ..add('providerARNs')
        ..add(serializers.serialize(
          providerArNs,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (type != null) {
      result$
        ..add('type')
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType(_i2.AuthorizerType),
        ));
    }
    return result$;
  }
}
