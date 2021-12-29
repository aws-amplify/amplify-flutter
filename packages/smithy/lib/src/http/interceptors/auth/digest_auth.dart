import 'package:http/http.dart' as http;
import 'package:smithy/src/http/interceptors/interceptor.dart';

/// Intercepts HTTP requests to provide a Basic credentials header.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/auth-traits.html#httpdigestauth-trait
class DigestAuthInterceptor extends HttpInterceptor {
  const DigestAuthInterceptor();

  @override
  void intercept(http.BaseRequest request) {
    // TODO
  }
}
