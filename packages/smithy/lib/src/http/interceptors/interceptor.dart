import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:smithy/src/protocol/interceptor.dart';

/// Intercepts HTTP requests to provide additional headers.
abstract class HttpInterceptor<T extends http.BaseRequest>
    extends Interceptor<T> {
  const HttpInterceptor();

  @override
  FutureOr<void> intercept(T request);
}
