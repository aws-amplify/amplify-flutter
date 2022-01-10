import 'dart:async';

import 'package:smithy/smithy.dart';

/// Intercepts HTTP requests to provide additional headers.
abstract class HttpInterceptor extends Interceptor<AWSStreamedHttpRequest> {
  const HttpInterceptor();

  @override
  FutureOr<void> intercept(AWSStreamedHttpRequest request);
}
