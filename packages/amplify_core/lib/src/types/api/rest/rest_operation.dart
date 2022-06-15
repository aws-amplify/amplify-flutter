/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';

/// Allows callers to synchronously get unstreamed response with the decoded body.
extension RestOperation on CancelableOperation<AWSStreamedHttpResponse> {
  Future<AWSHttpResponse> get response async {
    final value = await this.value;
    return AWSHttpResponse(
      body: await value.bodyBytes,
      statusCode: value.statusCode,
      headers: value.headers,
    );
  }
}
