// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v1.glacier.test.upload_archive_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i7;

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/glacier/model/archive_creation_output.dart'
    as _i8;
import 'package:rest_json1_v1/src/glacier/model/invalid_parameter_value_exception.dart'
    as _i9;
import 'package:rest_json1_v1/src/glacier/model/missing_parameter_value_exception.dart'
    as _i10;
import 'package:rest_json1_v1/src/glacier/model/request_timeout_exception.dart'
    as _i11;
import 'package:rest_json1_v1/src/glacier/model/resource_not_found_exception.dart'
    as _i12;
import 'package:rest_json1_v1/src/glacier/model/service_unavailable_exception.dart'
    as _i13;
import 'package:rest_json1_v1/src/glacier/model/upload_archive_input.dart'
    as _i6;
import 'package:rest_json1_v1/src/glacier/operation/upload_archive_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i5;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('GlacierVersionHeader (request)', () async {
    await _i2.httpRequestTest(
        operation: _i3.UploadArchiveOperation(
            region: 'us-east-1',
            baseUri: Uri.parse('https://example.com'),
            credentialsProvider: const _i4.AWSCredentialsProvider(
                _i4.AWSCredentials(
                    'DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'))),
        testCase: const _i2.HttpRequestTestCase(
            id: 'GlacierVersionHeader',
            documentation:
                'Glacier requires that a version header be set on all requests.',
            protocol: _i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '',
            bodyMediaType: null,
            params: {'accountId': 'foo', 'vaultName': 'bar'},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'X-Amz-Glacier-Version': '2012-06-01'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'POST',
            uri: '/foo/vaults/bar/archives',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializers: const [UploadArchiveInputRestJson1Serializer()]);
  }, skip: 'Glacier is not supported yet');
  _i1.test('GlacierChecksums (request)', () async {
    await _i2.httpRequestTest(
        operation: _i3.UploadArchiveOperation(
            region: 'us-east-1',
            baseUri: Uri.parse('https://example.com'),
            credentialsProvider: const _i4.AWSCredentialsProvider(
                _i4.AWSCredentials(
                    'DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'))),
        testCase: const _i2.HttpRequestTestCase(
            id: 'GlacierChecksums',
            documentation:
                'Glacier requires checksum headers that are cumbersome to provide.',
            protocol: _i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: 'hello world',
            bodyMediaType: null,
            params: {'accountId': 'foo', 'vaultName': 'bar', 'body': 'hello world'},
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
            method: 'POST',
            uri: '/foo/vaults/bar/archives',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializers: const [UploadArchiveInputRestJson1Serializer()]);
  }, skip: 'Glacier is not supported yet');
  _i1.test('GlacierAccountId (request)', () async {
    await _i2.httpRequestTest(
        operation: _i3.UploadArchiveOperation(
            region: 'us-east-1',
            baseUri: Uri.parse('https://example.com'),
            credentialsProvider: const _i4.AWSCredentialsProvider(
                _i4.AWSCredentials(
                    'DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'))),
        testCase: const _i2.HttpRequestTestCase(
            id: 'GlacierAccountId',
            documentation:
                'Glacier requires that the account id be set, but you can just use a\nhyphen (-) to indicate the current account. This should be default\nbehavior if the customer provides a null or empty string.',
            protocol: _i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '',
            bodyMediaType: null,
            params: {'accountId': '', 'vaultName': 'bar'},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'X-Amz-Glacier-Version': '2012-06-01'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: _i2.AppliesTo.client,
            method: 'POST',
            uri: '/-/vaults/bar/archives',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializers: const [UploadArchiveInputRestJson1Serializer()]);
  }, skip: 'Glacier is not supported yet');
}

class UploadArchiveInputRestJson1Serializer
    extends _i5.StructuredSmithySerializer<_i6.UploadArchiveInput> {
  const UploadArchiveInputRestJson1Serializer() : super('UploadArchiveInput');

  @override
  Iterable<Type> get types => const [_i6.UploadArchiveInput];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i6.UploadArchiveInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i6.UploadArchiveInputBuilder();
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
        case 'archiveDescription':
          if (value != null) {
            result.archiveDescription = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
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

class ArchiveCreationOutputRestJson1Serializer
    extends _i5.StructuredSmithySerializer<_i8.ArchiveCreationOutput> {
  const ArchiveCreationOutputRestJson1Serializer()
      : super('ArchiveCreationOutput');

  @override
  Iterable<Type> get types => const [_i8.ArchiveCreationOutput];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i8.ArchiveCreationOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i8.ArchiveCreationOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'archiveId':
          if (value != null) {
            result.archiveId = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'checksum':
          if (value != null) {
            result.checksum = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'location':
          if (value != null) {
            result.location = (serializers.deserialize(value,
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
