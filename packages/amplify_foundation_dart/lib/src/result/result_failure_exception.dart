// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

/// {@template amplify_foundation_dart.result_failure_exception}
/// An exception thrown when attempting to access data from a failed result.
/// {@endtemplate}
class ResultFailureException extends AmplifyException {
  /// {@macro amplify_foundation_dart.result_failure_exception}
  ResultFailureException({required super.cause})
    : super(
        message: 'result failed, there is no data available',
        recoverySuggestion:
            'add handling for the failure state or address the underlying cause',
      );
}
