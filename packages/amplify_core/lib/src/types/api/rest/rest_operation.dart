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

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.rest.rest_operation}
/// A wrapper over a [CancelableOperation] specific to [AWSHttpResponse].
/// {@endtemplate}
class RestOperation extends AWSHttpOperation<AWSHttpResponse> {
  RestOperation._(
    super.operation, {
    required super.requestProgress,
    required super.responseProgress,
  });

  /// Takes [AWSHttpOperation] and ensures response not streamed.
  factory RestOperation.fromHttpOperation(AWSHttpOperation httpOperation) {
    CancelableOperation<AWSHttpResponse> cancelOp =
        httpOperation.operation.then(
      (response) {
        if (response is AWSStreamedHttpResponse) {
          return response.read();
        } else if (response is AWSHttpResponse) {
          return response;
        }
        // In case other response types ever added.
        throw const ApiException('Unable to convert to AWSHttpResponse');
      },
    );
    return RestOperation._(
      cancelOp,
      requestProgress: httpOperation.requestProgress,
      responseProgress: httpOperation.responseProgress,
    );
  }
}
