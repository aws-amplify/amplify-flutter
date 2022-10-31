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
