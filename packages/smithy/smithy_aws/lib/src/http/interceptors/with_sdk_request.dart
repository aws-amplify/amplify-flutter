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
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/src/http/retry/aws_retryer.dart';

/// {@template smithy_aws.with_sdk_request}
/// Adds request-specific information for AWS requests.
/// {@endtemplate}
class WithSdkRequest extends HttpRequestInterceptor {
  /// {@macro smithy_aws.with_sdk_request}
  const WithSdkRequest();

  @override
  AWSStreamedHttpRequest intercept(AWSStreamedHttpRequest request) {
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
