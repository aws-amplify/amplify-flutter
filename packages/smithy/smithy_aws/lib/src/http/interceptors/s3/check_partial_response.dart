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
import 'package:aws_common/src/http/aws_http_response.dart';

import 'package:smithy/smithy.dart';

/// {@template smithy_aws.interceptors.check_partial_response}
/// Transforms partial responses (as identified by a 206 status code) into
/// successful, 200, responses as expected by Smithy.
/// {@endtemplate}
class CheckPartialResponse extends HttpResponseInterceptor {
  /// {@macro smithy_aws.interceptors.check_partial_response}
  const CheckPartialResponse();

  @override
  AWSBaseHttpResponse intercept(AWSBaseHttpResponse response) {
    if (response.statusCode != 206) {
      return response;
    }
    if (response is AWSHttpResponse) {
      return AWSHttpResponse(
        statusCode: 200,
        headers: response.headers,
        body: response.bodyBytes,
      );
    } else {
      return AWSStreamedHttpResponse(
        statusCode: 200,
        headers: response.headers,
        body: response.body,
      );
    }
  }
}
