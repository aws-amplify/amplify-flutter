import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy/src/http/http_operation.dart';

class WithContentLength extends HttpRequestInterceptor {
  const WithContentLength();

  @override
  Future<AWSStreamedHttpRequest> intercept(
    AWSStreamedHttpRequest request,
  ) async {
    final includeHeader = !zIsWeb || isSmithyHttpTest;
    if (includeHeader) {
      request.headers[AWSHeaders.contentLength] =
          (await request.contentLength).toString();
    }
    return request;
  }
}
