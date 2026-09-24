// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';

/// An [HttpRequestInterceptor] that adds custom headers from an async callback
/// to every request.
///
/// Custom headers are merged with existing request headers. If a custom header
/// has the same key as an existing header, the custom header value takes
/// precedence.
class WithCustomHeaders extends HttpRequestInterceptor {
  /// Creates a [WithCustomHeaders] interceptor with the given [headers]
  /// callback.
  const WithCustomHeaders(this.headers);

  /// The async callback that returns the custom headers.
  final Future<Map<String, String>> Function() headers;

  @override
  Future<AWSBaseHttpRequest> intercept(AWSBaseHttpRequest request) async {
    final customHeaders = await headers();
    request.headers.addAll(customHeaders);
    return request;
  }
}
