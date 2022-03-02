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

/// {@template smithy.http_request_interceptor}
/// Intercepts HTTP requests for validation and modification.
/// {@endtemplate}
abstract class HttpRequestInterceptor {
  /// {@macro smithy.http_request_interceptor}
  const HttpRequestInterceptor();

  /// The ordering for the interceptor. Higher values come later and thus
  /// can depend on lower-value interceptors running first.
  int get order => 1;

  /// Intercepts an HTTP request, optionally returning a new request such as
  /// in the case of signing.
  @useResult
  FutureOr<AWSStreamedHttpRequest> intercept(AWSStreamedHttpRequest request);
}

/// {@template smithy.http_response_interceptor}
/// Intercepts HTTP responses for validation.
/// {@endtemplate}
abstract class HttpResponseInterceptor {
  /// {@macro smithy.http_response_interceptor}
  const HttpResponseInterceptor();

  /// Intercepts an HTTP response.
  FutureOr<void> intercept(AWSStreamedHttpResponse response);
}
