// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library amplify_auth_cognito_dart.cognito_identity_provider.model.get_tokens_from_refresh_token_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/authentication_result_type.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_tokens_from_refresh_token_response.g.dart';

abstract class GetTokensFromRefreshTokenResponse
    with _i1.AWSEquatable<GetTokensFromRefreshTokenResponse>
    implements
        Built<
          GetTokensFromRefreshTokenResponse,
          GetTokensFromRefreshTokenResponseBuilder
        > {
  factory GetTokensFromRefreshTokenResponse({
    AuthenticationResultType? authenticationResult,
  }) {
    return _$GetTokensFromRefreshTokenResponse._(
      authenticationResult: authenticationResult,
    );
  }

  factory GetTokensFromRefreshTokenResponse.build([
    void Function(GetTokensFromRefreshTokenResponseBuilder) updates,
  ]) = _$GetTokensFromRefreshTokenResponse;

  const GetTokensFromRefreshTokenResponse._();

  /// Constructs a [GetTokensFromRefreshTokenResponse] from a [payload] and [response].
  factory GetTokensFromRefreshTokenResponse.fromResponse(
    GetTokensFromRefreshTokenResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) => payload;

  static const List<_i2.SmithySerializer<GetTokensFromRefreshTokenResponse>>
  serializers = [GetTokensFromRefreshTokenResponseAwsJson11Serializer()];

  /// The object that your application receives after authentication. Contains tokens and information for device authentication.
  AuthenticationResultType? get authenticationResult;
  @override
  List<Object?> get props => [authenticationResult];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
      'GetTokensFromRefreshTokenResponse',
    )..add('authenticationResult', authenticationResult);
    return helper.toString();
  }
}

class GetTokensFromRefreshTokenResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<GetTokensFromRefreshTokenResponse> {
  const GetTokensFromRefreshTokenResponseAwsJson11Serializer()
    : super('GetTokensFromRefreshTokenResponse');

  @override
  Iterable<Type> get types => const [
    GetTokensFromRefreshTokenResponse,
    _$GetTokensFromRefreshTokenResponse,
  ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  GetTokensFromRefreshTokenResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTokensFromRefreshTokenResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AuthenticationResult':
          result.authenticationResult.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(AuthenticationResultType),
                )
                as AuthenticationResultType),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetTokensFromRefreshTokenResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetTokensFromRefreshTokenResponse(:authenticationResult) = object;
    if (authenticationResult != null) {
      result$
        ..add('AuthenticationResult')
        ..add(
          serializers.serialize(
            authenticationResult,
            specifiedType: const FullType(AuthenticationResultType),
          ),
        );
    }
    return result$;
  }
}
