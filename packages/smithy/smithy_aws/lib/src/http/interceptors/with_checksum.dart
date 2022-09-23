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
import 'package:convert/convert.dart';
import 'package:crclib/catalog.dart';
import 'package:crclib/crclib.dart';
import 'package:crypto/crypto.dart';
import 'package:smithy/smithy.dart';

class _CrcValueToHeaderConverter extends Converter<CrcValue, String> {
  const _CrcValueToHeaderConverter();

  @override
  String convert(CrcValue input) {
    return base64Encode(hex.decode(input.toRadixString(16)));
  }

  @override
  Sink<CrcValue> startChunkedConversion(Sink<String> sink) {
    return ChunkedConversionSink.withCallback(
      (value) => sink
        ..add(convert(value.last))
        ..close(),
    );
  }
}

class _DigestToHeaderConverter extends Converter<Digest, String> {
  const _DigestToHeaderConverter();

  @override
  String convert(Digest input) {
    return base64Encode(input.bytes);
  }

  @override
  Sink<Digest> startChunkedConversion(Sink<String> sink) {
    return ChunkedConversionSink.withCallback(
      (value) => sink
        ..add(convert(value.last))
        ..close(),
    );
  }
}

/// {@template smithy_aws.interceptors.with_checksum}
/// Intercepts HTTP requests to include a content hash in the headers.
///
/// See: https://awslabs.github.io/smithy/2.0/aws/aws-core.html#aws-protocols-httpchecksum-trait
/// {@endtemplate}
class WithChecksum extends HttpRequestInterceptor {
  /// {@macro smithy_aws.interceptors.with_checksum}
  const WithChecksum([String? algorithm]) : _algorithm = algorithm ?? 'MD5';

  final String _algorithm;

  // https://awslabs.github.io/smithy/2.0/aws/aws-core.html#resolving-checksum-name
  String get _header {
    switch (_algorithm) {
      case 'MD5':
        return 'Content-MD5';
      default:
        return 'x-amz-checksum-${_algorithm.toLowerCase()}';
    }
  }

  static Converter<List<int>, String> _converterForAlgorithm(String algorithm) {
    switch (algorithm) {
      case 'CRC32C':
        return Crc32C().fuse(const _CrcValueToHeaderConverter());
      case 'CRC32':
        return Crc32().fuse(const _CrcValueToHeaderConverter());
      case 'SHA1':
        return sha1.fuse(const _DigestToHeaderConverter());
      case 'SHA256':
        return sha256.fuse(const _DigestToHeaderConverter());
    }
    return md5.fuse(const _DigestToHeaderConverter());
  }

  @override
  Future<AWSStreamedHttpRequest> intercept(
    AWSStreamedHttpRequest request,
  ) async {
    if (request.headers.containsKey(_header)) {
      return request;
    }
    final digest =
        await _converterForAlgorithm(_algorithm).bind(request.split()).last;
    request.headers[_header] = digest;
    return request;
  }
}
