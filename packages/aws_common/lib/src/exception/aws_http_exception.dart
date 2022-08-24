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
    );
  }

  const AWSHttpException._(this.method, this.uri, this.underlyingException);

  /// The method of the HTTP operation which was in progress.
  final AWSHttpMethod method;

  /// The URI of the HTTP operation which was in progress.
  final Uri uri;

  /// The exception which triggered this exception being thrown.
  final Object? underlyingException;

  @override
  String toString() => '${method.value} $uri failed'
      '${underlyingException == null ? '' : ': $underlyingException'}';
}
