// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';

/// {@template smithy_aws.with_sdk_invocation_id}
/// Adds a unique SDK invocation ID to all AWS requests.
/// {@endtemplate}
class WithSdkInvocationId extends HttpRequestInterceptor {
  /// {@macro smithy_aws.with_sdk_invocation_id}
  const WithSdkInvocationId();

  @override
  AWSBaseHttpRequest intercept(AWSBaseHttpRequest request) {
    if (!request.headers.containsKey(AWSHeaders.sdkInvocationId)) {
      request.headers[AWSHeaders.sdkInvocationId] =
          Zone.current[AWSHeaders.sdkInvocationId] as String? ??
              uuid(secure: true);
    }
    return request;
  }
}
