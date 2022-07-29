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

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:smithy/smithy.dart';

class WithSigV4 extends HttpRequestInterceptor {
  const WithSigV4({
    required this.region,
    required this.service,
    required this.credentialsProvider,
    this.serviceConfiguration = const BaseServiceConfiguration(),
    this.algorithm = AWSAlgorithm.hmacSha256,
    this.isOptional = false,
  });

  /// Do close to last, since it depends on all added headers and resolved
  /// endpoints, etc.
  @override
  int get order => 100;

  final bool isOptional;
  final String region;
  final AWSService service;
  final AWSAlgorithm algorithm;
  final AWSCredentialsProvider credentialsProvider;
  final ServiceConfiguration serviceConfiguration;

  @override
  Future<AWSStreamedHttpRequest> intercept(
    AWSStreamedHttpRequest request,
  ) async {
    // Try to retrieve credentials. If it fails, continue without authentication
    // for optional auth requests only.
    try {
      await credentialsProvider.retrieve();
    } on Exception {
      if (isOptional) {
        return request;
      }
      rethrow;
    }
    final AWSSigV4Signer signer = AWSSigV4Signer(
      credentialsProvider: credentialsProvider,
      algorithm: algorithm,
    );
    return signer.sign(
      request,
      credentialScope: AWSCredentialScope(
        region: region,
        service: service,
      ),
      serviceConfiguration: serviceConfiguration,
    );
  }
}
