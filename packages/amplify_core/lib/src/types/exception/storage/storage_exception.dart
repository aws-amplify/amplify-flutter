// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.exception}
/// The base class for Storage category exceptions.
/// {@endtemplate}
abstract class StorageException extends AmplifyException with AWSDebuggable {
  /// {@macro amplify_core.storage.exception}
  const StorageException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });
}
