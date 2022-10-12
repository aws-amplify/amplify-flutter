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

import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:smithy_aws/src/protocol/aws_http_protocol.dart';

/// Provides common error handling to the JSON-based AWS protocols:
/// - [AWS JSON 1.0](https://awslabs.github.io/smithy/1.0/spec/aws/aws-json-1_0-protocol.html#operation-error-serialization)
/// - [AWS JSON 1.1](https://awslabs.github.io/smithy/1.0/spec/aws/aws-json-1_1-protocol.html#operation-error-serialization)
/// - [restJson1](https://awslabs.github.io/smithy/1.0/spec/aws/aws-restjson1-protocol.html#operation-error-serialization)
mixin AWSJsonErrorProtocol<InputPayload, Input, OutputPayload, Output>
    on AWSHttpProtocol<InputPayload, Input, OutputPayload, Output> {
  /// Error responses in the awsJson1_0 protocol are serialized identically to
  /// standard responses with one additional component to distinguish which
  /// error is contained. New server-side protocol implementations SHOULD use a
  /// body field named __type. The component MUST be one of the following: an
  /// additional header with the name X-Amzn-Errortype, a body field with the
  /// name code, or a body field named __type. The value of this component
  /// SHOULD contain the error's Shape ID.
  @override
  Future<String?> resolveErrorType(AWSBaseHttpResponse response) async {
    var header = response.headers['X-Amzn-Errortype'];
    if (header != null) {
      return _sanitizeError(header);
    }

    final body = await utf8.decodeStream(response.split());
    final json = jsonDecode(body) as Map;
    final code = json['code'] as String?;
    if (code != null) {
      return _sanitizeError(code);
    }

    final type = json['__type'] as String?;
    if (type != null) {
      return _sanitizeError(type);
    }

    return null;
  }

  /// Legacy server-side protocol implementations sometimes include different
  /// information in this value. All client-side implementations SHOULD support
  /// sanitizing the value to retrieve the disambiguated error type using the
  /// following steps:
  /// 1. If a `:` character is present, then take only the contents **before**
  /// the first `:` character in the value.
  /// 2. If a `#` character is present, then take only the contents **after**
  /// the first `#` character in the value.
  ///
  /// All of the following error values resolve to `FooError`:
  ///
  /// - FooError
  /// - FooError:http://internal.amazon.com/coral/com.amazon.coral.validate/
  /// - aws.protocoltests.restjson#FooError
  /// - aws.protocoltests.restjson#FooError:http://internal.amazon.com/coral/com.amazon.coral.validate/
  String _sanitizeError(String errorType) {
    var sanitized = errorType;
    if (sanitized.contains(':')) {
      sanitized = sanitized.substring(0, sanitized.indexOf(':'));
    }
    if (sanitized.contains('#')) {
      sanitized = sanitized.substring(sanitized.indexOf('#') + 1);
    }
    return sanitized;
  }
}
