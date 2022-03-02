import 'package:smithy/smithy.dart';

/// Intercepts HTTP requests to provide a Basic credentials header.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/auth-traits.html#httpdigestauth-trait
class DigestAuthInterceptor extends HttpRequestInterceptor {
  const DigestAuthInterceptor();

  @override
  Future<AWSStreamedHttpRequest> intercept(
    AWSStreamedHttpRequest request,
  ) async {
    // TODO
    throw UnimplementedError();
  }
}
