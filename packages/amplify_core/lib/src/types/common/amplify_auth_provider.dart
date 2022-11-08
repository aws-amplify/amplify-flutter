/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';

/// An identifier to use as a key in an [AmplifyAuthProviderRepository] so that
/// a retrieved auth provider can be typed more accurately.
class AmplifyAuthProviderToken<T extends AmplifyAuthProvider> extends Token<T> {
  const AmplifyAuthProviderToken();
}

abstract class AuthProviderOptions {
  const AuthProviderOptions();
}

/// Options required by IAM to sign any given request at runtime.
class IamAuthProviderOptions extends AuthProviderOptions {
  const IamAuthProviderOptions({
    required this.region,
    required this.service,
  });

  final String region;
  final AWSService service;
}

class ApiKeyAuthProviderOptions extends AuthProviderOptions {
  const ApiKeyAuthProviderOptions(this.apiKey);

  final String apiKey;
}

abstract class AmplifyAuthProvider {
  const AmplifyAuthProvider();

  Future<AWSBaseHttpRequest> authorizeRequest(
    AWSBaseHttpRequest request, {
    covariant AuthProviderOptions? options,
  });
}

abstract class AWSIamAmplifyAuthProvider extends AmplifyAuthProvider
    implements AWSCredentialsProvider {
  const AWSIamAmplifyAuthProvider();

  @override
  Future<AWSSignedRequest> authorizeRequest(
    AWSBaseHttpRequest request, {
    covariant IamAuthProviderOptions options,
  });
}

abstract class ApiKeyAmplifyAuthProvider extends AmplifyAuthProvider {
  @override
  Future<AWSBaseHttpRequest> authorizeRequest(
    AWSBaseHttpRequest request, {
    covariant ApiKeyAuthProviderOptions? options,
  });
}

abstract class TokenAmplifyAuthProvider extends AmplifyAuthProvider {
  const TokenAmplifyAuthProvider();

  Future<String> getLatestAuthToken();

  @override
  Future<AWSBaseHttpRequest> authorizeRequest(
    AWSBaseHttpRequest request, {
    covariant AuthProviderOptions? options,
  }) async {
    final token = await getLatestAuthToken();
    request.headers.putIfAbsent(AWSHeaders.authorization, () => token);
    return request;
  }
}

abstract class TokenIdentityAmplifyAuthProvider
    extends TokenAmplifyAuthProvider {
  Future<String> getIdentityId();
}

class AmplifyAuthProviderRepository {
  final Map<AmplifyAuthProviderToken, AmplifyAuthProvider> _authProviders = {};

  T? getAuthProvider<T extends AmplifyAuthProvider>(
    AmplifyAuthProviderToken<T> token,
  ) {
    return _authProviders[token] as T?;
  }

  void registerAuthProvider<T extends AmplifyAuthProvider>(
    AmplifyAuthProviderToken<T> token,
    AmplifyAuthProvider authProvider,
  ) {
    _authProviders[token] = authProvider;
  }
}
