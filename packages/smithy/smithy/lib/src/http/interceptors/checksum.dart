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

import 'dart:async';
import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:crypto/crypto.dart';
import 'package:smithy/smithy.dart';

const _header = 'Content-MD5';

/// {@template smithy.with_checksum}
/// Intercepts HTTP requests to include an MD5 content hash in the header.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/behavior-traits.html#httpchecksumrequired-trait
/// {@endtemplate}
class WithChecksum extends HttpRequestInterceptor {
  /// {@macro smithy.with_checksum}
  const WithChecksum();

  @override
  Future<AWSStreamedHttpRequest> intercept(
    AWSStreamedHttpRequest request,
  ) async {
    if (request.headers.containsKey(_header)) {
      return request;
    }
    final digest = await md5.bind(request.split()).last;
    request.headers[_header] = base64Encode(digest.bytes);
    return request;
  }
}

/// {@template smithy.validate_checksum}
/// Intercepts HTTP responses to validate the body against an MD5 content hash
/// in the header.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/behavior-traits.html#httpchecksumrequired-trait
/// {@endtemplate}
class ValidateChecksum extends HttpResponseInterceptor {
  /// {@macro smithy.validate_checksum}
  const ValidateChecksum();

  @override
  Future<AWSBaseHttpResponse> intercept(AWSBaseHttpResponse response) async {
    final checksum = response.headers[_header];
    if (checksum == null) {
      return response;
    }
    final digest = await md5.bind(response.split()).last;
    final computed = base64Encode(digest.bytes);
    if (checksum != computed) {
      throw ChecksumValidationException(
        'Content validation failed.\n'
        'Expected: $checksum\n'
        'Got: $computed',
      );
    }
    return response;
  }
}

/// {@template smithy.checksum_validation_exception}
/// Thrown when the computed hash of a response payload does not match the
/// `Content-MD5` header returned from the server.
/// {@endtemplate}
class ChecksumValidationException implements Exception {
  /// {@macro smithy.checksum_validation_exception}
  const ChecksumValidationException(this.message);

  final String message;

  @override
  String toString() => 'ChecksumValidationException{$message}';
}
