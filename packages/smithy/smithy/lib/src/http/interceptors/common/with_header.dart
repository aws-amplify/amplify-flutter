// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';

/// Adds a header to the request.
class WithHeader extends HttpRequestInterceptor {
  const WithHeader(this.key, this.value, {this.replace = true});

  final String key;
  final String value;
  final bool replace;

  @override
  AWSBaseHttpRequest intercept(
    AWSBaseHttpRequest request,
  ) {
    if (replace) {
      request.headers[key] = value;
    } else {
      request.headers.putIfAbsent(key, () => value);
    }
    return request;
  }
}

/// Removes a header from the request.
class WithNoHeader extends HttpRequestInterceptor {
  const WithNoHeader(this.key);

  final String key;

  /// Do before signing, but after [WithHeader].
  @override
  int get order => 10;

  @override
  AWSBaseHttpRequest intercept(
    AWSBaseHttpRequest request,
  ) {
    request.headers.remove(key);
    return request;
  }
}
