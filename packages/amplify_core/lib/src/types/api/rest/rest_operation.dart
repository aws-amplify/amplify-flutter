// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
