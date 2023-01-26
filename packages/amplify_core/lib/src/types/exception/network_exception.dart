// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.network_exception}
/// Exception thrown when the requested operation fails due to a network
/// failure.
/// {@endtemplate}
class NetworkException extends AmplifyException
    implements AuthException, StorageException {
  /// {@macro amplify_core.network_exception}
  const NetworkException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });
}
