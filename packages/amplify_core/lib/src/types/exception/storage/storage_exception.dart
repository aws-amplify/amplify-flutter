// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../amplify_exception.dart';

/// {@template amplify_core.storage.exception}
/// The base class for Storage category exceptions.
/// {@endtemplate}
sealed class StorageException extends AmplifyException with AWSDebuggable {
  /// {@macro amplify_core.storage.exception}
  const StorageException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });
}
