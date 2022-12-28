// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:meta/meta.dart';

/// An identifier to use as a key in an [AmplifyAuthProviderRepository] so that
/// a retrieved auth provider can be typed more accurately.
///
/// Does not extend [Token] because [Token] is equal to another [Token] of same
/// type which has unintended consequences.
@immutable
class AmplifyAuthProviderToken<T extends AmplifyAuthProvider> {
  final String name;

  const AmplifyAuthProviderToken(this.name);
}

abstract class AuthProviderOptions {
  const AuthProviderOptions();
}

/// Options required by IAM to sign any given request at runtime.
class IamAuthProviderOptions extends AuthProviderOptions {
  const IamAuthProviderOptions({
    required this.region,
    required this.service,
    this.serviceConfiguration,
  });

  final String region;
  final AWSService service;
  final ServiceConfiguration? serviceConfiguration;
}

class ApiKeyAuthProviderOptions extends AuthProviderOptions {
  final String apiKey;

  const ApiKeyAuthProviderOptions(this.apiKey);
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
