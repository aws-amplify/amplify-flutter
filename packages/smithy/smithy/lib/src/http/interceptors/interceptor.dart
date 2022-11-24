// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
