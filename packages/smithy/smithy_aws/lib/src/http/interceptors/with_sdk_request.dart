// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/src/http/retry/aws_retryer.dart';

/// {@template smithy_aws.with_sdk_request}
/// Adds request-specific information for AWS requests.
/// {@endtemplate}
class WithSdkRequest extends HttpRequestInterceptor {
  /// {@macro smithy_aws.with_sdk_request}
  const WithSdkRequest();

  @override
  AWSBaseHttpRequest intercept(AWSBaseHttpRequest request) {
    if (!request.headers.containsKey(AWSHeaders.sdkRequest)) {
      // TODO(dnys1): Add ttl when config is complete

      // The 1-based attempt number
      final currentAttempt = (Zone.current[zRetryAttempt] as int? ?? 0) + 1;

      // The maximum number of attempts.
      final maxAttempts = Zone.current[zMaxAttempts] as int?;
      request.headers[AWSHeaders.sdkRequest] = [
        ['attempt', currentAttempt].join('='),
        if (maxAttempts != null) ['max', maxAttempts].join('='),
      ].join('; ');
    }
    return request;
  }
}
