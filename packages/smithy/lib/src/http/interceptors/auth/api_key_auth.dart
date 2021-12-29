import 'package:http/http.dart' as http;
import 'package:smithy/src/http/interceptors/interceptor.dart';

enum ApiKeyLocation { header, query }

/// Intercepts HTTP requests to provide an API key parameter.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/auth-traits.html#httpapikeyauth-trait
class ApiKeyAuthInterceptor extends HttpInterceptor {
  const ApiKeyAuthInterceptor({
    required this.name,
    required this.apiKey,
    required this.location,
    this.scheme,
  });

  final String name;
  final String apiKey;
  final ApiKeyLocation location;
  final String? scheme;

  @override
  http.BaseRequest intercept(http.BaseRequest request) {
    if (location == ApiKeyLocation.header) {
      if (scheme != null) {
        request.headers['Authorization'] = scheme!;
      }
      request.headers[name] = apiKey;
    } else {
      request.url.queryParameters[name] = apiKey;
    }
    return request;
  }
}
