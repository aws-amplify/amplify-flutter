import 'dart:async';

import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart';

export 'auth/api_key_auth.dart';
export 'auth/basic_auth.dart';
export 'auth/bearer_auth.dart';
export 'auth/credentials_provider.dart';
export 'auth/digest_auth.dart';
export 'checksum.dart';
export 'common/with_content_length.dart';
export 'common/with_header.dart';

/// Intercepts HTTP requests to provide additional headers.
abstract class HttpInterceptor {
  const HttpInterceptor();

  /// The ordering for the interceptor. Higher values come later and thus
  /// can depend on lower-value interceptors running first.
  int get order => 1;

  @useResult
  FutureOr<AWSStreamedHttpRequest> intercept(
    AWSStreamedHttpRequest request,
    HttpRequestContextBuilder context,
  );
}
