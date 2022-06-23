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
import 'package:http/http.dart' as http;

class HttpRequestTransformOptions {
  String region;
  AWSService service;

  HttpRequestTransformOptions({required this.region, required this.service});
}

abstract class AmplifyAuthProvider {
  Future<http.BaseRequest> authorizeRequest(http.BaseRequest request,
      {HttpRequestTransformOptions? options});
}

abstract class TokenAmplifyAuthProvider extends AmplifyAuthProvider {
  Future<String> getLatestAuthToken();

  @override
  Future<http.BaseRequest> authorizeRequest(http.BaseRequest request,
      {HttpRequestTransformOptions? options}) async {
    final token = await getLatestAuthToken();
    request.headers.putIfAbsent(AWSHeaders.authorization, () => token);
    return request;
  }
}

class AmplifyAuthProviderRepository {
  final Map<String, AmplifyAuthProvider> _authProviders = {};

  AmplifyAuthProvider? getAuthProvider(String authorizationType) {
    print('getting auth providers in repo');
    print(_authProviders);
    return _authProviders[authorizationType];
  }

  void registerAuthProvider(
      String authorizationType, AmplifyAuthProvider authProvider) {
    _authProviders.putIfAbsent(authorizationType, () => authProvider);
  }
}
