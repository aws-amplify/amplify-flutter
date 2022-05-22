// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
