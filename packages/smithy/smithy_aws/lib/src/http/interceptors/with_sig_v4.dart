// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
  Future<AWSBaseHttpRequest> intercept(AWSBaseHttpRequest request) async {
    // Do not attempt to sign requests where auth is optional.
    //
    // This is only set in Cognito and SSO services where the trait indicates
    // that signing is strictly unnecessary and that signing the request does
    // not impact the behavior of the APIs.
    if (isOptional) return request;

    final signer = AWSSigV4Signer(
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
