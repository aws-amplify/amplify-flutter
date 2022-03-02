import 'package:smithy/smithy.dart';

/// Adds a header to the request.
class WithHeader extends HttpRequestInterceptor {
  const WithHeader(this.key, this.value, {this.replace = true});

  final String key;
  final String value;
  final bool replace;

  @override
  Future<AWSStreamedHttpRequest> intercept(
    AWSStreamedHttpRequest request,
  ) async {
    if (replace) {
      request.headers[key] = value;
    } else {
      request.headers.putIfAbsent(key, () => value);
    }
    return request;
  }
}

/// Removes a header from the request.
class WithNoHeader extends HttpRequestInterceptor {
  const WithNoHeader(this.key);

  final String key;

  /// Do before signing, but after [WithHeader].
  @override
  int get order => 10;

  @override
  AWSStreamedHttpRequest intercept(
    AWSStreamedHttpRequest request,
  ) {
    request.headers.remove(key);
    return request;
  }
}
