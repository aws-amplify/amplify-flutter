// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity.cognito_identity_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_credentials_for_identity_input.dart'
    as _i5;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_credentials_for_identity_response.dart'
    as _i4;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_id_input.dart'
    as _i8;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_id_response.dart'
    as _i7;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/operation/get_credentials_for_identity_operation.dart'
    as _i6;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/operation/get_id_operation.dart'
    as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

/// ## Amazon Cognito Federated Identities
///
/// Amazon Cognito Federated Identities is a web service that delivers scoped temporary credentials to mobile devices and other untrusted environments. It uniquely identifies a device and supplies the user with a consistent identity over the lifetime of an application.
///
/// Using Amazon Cognito Federated Identities, you can enable authentication with one or more third-party identity providers (Facebook, Google, or Login with Amazon) or an Amazon Cognito user pool, and you can also choose to support unauthenticated access from your app. Cognito delivers a unique identifier for each user and acts as an OpenID token provider trusted by AWS Security Token Service (STS) to access temporary, limited-privilege AWS credentials.
///
/// For a description of the authentication flow from the Amazon Cognito Developer Guide see [Authentication Flow](https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html).
///
/// For more information see [Amazon Cognito Federated Identities](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html).
class CognitoIdentityClient {
  /// ## Amazon Cognito Federated Identities
  ///
  /// Amazon Cognito Federated Identities is a web service that delivers scoped temporary credentials to mobile devices and other untrusted environments. It uniquely identifies a device and supplies the user with a consistent identity over the lifetime of an application.
  ///
  /// Using Amazon Cognito Federated Identities, you can enable authentication with one or more third-party identity providers (Facebook, Google, or Login with Amazon) or an Amazon Cognito user pool, and you can also choose to support unauthenticated access from your app. Cognito delivers a unique identifier for each user and acts as an OpenID token provider trusted by AWS Security Token Service (STS) to access temporary, limited-privilege AWS credentials.
  ///
  /// For a description of the authentication flow from the Amazon Cognito Developer Guide see [Authentication Flow](https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html).
  ///
  /// For more information see [Amazon Cognito Federated Identities](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html).
  const CognitoIdentityClient({
    _i1.HttpClient? client,
    required String region,
    Uri? baseUri,
    required _i2.AWSCredentialsProvider credentialsProvider,
  })  : _client = client,
        _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  final _i1.HttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  /// Returns credentials for the provided identity ID. Any provided logins will be validated against supported login providers. If the token is for cognito-identity.amazonaws.com, it will be passed through to AWS Security Token Service with the appropriate role for the token.
  ///
  /// This is a public API. You do not need any credentials to call this API.
  _i3.Future<_i4.GetCredentialsForIdentityResponse> getCredentialsForIdentity(
    _i5.GetCredentialsForIdentityInput input, {
    _i1.HttpClient? client,
  }) {
    return _i6.GetCredentialsForIdentityOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Generates (or retrieves) a Cognito ID. Supplying multiple logins will create an implicit linked account.
  ///
  /// This is a public API. You do not need any credentials to call this API.
  _i3.Future<_i7.GetIdResponse> getId(
    _i8.GetIdInput input, {
    _i1.HttpClient? client,
  }) {
    return _i9.GetIdOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}
