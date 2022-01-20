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
