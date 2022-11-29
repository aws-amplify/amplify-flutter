// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
    String? authType,
    String? authorizerCredentials,
    int? authorizerResultTtlInSeconds,
    String? authorizerUri,
    String? id,
    String? identitySource,
    String? identityValidationExpression,
    String? name,
    List<String>? providerArNs,
    _i2.AuthorizerType? type,
  }) {
    return _$Authorizer._(
      authType: authType,
      authorizerCredentials: authorizerCredentials,
      authorizerResultTtlInSeconds: authorizerResultTtlInSeconds,
      authorizerUri: authorizerUri,
      id: id,
      identitySource: identitySource,
      identityValidationExpression: identityValidationExpression,
      name: name,
      providerArNs: providerArNs == null ? null : _i3.BuiltList(providerArNs),
      type: type,
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

  static const List<_i4.SmithySerializer> serializers = [
    AuthorizerRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AuthorizerBuilder b) {}

  /// Optional customer-defined field, used in OpenAPI imports and exports without functional impact.
  String? get authType;

  /// Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.
  String? get authorizerCredentials;

  /// The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.
  int? get authorizerResultTtlInSeconds;

  /// Specifies the authorizer's Uniform Resource Identifier (URI). For `TOKEN` or `REQUEST` authorizers, this must be a well-formed Lambda function URI, for example, `arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account\_id}:function:{lambda\_function_name}/invocations`. In general, the URI has this form `arn:aws:apigateway:{region}:lambda:path/{service_api}`, where `{region}` is the same as the region hosting the Lambda function, `path` indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial `/`. For Lambda functions, this is usually of the form `/2015-03-31/functions/\[FunctionARN\]/invocations`.
  String? get authorizerUri;

  /// The identifier for the authorizer resource.
  String? get id;

  /// The identity source for which authorization is requested. For a `TOKEN` or `COGNITO\_USER\_POOLS` authorizer, this is required and specifies the request header mapping expression for the custom header holding the authorization token submitted by the client. For example, if the token header name is `Auth`, the header mapping expression is `method.request.header.Auth`. For the `REQUEST` authorizer, this is required when authorization caching is enabled. The value is a comma-separated string of one or more mapping expressions of the specified request parameters. For example, if an `Auth` header, a `Name` query string parameter are defined as identity sources, this value is `method.request.header.Auth`, `method.request.querystring.Name`. These parameters will be used to derive the authorization caching key and to perform runtime validation of the `REQUEST` authorizer by verifying all of the identity-related request parameters are present, not null and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401 Unauthorized response without calling the Lambda function. The valid value is a string of comma-separated mapping expressions of the specified request parameters. When the authorization caching is not enabled, this property is optional.
  String? get identitySource;

  /// A validation expression for the incoming identity token. For `TOKEN` authorizers, this value is a regular expression. For `COGNITO\_USER\_POOLS` authorizers, API Gateway will match the `aud` field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the `REQUEST` authorizer.
  String? get identityValidationExpression;

  /// The name of the authorizer.
  String? get name;

  /// A list of the Amazon Cognito user pool ARNs for the `COGNITO\_USER\_POOLS` authorizer. Each element is of this format: `arn:aws:cognito-idp:{region}:{account\_id}:userpool/{user\_pool_id}`. For a `TOKEN` or `REQUEST` authorizer, this is not defined.
  _i3.BuiltList<String>? get providerArNs;

  /// The authorizer type. Valid values are `TOKEN` for a Lambda function using a single authorization token submitted in a custom header, `REQUEST` for a Lambda function using incoming request parameters, and `COGNITO\_USER\_POOLS` for using an Amazon Cognito user pool.
  _i2.AuthorizerType? get type;
  @override
  List<Object?> get props => [
        authType,
        authorizerCredentials,
        authorizerResultTtlInSeconds,
        authorizerUri,
        id,
        identitySource,
        identityValidationExpression,
        name,
        providerArNs,
        type,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Authorizer');
    helper.add(
      'authType',
      authType,
    );
    helper.add(
      'authorizerCredentials',
      authorizerCredentials,
    );
    helper.add(
      'authorizerResultTtlInSeconds',
      authorizerResultTtlInSeconds,
    );
    helper.add(
      'authorizerUri',
      authorizerUri,
    );
    helper.add(
      'id',
      id,
    );
    helper.add(
      'identitySource',
      identitySource,
    );
    helper.add(
      'identityValidationExpression',
      identityValidationExpression,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'providerArNs',
      providerArNs,
    );
    helper.add(
      'type',
      type,
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
      switch (key) {
        case 'authType':
          if (value != null) {
            result.authType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'authorizerCredentials':
          if (value != null) {
            result.authorizerCredentials = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'authorizerResultTtlInSeconds':
          if (value != null) {
            result.authorizerResultTtlInSeconds = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'authorizerUri':
          if (value != null) {
            result.authorizerUri = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'id':
          if (value != null) {
            result.id = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'identitySource':
          if (value != null) {
            result.identitySource = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'identityValidationExpression':
          if (value != null) {
            result.identityValidationExpression = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'providerARNs':
          if (value != null) {
            result.providerArNs.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
          }
          break;
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AuthorizerType),
            ) as _i2.AuthorizerType);
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
    final payload = (object as Authorizer);
    final result = <Object?>[];
    if (payload.authType != null) {
      result
        ..add('authType')
        ..add(serializers.serialize(
          payload.authType!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.authorizerCredentials != null) {
      result
        ..add('authorizerCredentials')
        ..add(serializers.serialize(
          payload.authorizerCredentials!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.authorizerResultTtlInSeconds != null) {
      result
        ..add('authorizerResultTtlInSeconds')
        ..add(serializers.serialize(
          payload.authorizerResultTtlInSeconds!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.authorizerUri != null) {
      result
        ..add('authorizerUri')
        ..add(serializers.serialize(
          payload.authorizerUri!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(
          payload.id!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.identitySource != null) {
      result
        ..add('identitySource')
        ..add(serializers.serialize(
          payload.identitySource!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.identityValidationExpression != null) {
      result
        ..add('identityValidationExpression')
        ..add(serializers.serialize(
          payload.identityValidationExpression!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.providerArNs != null) {
      result
        ..add('providerARNs')
        ..add(serializers.serialize(
          payload.providerArNs!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType(_i2.AuthorizerType),
        ));
    }
    return result;
  }
}
