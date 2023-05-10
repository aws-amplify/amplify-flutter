// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../amplify_exception.dart';

/// {@template amplify_core.api.api_operation_error}
/// An in-process operation encountered a processing error
/// {@endtemplate}
class ApiOperationException extends ApiException {
  /// {@macro amplify_core.api.api_operation_error}
  const ApiOperationException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'ApiOperationException';
}
