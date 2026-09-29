// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';

/// {@template aws_common.exception.aws_http_exception}
/// Exception thrown when an error occurs during an [AWSHttpOperation].
/// {@endtemplate}
class AWSHttpException implements Exception {
  /// {@macro aws_common.exception.aws_http_exception}
  factory AWSHttpException(
    AWSBaseHttpRequest request, [
    Object? underlyingException,
  ]) {
    if (underlyingException is AWSHttpException) {
      return underlyingException;
    }
    return AWSHttpException._(
      request.method,
      request.uri,
      underlyingException,
      false,
    );
  }

  /// Creates an exception for a transport-level failure that is safe to retry.
  factory AWSHttpException.retryable(
    AWSBaseHttpRequest request, [
    Object? underlyingException,
  ]) {
    // Anti-double-wrap guard. If an AWSHttpException is passed, keep its
    // original context but ensure the result is still flagged retryable.
    if (underlyingException is AWSHttpException) {
      if (underlyingException.retryable) {
        return underlyingException;
      }
      return AWSHttpException._(
        underlyingException.method,
        underlyingException.uri,
        underlyingException.underlyingException,
        true,
      );
    }
    return AWSHttpException._(
      request.method,
      request.uri,
      underlyingException,
      true,
    );
  }

  const AWSHttpException._(
    this.method,
    this.uri,
    this.underlyingException,
    this.retryable,
  );

  /// The method of the HTTP operation which was in progress.
  final AWSHttpMethod method;

  /// The URI of the HTTP operation which was in progress.
  final Uri uri;

  /// The exception which triggered this exception being thrown.
  final Object? underlyingException;

  /// Whether this is a transport-level failure that is safe to retry.
  final bool retryable;

  @override
  String toString() =>
      '${method.value} $uri failed'
      '${underlyingException == null ? '' : ': $underlyingException'}';
}
