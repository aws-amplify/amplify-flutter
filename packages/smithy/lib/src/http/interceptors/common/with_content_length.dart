import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';

class WithContentLength extends HttpRequestInterceptor {
  const WithContentLength();

  static const _key = 'Content-Length';

  @override
  Future<AWSStreamedHttpRequest> intercept(
    AWSStreamedHttpRequest request,
  ) async {
    if (!zIsWeb && !request.headers.containsKey(_key)) {
      request.headers[_key] = (await request.contentLength).toString();
    }
    return request;
  }
}
