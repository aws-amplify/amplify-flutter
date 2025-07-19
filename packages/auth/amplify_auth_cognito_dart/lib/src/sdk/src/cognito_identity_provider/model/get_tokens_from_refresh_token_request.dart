// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library amplify_auth_cognito_dart.cognito_identity_provider.model.get_tokens_from_refresh_token_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_tokens_from_refresh_token_request.g.dart';

abstract class GetTokensFromRefreshTokenRequest
    with
        _i1.HttpInput<GetTokensFromRefreshTokenRequest>,
        _i2.AWSEquatable<GetTokensFromRefreshTokenRequest>
    implements
        Built<
          GetTokensFromRefreshTokenRequest,
          GetTokensFromRefreshTokenRequestBuilder
        > {
  factory GetTokensFromRefreshTokenRequest({
    required String refreshToken,
    required String clientId,
    String? clientSecret,
    String? deviceKey,
    Map<String, String>? clientMetadata,
  }) {
    return _$GetTokensFromRefreshTokenRequest._(
      refreshToken: refreshToken,
      clientId: clientId,
      clientSecret: clientSecret,
      deviceKey: deviceKey,
      clientMetadata: clientMetadata == null
          ? null
          : _i3.BuiltMap(clientMetadata),
    );
  }

  factory GetTokensFromRefreshTokenRequest.build([
    void Function(GetTokensFromRefreshTokenRequestBuilder) updates,
  ]) = _$GetTokensFromRefreshTokenRequest;

  const GetTokensFromRefreshTokenRequest._();

  factory GetTokensFromRefreshTokenRequest.fromRequest(
    GetTokensFromRefreshTokenRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => payload;

  static const List<_i1.SmithySerializer<GetTokensFromRefreshTokenRequest>>
  serializers = [GetTokensFromRefreshTokenRequestAwsJson11Serializer()];

  /// A valid refresh token that can authorize the request for new tokens. When refresh token rotation is active in the requested app client, this token is invalidated after the request is complete.
  String get refreshToken;

  /// The app client that issued the refresh token to the user who wants to request new tokens.
  String get clientId;

  /// The client secret of the requested app client, if the client has a secret.
  String? get clientSecret;

  /// When you enable device remembering, Amazon Cognito issues a device key that you can use for device authentication that bypasses multi-factor authentication (MFA). To implement `GetTokensFromRefreshToken` in a user pool with device remembering, you must capture the device key from the initial authentication request. If your application doesn't provide the key of a registered device, Amazon Cognito issues a new one. You must provide the confirmed device key in this request if device remembering is enabled in your user pool.
  ///
  /// For more information about device remembering, see [Working with devices](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).
  String? get deviceKey;

  /// A map of custom key-value pairs that you can provide as input for certain custom workflows that this action triggers.
  ///
  /// You create custom workflows by assigning Lambda functions to user pool triggers. When you use the `GetTokensFromRefreshToken` API action, Amazon Cognito invokes the Lambda function the pre token generation trigger.
  ///
  /// For more information, see [Using Lambda triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html) in the _Amazon Cognito Developer Guide_.
  ///
  /// When you use the `ClientMetadata` parameter, note that Amazon Cognito won't do the following:
  ///
  /// *   Store the `ClientMetadata` value. This data is available only to Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration doesn't include triggers, the `ClientMetadata` parameter serves no purpose.
  ///
  /// *   Validate the `ClientMetadata` value.
  ///
  /// *   Encrypt the `ClientMetadata` value. Don't send sensitive information in this parameter.
  _i3.BuiltMap<String, String>? get clientMetadata;
  @override
  GetTokensFromRefreshTokenRequest getPayload() => this;

  @override
  List<Object?> get props => [
    refreshToken,
    clientId,
    clientSecret,
    deviceKey,
    clientMetadata,
  ];

  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetTokensFromRefreshTokenRequest')
          ..add('refreshToken', '***SENSITIVE***')
          ..add('clientId', '***SENSITIVE***')
          ..add('clientSecret', '***SENSITIVE***')
          ..add('deviceKey', deviceKey)
          ..add('clientMetadata', clientMetadata);
    return helper.toString();
  }
}

class GetTokensFromRefreshTokenRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<GetTokensFromRefreshTokenRequest> {
  const GetTokensFromRefreshTokenRequestAwsJson11Serializer()
    : super('GetTokensFromRefreshTokenRequest');

  @override
  Iterable<Type> get types => const [
    GetTokensFromRefreshTokenRequest,
    _$GetTokensFromRefreshTokenRequest,
  ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  GetTokensFromRefreshTokenRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTokensFromRefreshTokenRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RefreshToken':
          result.refreshToken =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'ClientId':
          result.clientId =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'ClientSecret':
          result.clientSecret =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'DeviceKey':
          result.deviceKey =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'ClientMetadata':
          result.clientMetadata.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i3.BuiltMap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i3.BuiltMap<String, String>),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetTokensFromRefreshTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetTokensFromRefreshTokenRequest(
      :refreshToken,
      :clientId,
      :clientSecret,
      :deviceKey,
      :clientMetadata,
    ) = object;
    result$.addAll([
      'RefreshToken',
      serializers.serialize(
        refreshToken,
        specifiedType: const FullType(String),
      ),
      'ClientId',
      serializers.serialize(clientId, specifiedType: const FullType(String)),
    ]);
    if (clientSecret != null) {
      result$
        ..add('ClientSecret')
        ..add(
          serializers.serialize(
            clientSecret,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (deviceKey != null) {
      result$
        ..add('DeviceKey')
        ..add(
          serializers.serialize(
            deviceKey,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (clientMetadata != null) {
      result$
        ..add('ClientMetadata')
        ..add(
          serializers.serialize(
            clientMetadata,
            specifiedType: const FullType(_i3.BuiltMap, [
              FullType(String),
              FullType(String),
            ]),
          ),
        );
    }
    return result$;
  }
}
