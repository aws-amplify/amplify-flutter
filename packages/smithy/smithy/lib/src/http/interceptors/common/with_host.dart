// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy/src/http/http_operation.dart';

class WithHost extends HttpRequestInterceptor {
  const WithHost();

  @override
  AWSBaseHttpRequest intercept(AWSBaseHttpRequest request) {
    final includeHeader = !zIsWeb || isSmithyHttpTest;
    if (includeHeader) {
      request.headers.putIfAbsent(AWSHeaders.host, () => request.uri.host);
    }
    return request;
  }
}
