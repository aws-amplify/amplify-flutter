// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'amplify_exception.dart';

/// Exception thrown from codegen models
class AmplifyCodeGenModelException extends AmplifyException {
  /// Named constructor
  const AmplifyCodeGenModelException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'AmplifyCodeGenModelException';
}
