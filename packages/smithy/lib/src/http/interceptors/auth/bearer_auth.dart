import 'package:http/http.dart' as http;
import 'package:smithy/src/http/interceptors/interceptor.dart';

/// Intercepts HTTP requests to provide a `Bearer` credentials header.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/auth-traits.html#httpbearerauth-trait
abstract class BearerAuthInterceptor extends HttpInterceptor {
  /// Uses [token] for authorization.
  const factory BearerAuthInterceptor(String token) =
      _BearerAuthTokenInterceptor;

  const BearerAuthInterceptor._();

  String get token;

  @override
  void intercept(http.BaseRequest request) {
    request.headers['Authorization'] = 'Bearer $token';
  }
}

class _BearerAuthTokenInterceptor extends BearerAuthInterceptor {
  const _BearerAuthTokenInterceptor(this.token) : super._();

  @override
  final String token;
}
