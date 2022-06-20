import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';

/// Appends a user agent to the platform-specific header.
class WithUserAgent extends HttpRequestInterceptor {
  const WithUserAgent(this.userAgent);

  final String userAgent;

  @override
  AWSStreamedHttpRequest intercept(AWSStreamedHttpRequest request) {
    request.headers.update(
      zIsWeb ? AWSHeaders.amzUserAgent : AWSHeaders.userAgent,
      (value) => '$value $userAgent',
      ifAbsent: () => userAgent,
    );
    return request;
  }
}
