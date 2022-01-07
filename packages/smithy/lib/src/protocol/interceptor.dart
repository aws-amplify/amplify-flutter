import 'dart:async';

abstract class Interceptor<R> {
  const Interceptor();

  FutureOr<void> intercept(R request);
}
