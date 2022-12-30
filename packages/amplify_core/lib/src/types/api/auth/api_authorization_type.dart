// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/types/common/amplify_auth_provider.dart';
import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_authorization_type.g.dart';

/// The types of authorization one can use while talking to an Amazon AppSync
/// GraphQL backend, or an Amazon API Gateway endpoint.
///
/// See also:
/// - [AppSync Security](https://docs.aws.amazon.com/appsync/latest/devguide/security.html)
@JsonEnum(alwaysCreate: true)
enum APIAuthorizationType<T extends AmplifyAuthProvider> {
  /// For public APIs.
  @JsonValue('NONE')
  none(AmplifyAuthProviderToken<AmplifyAuthProvider>('NONE')),

  /// A hardcoded key which can provide throttling for an unauthenticated API.
  ///
  /// See also:
  /// - [API Key Authorization](https://docs.aws.amazon.com/appsync/latest/devguide/security-authz.html#api-key-authorization)
  @JsonValue('API_KEY')
  apiKey(AmplifyAuthProviderToken<ApiKeyAmplifyAuthProvider>('API_KEY')),

  /// Use an IAM access/secret key credential pair to authorize access to an API.
  ///
  /// See also:
  /// - [IAM Authorization](https://docs.aws.amazon.com/appsync/latest/devguide/security.html#aws-iam-authorization)
  /// - [IAM Introduction](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html)
  @JsonValue('AWS_IAM')
  iam(AmplifyAuthProviderToken<AWSIamAmplifyAuthProvider>('AWS_IAM')),

  /// OpenID Connect is a simple identity layer on top of OAuth2.0.
  ///
  /// See also:
  /// - [OpenID Connect Authorization](https://docs.aws.amazon.com/appsync/latest/devguide/security-authz.html#openid-connect-authorization)
  /// - [OpenID Connect Specification](https://openid.net/specs/openid-connect-core-1_0.html)
  @JsonValue('OPENID_CONNECT')
  oidc(AmplifyAuthProviderToken<TokenAmplifyAuthProvider>('OPENID_CONNECT')),

  /// Control access to date by putting users into different permissions pools.
  ///
  /// See also:
  /// - [Amazon Cognito User Pools](https://docs.aws.amazon.com/appsync/latest/devguide/security-authz.html#amazon-cognito-user-pools-authorization)
  @JsonValue('AMAZON_COGNITO_USER_POOLS')
  userPools(AmplifyAuthProviderToken<TokenIdentityAmplifyAuthProvider>(
    'AMAZON_COGNITO_USER_POOLS',
  )),

  /// Control access by calling a lambda function.
  ///
  /// See also:
  /// - [Introducing Lambda authorization for AWS AppSync GraphQL APIs](https://aws.amazon.com/blogs/mobile/appsync-lambda-auth/)
  @JsonValue('AWS_LAMBDA')
  function(AmplifyAuthProviderToken<TokenAmplifyAuthProvider>('AWS_LAMBDA'));

  const APIAuthorizationType(this.authProviderToken);
  final AmplifyAuthProviderToken<T> authProviderToken;
}

/// Helper methods for [APIAuthorizationType].
extension APIAuthorizationTypeX on APIAuthorizationType {
  /// Returns the [APIAuthorizationType] value for [value].
  static APIAuthorizationType? from(String? value) =>
      APIAuthorizationType.values
          .firstWhereOrNull((el) => el.rawValue == value);

  /// Returns the underlying [String] backing [this].
  String get rawValue => _$APIAuthorizationTypeEnumMap[this]!;
}
