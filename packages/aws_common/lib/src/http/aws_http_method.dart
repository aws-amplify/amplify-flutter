// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Helpers for [AWSHttpMethod].
@Deprecated('Use AWSHttpMethod instead')
typedef AWSHttpMethodHelper = AWSHttpMethod;

/// Valid HTTP methods for AWS requests.
enum AWSHttpMethod {
  /// HTTP GET
  get,

  /// HTTP HEAD
  head,

  /// HTTP POST
  post,

  /// HTTP PUT
  put,

  /// HTTP PATCH
  patch,

  /// HTTP DELETE
  delete,

  /// HTTP CONNECT
  connect,

  /// HTTP OPTIONS
  options,

  /// HTTP TRACE
  trace;

  /// Parses the HTTP method from [method].
  static AWSHttpMethod fromString(String method) =>
      values.firstWhere((el) => method.toUpperCase() == el.value);

  /// {@template aws_common.http_method_value}
  /// Returns the uppercased HTTP method, e.g. 'POST'.
  /// {@endtemplate}
  String get value => name.toUpperCase();
}
