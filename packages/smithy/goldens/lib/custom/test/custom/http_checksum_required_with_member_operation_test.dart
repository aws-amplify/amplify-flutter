// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

// ignore_for_file: unused_element
library custom_v1.custom.test.http_checksum_required_with_member_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i7;

import 'package:built_value/serializer.dart';
import 'package:custom_v1/src/custom/model/checksum_algorithm.dart' as _i6;
import 'package:custom_v1/src/custom/model/http_checksum_required_with_member_input.dart'
    as _i5;
import 'package:custom_v1/src/custom/operation/http_checksum_required_with_member_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'HttpChecksumRequiredWithMemberNoAlgorithm (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.HttpChecksumRequiredWithMemberOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'HttpChecksumRequiredWithMemberNoAlgorithm',
          documentation:
              'Adds an MD5 checksum when required and no algorithm is provided',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: 'hello, world',
          bodyMediaType: 'application/octet-stream',
          params: {'content': 'hello, world'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/octet-stream',
            'Content-MD5': '5NfxtO0uQtFYmPSyewGdpA==',
          },
          forbidHeaders: ['x-amz-request-algorithm'],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/requiredWithMember',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          HttpChecksumRequiredWithMemberInputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'HttpChecksumRequiredWithMemberWithSHA1 (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.HttpChecksumRequiredWithMemberOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'HttpChecksumRequiredWithMemberWithSHA1',
          documentation:
              'Adds a SHA-1 checksum when that algorithm is provided',
          protocol: _i4.ShapeId(
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
          uri: '/requiredWithMember',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          HttpChecksumRequiredWithMemberInputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'HttpChecksumRequiredWithMemberWithSHA256 (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.HttpChecksumRequiredWithMemberOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'HttpChecksumRequiredWithMemberWithSHA256',
          documentation:
              'Adds a SHA-256 checksum when that algorithm is provided',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: 'hello, world',
          bodyMediaType: 'application/octet-stream',
          params: {
            'checksumAlgorithm': 'SHA256',
            'content': 'hello, world',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/octet-stream',
            'x-amz-checksum-sha256':
                'Ccp+TqpuiunH0mEWcSkYSINkTQffuny/vEyKLgg2DVs=',
            'x-amz-request-algorithm': 'SHA256',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/requiredWithMember',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          HttpChecksumRequiredWithMemberInputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'HttpChecksumRequiredWithMemberWithCRC32 (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.HttpChecksumRequiredWithMemberOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'HttpChecksumRequiredWithMemberWithCRC32',
          documentation:
              'Adds a CRC32 checksum when that algorithm is provided',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: 'hello, world',
          bodyMediaType: 'application/octet-stream',
          params: {
            'checksumAlgorithm': 'CRC32',
            'content': 'hello, world',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/octet-stream',
            'x-amz-checksum-crc32': '/6tyOg==',
            'x-amz-request-algorithm': 'CRC32',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/requiredWithMember',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          HttpChecksumRequiredWithMemberInputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'HttpChecksumRequiredWithMemberWithCRC32C (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.HttpChecksumRequiredWithMemberOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'HttpChecksumRequiredWithMemberWithCRC32C',
          documentation:
              'Adds a CRC32C checksum when that algorithm is provided',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: 'hello, world',
          bodyMediaType: 'application/octet-stream',
          params: {
            'checksumAlgorithm': 'CRC32C',
            'content': 'hello, world',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/octet-stream',
            'x-amz-checksum-crc32c': 'aZmkHw==',
            'x-amz-request-algorithm': 'CRC32C',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/requiredWithMember',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          HttpChecksumRequiredWithMemberInputRestJson1Serializer()
        ],
      );
    },
  );
}

class HttpChecksumRequiredWithMemberInputRestJson1Serializer extends _i4
    .StructuredSmithySerializer<_i5.HttpChecksumRequiredWithMemberInput> {
  const HttpChecksumRequiredWithMemberInputRestJson1Serializer()
      : super('HttpChecksumRequiredWithMemberInput');

  @override
  Iterable<Type> get types => const [_i5.HttpChecksumRequiredWithMemberInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.HttpChecksumRequiredWithMemberInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.HttpChecksumRequiredWithMemberInputBuilder();
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
            specifiedType: const FullType(_i6.ChecksumAlgorithm),
          ) as _i6.ChecksumAlgorithm);
        case 'content':
          result.content = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.Uint8List),
          ) as _i7.Uint8List);
      }
    }

    result.content ??= _i7.Uint8List(0);
    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i5.HttpChecksumRequiredWithMemberInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
