// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v2.glacier.test.upload_multipart_part_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i7;

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/glacier/model/invalid_parameter_value_exception.dart'
    as _i9;
import 'package:rest_json1_v2/src/glacier/model/missing_parameter_value_exception.dart'
    as _i10;
import 'package:rest_json1_v2/src/glacier/model/request_timeout_exception.dart'
    as _i11;
import 'package:rest_json1_v2/src/glacier/model/resource_not_found_exception.dart'
    as _i12;
import 'package:rest_json1_v2/src/glacier/model/service_unavailable_exception.dart'
    as _i13;
import 'package:rest_json1_v2/src/glacier/model/upload_multipart_part_input.dart'
    as _i6;
import 'package:rest_json1_v2/src/glacier/model/upload_multipart_part_output.dart'
    as _i8;
import 'package:rest_json1_v2/src/glacier/operation/upload_multipart_part_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i5;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('GlacierMultipartChecksums (request)', () async {
    await _i2.httpRequestTest(
        operation: _i3.UploadMultipartPartOperation(
            region: 'us-east-1',
            baseUri: Uri.parse('https://example.com'),
            credentialsProvider: const _i4.AWSCredentialsProvider(
                _i4.AWSCredentials(
                    'DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'))),
        testCase: const _i2.HttpRequestTestCase(
            id: 'GlacierMultipartChecksums',
            documentation:
                'Glacier requires checksum headers that are cumbersome to provide.',
            protocol: _i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: 'hello world',
            bodyMediaType: null,
            params: {'accountId': 'foo', 'vaultName': 'bar', 'uploadId': 'baz', 'body': 'hello world'},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {
              'X-Amz-Glacier-Version': '2012-06-01',
              'X-Amz-Content-Sha256':
                  'b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9',
              'X-Amz-Sha256-Tree-Hash':
                  'b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9'
            },
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: _i2.AppliesTo.client,
            method: 'PUT',
            uri: '/foo/vaults/bar/multipart-uploads/baz',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializers: const [
          UploadMultipartPartInputRestJson1Serializer()
        ]);
  }, skip: 'Glacier is not supported yet');
}

class UploadMultipartPartInputRestJson1Serializer
    extends _i5.StructuredSmithySerializer<_i6.UploadMultipartPartInput> {
  const UploadMultipartPartInputRestJson1Serializer()
      : super('UploadMultipartPartInput');

  @override
  Iterable<Type> get types => const [_i6.UploadMultipartPartInput];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i6.UploadMultipartPartInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i6.UploadMultipartPartInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'accountId':
          result.accountId = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'body':
          if (value != null) {
            result.body = (serializers.deserialize(value,
                specifiedType: const FullType(_i7.Stream, [
                  FullType(List, [FullType(int)])
                ])) as _i7.Stream<List<int>>);
          }
          break;
        case 'checksum':
          if (value != null) {
            result.checksum = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'range':
          if (value != null) {
            result.range = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'uploadId':
          result.uploadId = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'vaultName':
          result.vaultName = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
      }
    }

    result.body ??= const _i7.Stream.empty();
    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}

class UploadMultipartPartOutputRestJson1Serializer
    extends _i5.StructuredSmithySerializer<_i8.UploadMultipartPartOutput> {
  const UploadMultipartPartOutputRestJson1Serializer()
      : super('UploadMultipartPartOutput');

  @override
  Iterable<Type> get types => const [_i8.UploadMultipartPartOutput];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i8.UploadMultipartPartOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i8.UploadMultipartPartOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'checksum':
          if (value != null) {
            result.checksum = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}

class InvalidParameterValueExceptionRestJson1Serializer
    extends _i5.StructuredSmithySerializer<_i9.InvalidParameterValueException> {
  const InvalidParameterValueExceptionRestJson1Serializer()
      : super('InvalidParameterValueException');

  @override
  Iterable<Type> get types => const [_i9.InvalidParameterValueException];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i9.InvalidParameterValueException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i9.InvalidParameterValueExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}

class MissingParameterValueExceptionRestJson1Serializer extends _i5
    .StructuredSmithySerializer<_i10.MissingParameterValueException> {
  const MissingParameterValueExceptionRestJson1Serializer()
      : super('MissingParameterValueException');

  @override
  Iterable<Type> get types => const [_i10.MissingParameterValueException];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i10.MissingParameterValueException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i10.MissingParameterValueExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}

class RequestTimeoutExceptionRestJson1Serializer
    extends _i5.StructuredSmithySerializer<_i11.RequestTimeoutException> {
  const RequestTimeoutExceptionRestJson1Serializer()
      : super('RequestTimeoutException');

  @override
  Iterable<Type> get types => const [_i11.RequestTimeoutException];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i11.RequestTimeoutException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i11.RequestTimeoutExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}

class ResourceNotFoundExceptionRestJson1Serializer
    extends _i5.StructuredSmithySerializer<_i12.ResourceNotFoundException> {
  const ResourceNotFoundExceptionRestJson1Serializer()
      : super('ResourceNotFoundException');

  @override
  Iterable<Type> get types => const [_i12.ResourceNotFoundException];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i12.ResourceNotFoundException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i12.ResourceNotFoundExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}

class ServiceUnavailableExceptionRestJson1Serializer
    extends _i5.StructuredSmithySerializer<_i13.ServiceUnavailableException> {
  const ServiceUnavailableExceptionRestJson1Serializer()
      : super('ServiceUnavailableException');

  @override
  Iterable<Type> get types => const [_i13.ServiceUnavailableException];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i13.ServiceUnavailableException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i13.ServiceUnavailableExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}
