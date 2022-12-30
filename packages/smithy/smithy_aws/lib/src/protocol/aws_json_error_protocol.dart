// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
