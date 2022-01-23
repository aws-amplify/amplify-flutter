import 'dart:async';

import 'package:smithy/smithy.dart';

const _key = 'Content-Length';

class WithContentLength extends HttpInterceptor {
  const WithContentLength();

  @override
  Future<void> intercept(AWSStreamedHttpRequest request) async {
    if (!request.headers.containsKey(_key)) {
      request.headers[_key] = (await request.contentLength).toString();
    }
  }
}

class WithNoContentLength extends HttpInterceptor {
  const WithNoContentLength();

  @override
  Future<void> intercept(AWSStreamedHttpRequest request) async {
    request.headers.remove(_key);
  }
}
