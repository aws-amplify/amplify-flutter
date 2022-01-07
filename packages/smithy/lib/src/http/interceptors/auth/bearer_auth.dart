import 'package:smithy/smithy.dart';
import 'package:smithy/src/http/interceptors/auth/credentials_provider.dart';

/// Intercepts HTTP requests to provide a `Bearer` credentials header.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/auth-traits.html#httpbearerauth-trait
abstract class BearerAuthInterceptor extends HttpInterceptor {
  const BearerAuthInterceptor(this.token);

  final CredentialsProvider token;

  @override
  Future<void> intercept(AWSBaseHttpRequest request) async {
    final _token = await token();
    request.headers['Authorization'] = 'Bearer $_token';
  }
}
