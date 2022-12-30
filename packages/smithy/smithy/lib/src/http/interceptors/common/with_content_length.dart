// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy/src/http/http_operation.dart';

class WithContentLength extends HttpRequestInterceptor {
  const WithContentLength();

  @override
  Future<AWSBaseHttpRequest> intercept(
    AWSBaseHttpRequest request,
  ) async {
    final includeHeader = !zIsWeb || isSmithyHttpTest;
    if (includeHeader) {
      request.headers[AWSHeaders.contentLength] =
          (await request.contentLength).toString();
    }
    return request;
  }
}
