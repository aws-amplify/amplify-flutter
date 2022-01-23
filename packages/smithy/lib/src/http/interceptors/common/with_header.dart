import 'package:smithy/smithy.dart';

/// Adds a header to the request.
class WithHeader extends HttpInterceptor {
  const WithHeader(this.key, this.value, {this.replace = true});

  final String key;
  final String value;
  final bool replace;

  @override
  void intercept(AWSStreamedHttpRequest request) {
    if (replace) {
      request.headers[key] = value;
    } else {
      request.headers.putIfAbsent(key, () => value);
    }
  }
}

/// Removes a header from the request.
class WithNoHeader extends HttpInterceptor {
  const WithNoHeader(this.key);

  final String key;

  @override
  void intercept(AWSStreamedHttpRequest request) {
    request.headers.remove(key);
  }
}
