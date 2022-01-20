import 'dart:async';

import 'package:smithy/smithy.dart';

export 'auth/api_key_auth.dart';
export 'auth/basic_auth.dart';
export 'auth/bearer_auth.dart';
export 'auth/credentials_provider.dart';
export 'auth/digest_auth.dart';
export 'checksum.dart';
export 'common/with_content_type.dart';
export 'common/with_header.dart';

/// Intercepts HTTP requests to provide additional headers.
abstract class HttpInterceptor extends Interceptor<AWSStreamedHttpRequest> {
  const HttpInterceptor();

  @override
  FutureOr<void> intercept(AWSStreamedHttpRequest request);
}
