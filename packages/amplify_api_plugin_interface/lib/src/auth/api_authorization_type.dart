/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:collection/collection.dart';

/// The types of authorization one can use while talking to an Amazon AppSync
/// GraphQL backend, or an Amazon API Gateway endpoint.
///
/// See also:
/// - [AppSync Security](https://docs.aws.amazon.com/appsync/latest/devguide/security.html)
enum APIAuthorizationType {
  /// For public APIs.
  none,

  /// A hardcoded key which can provide throttling for an unauthenticated API.
  ///
  /// See also:
  /// - [API Key Authorization](https://docs.aws.amazon.com/appsync/latest/devguide/security-authz.html#api-key-authorization)
  apiKey,

  /// Use an IAM access/secret key credential pair to authorize access to an API.
  ///
  /// See also:
  /// - [IAM Authorization](https://docs.aws.amazon.com/appsync/latest/devguide/security.html#aws-iam-authorization)
  /// - [IAM Introduction](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html)
  iam,

  /// OpenID Connect is a simple identity layer on top of OAuth2.0.
  ///
  /// See also:
  /// - [OpenID Connect Authorization](https://docs.aws.amazon.com/appsync/latest/devguide/security-authz.html#openid-connect-authorization)
  /// - [OpenID Connect Specification](https://openid.net/specs/openid-connect-core-1_0.html)
  oidc,

  /// Control access to date by putting users into different permissions pools.
  ///
  /// See also:
  /// - [Amazon Cognito User Pools](https://docs.aws.amazon.com/appsync/latest/devguide/security-authz.html#amazon-cognito-user-pools-authorization)
  userPools,
}

/// Helper methods for [APIAuthorizationType].
extension APIAuthorizationTypeX on APIAuthorizationType {
  /// Returns the [APIAuthorizationType] value for [value].
  static APIAuthorizationType? from(String? value) =>
      APIAuthorizationType.values
          .firstWhereOrNull((el) => el.rawValue == value);

  /// Returns the underlying [String] backing [this].
  String get rawValue {
    switch (this) {
      case APIAuthorizationType.none:
        return 'NONE';
      case APIAuthorizationType.apiKey:
        return 'API_KEY';
      case APIAuthorizationType.iam:
        return 'AWS_IAM';
      case APIAuthorizationType.oidc:
        return 'OPENID_CONNECT';
      case APIAuthorizationType.userPools:
        return 'AMAZON_COGNITO_USER_POOLS';
    }
  }
}
