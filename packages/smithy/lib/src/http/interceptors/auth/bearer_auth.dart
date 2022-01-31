import 'package:smithy/smithy.dart';

/// Intercepts HTTP requests to provide a `Bearer` credentials header.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/auth-traits.html#httpbearerauth-trait
abstract class BearerAuthInterceptor extends HttpInterceptor {
  const BearerAuthInterceptor(this.token);

  final CredentialsProvider token;

  @override
  Future<AWSStreamedHttpRequest> intercept(
    AWSStreamedHttpRequest request,
    
  ) async {
    final _token = await token();
    request.headers['Authorization'] = 'Bearer $_token';
    return request;
  }
}
