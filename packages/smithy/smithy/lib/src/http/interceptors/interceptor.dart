// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

export 'checksum.dart';
export 'common/with_content_length.dart';
export 'common/with_header.dart';
export 'common/with_host.dart';
export 'common/with_user_agent.dart';

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
  FutureOr<AWSBaseHttpRequest> intercept(AWSBaseHttpRequest request);
}

/// {@template smithy.http_response_interceptor}
/// Intercepts HTTP responses for validation.
/// {@endtemplate}
abstract class HttpResponseInterceptor {
  /// {@macro smithy.http_response_interceptor}
  const HttpResponseInterceptor();

  /// Intercepts an HTTP response.
  FutureOr<AWSBaseHttpResponse> intercept(AWSBaseHttpResponse response);
}
