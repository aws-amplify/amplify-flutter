import 'package:smithy/smithy.dart';

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
  final CredentialsProvider apiKey;
  final ApiKeyLocation location;
  final String? scheme;

  @override
  Future<AWSStreamedHttpRequest> intercept(
    AWSStreamedHttpRequest request,
    HttpRequestContextBuilder context,
  ) async {
    final _apiKey = await apiKey();
    if (location == ApiKeyLocation.header) {
      if (scheme != null) {
        request.headers['Authorization'] = scheme!;
      }
      request.headers[name] = _apiKey;
    } else {
      request.queryParameters[name] = _apiKey;
    }
    return request;
  }
}
