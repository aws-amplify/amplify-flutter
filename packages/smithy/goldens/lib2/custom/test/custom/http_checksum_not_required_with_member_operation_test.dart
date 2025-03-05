// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library custom_v2.custom.test.http_checksum_not_required_with_member_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i4;

import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/custom/model/checksum_algorithm.dart';
import 'package:custom_v2/src/custom/model/http_checksum_not_required_with_member_input.dart';
import 'package:custom_v2/src/custom/operation/http_checksum_not_required_with_member_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'HttpChecksumNotRequiredWithMemberNoAlgorithm (request)',
    () async {
      await _i2.httpRequestTest(
        operation: HttpChecksumNotRequiredWithMemberOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'HttpChecksumNotRequiredWithMemberNoAlgorithm',
          documentation:
              'Adds no checksum when not required and no algorithm is provided',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: 'hello, world',
          bodyMediaType: 'application/octet-stream',
          params: {'content': 'hello, world'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/octet-stream'},
          forbidHeaders: [
            'Content-MD5',
            'x-amz-request-algorithm',
          ],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/notRequiredWithMember',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          HttpChecksumNotRequiredWithMemberInputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'HttpChecksumNotRequiredWithMemberWithSHA1 (request)',
    () async {
      await _i2.httpRequestTest(
        operation: HttpChecksumNotRequiredWithMemberOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'HttpChecksumNotRequiredWithMemberWithSHA1',
          documentation:
              'Adds a SHA-1 checksum when that algorithm is provided',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: 'hello, world',
          bodyMediaType: 'application/octet-stream',
          params: {
            'checksumAlgorithm': 'SHA1',
            'content': 'hello, world',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/octet-stream',
            'x-amz-checksum-sha1': 't+I+wpryKwtOQdox6GjVciYSHIQ=',
            'x-amz-request-algorithm': 'SHA1',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/notRequiredWithMember',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          HttpChecksumNotRequiredWithMemberInputRestJson1Serializer()
        ],
      );
    },
  );
}

class HttpChecksumNotRequiredWithMemberInputRestJson1Serializer extends _i3
    .StructuredSmithySerializer<HttpChecksumNotRequiredWithMemberInput> {
  const HttpChecksumNotRequiredWithMemberInputRestJson1Serializer()
      : super('HttpChecksumNotRequiredWithMemberInput');

  @override
  Iterable<Type> get types => const [HttpChecksumNotRequiredWithMemberInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  HttpChecksumNotRequiredWithMemberInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpChecksumNotRequiredWithMemberInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'checksumAlgorithm':
          result.checksumAlgorithm = (serializers.deserialize(
            value,
            specifiedType: const FullType(ChecksumAlgorithm),
          ) as ChecksumAlgorithm);
        case 'content':
          result.content = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.Uint8List),
          ) as _i4.Uint8List);
      }
    }

    result.content ??= _i4.Uint8List(0);
    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    HttpChecksumNotRequiredWithMemberInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
