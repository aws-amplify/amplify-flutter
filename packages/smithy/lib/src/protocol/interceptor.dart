import 'dart:async';

abstract class Interceptor<T> {
  const Interceptor();

  FutureOr<void> intercept(T request);
}
