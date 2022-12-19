// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/smithy_aws.dart';

/// {@template smithy_aws.interceptors.check_error_on_success}
/// Checks for errors in the body of successful 2xx responses.
///
/// Some S3 operations complete with a 2xx status code but embed errors in the
/// body. These must be manually captured since there is no automated
/// mechanism for this behavior in Smithy.
///
/// See, for example, the [CopyObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html)
/// API docs which describe this behavior fully:
///
/// > A copy request might return an error when Amazon S3 receives the copy
///   request or while Amazon S3 is copying the files. If the error occurs
///   before the copy action starts, you receive a standard Amazon S3 error.
///   If the error occurs during the copy operation, the error response is
///   embedded in the `200 OK` response. This means that a `200 OK` response can
///   contain either a success or an error. Design your application to parse
///   the contents of the response and handle it appropriately.
/// {@endtemplate}
class CheckErrorOnSuccess extends HttpResponseInterceptor {
  /// {@macro smithy_aws.interceptors.check_error_on_success}
  const CheckErrorOnSuccess();

  @override
  Future<AWSBaseHttpResponse> intercept(AWSBaseHttpResponse response) async {
    final isSuccess = response.statusCode >= 200 && response.statusCode < 300;
    if (!isSuccess) {
      return response;
    }
    try {
      if (await RestXmlProtocol.resolveError(response) == null) {
        return response;
      }
    } on Object {
      return response;
    }
    if (response is AWSHttpResponse) {
      return AWSHttpResponse(
        // According to https://aws.amazon.com/premiumsupport/knowledge-center/s3-resolve-200-internalerror/
        // 200 error responses are similar to 5xx errors.
        statusCode: 500,
        headers: response.headers,
        body: response.bodyBytes,
      );
    }
    return AWSStreamedHttpResponse(
      statusCode: 500,
      headers: response.headers,
      body: response.body,
    );
  }
}
