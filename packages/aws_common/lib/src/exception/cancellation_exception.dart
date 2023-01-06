// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template aws_common.exception.cancellation_exception}
/// Exception thrown when an operation is cancelled before completion.
/// {@endtemplate}
class CancellationException implements Exception {
  /// {@macro aws_common.exception.cancellation_exception}
  const CancellationException([this.operationId]);

  /// The ID of the operation which was cancelled.
  final String? operationId;

  @override
  String toString() => 'The operation was cancelled'
      '${operationId == null ? '' : ' ($operationId)'}';
}
