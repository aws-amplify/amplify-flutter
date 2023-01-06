// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// An exception thrown during a codegen operation.
class CodegenException implements Exception {
  const CodegenException(this.message);

  final String message;

  @override
  String toString() => 'CodegenException($message)';
}
