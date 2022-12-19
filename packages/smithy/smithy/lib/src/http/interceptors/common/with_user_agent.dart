// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';

/// Appends a user agent to the platform-specific header.
class WithUserAgent extends HttpRequestInterceptor {
  const WithUserAgent(this.userAgent);

  final String userAgent;

  @override
  AWSBaseHttpRequest intercept(AWSBaseHttpRequest request) {
    request.headers.update(
      zIsWeb ? AWSHeaders.amzUserAgent : AWSHeaders.userAgent,
      (value) => '$value $userAgent',
      ifAbsent: () => userAgent,
    );
    return request;
  }
}
