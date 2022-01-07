import 'dart:async';

import 'package:smithy/smithy.dart';

/// Intercepts HTTP requests to provide additional headers.
abstract class HttpInterceptor extends Interceptor<AWSBaseHttpRequest> {
  const HttpInterceptor();

  @override
  FutureOr<void> intercept(AWSBaseHttpRequest request);
}
