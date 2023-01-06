// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.query.model_query_exception}
/// Exception thrown during a model query operation in the API or DataStore
/// categories.
/// {@endtemplate}
class ModelQueryException extends AmplifyException {
  /// {@macro amplify_core.query.model_query_exception}
  const ModelQueryException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'QueryException';
}
