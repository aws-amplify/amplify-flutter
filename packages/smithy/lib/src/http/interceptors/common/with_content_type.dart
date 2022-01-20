import 'dart:async';

import 'package:smithy/smithy.dart';

class WithContentType extends HttpInterceptor {
  const WithContentType();

  static const _key = 'Content-Type';

  @override
  Future<void> intercept(AWSStreamedHttpRequest request) async {
    if (!request.headers.containsKey(_key)) {
      request.headers[_key] = (await request.contentLength).toString();
    }
  }
}
