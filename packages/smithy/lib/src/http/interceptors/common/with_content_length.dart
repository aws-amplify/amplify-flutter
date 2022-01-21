import 'dart:async';

import 'package:smithy/smithy.dart';

class WithContentLength extends HttpInterceptor {
  const WithContentLength();

  static const _key = 'Content-Length';

  @override
  Future<void> intercept(AWSStreamedHttpRequest request) async {
    if (!request.headers.containsKey(_key)) {
      request.headers[_key] = (await request.contentLength).toString();
    }
  }
}
