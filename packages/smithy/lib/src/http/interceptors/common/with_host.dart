import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';

class WithHost extends HttpRequestInterceptor {
  const WithHost();

  @override
  Future<AWSStreamedHttpRequest> intercept(
    AWSStreamedHttpRequest request,
  ) async {
    final includeHeader = !zIsWeb || isSmithyHttpTest;
    if (includeHeader) {
      request.headers.putIfAbsent(AWSHeaders.host, () => request.uri.host);
    }
    return request;
  }
}
