// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_json1_v2.glacier.test.upload_archive_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/glacier/model/archive_creation_output.dart';
import 'package:rest_json1_v2/src/glacier/model/invalid_parameter_value_exception.dart';
import 'package:rest_json1_v2/src/glacier/model/missing_parameter_value_exception.dart';
import 'package:rest_json1_v2/src/glacier/model/request_timeout_exception.dart';
import 'package:rest_json1_v2/src/glacier/model/resource_not_found_exception.dart';
import 'package:rest_json1_v2/src/glacier/model/service_unavailable_exception.dart';
import 'package:rest_json1_v2/src/glacier/model/upload_archive_input.dart';
import 'package:rest_json1_v2/src/glacier/operation/upload_archive_operation.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('GlacierVersionHeader (request)', () async {
    await _i2.httpRequestTest(
      operation: UploadArchiveOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider:
            const _i3.AWSCredentialsProvider(_i3.AWSCredentials(
          'DUMMY-ACCESS-KEY-ID',
          'DUMMY-SECRET-ACCESS-KEY',
        )),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'GlacierVersionHeader',
        documentation:
            'Glacier requires that a version header be set on all requests.',
        protocol: _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        ),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {
          'accountId': 'foo',
          'vaultName': 'bar',
        },
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
        requireQueryParams: [],
      ),
      inputSerializers: const [UploadArchiveInputRestJson1Serializer()],
    );
  }, skip: 'Glacier is not supported yet');
  _i1.test('GlacierChecksums (request)', () async {
    await _i2.httpRequestTest(
      operation: UploadArchiveOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider:
            const _i3.AWSCredentialsProvider(_i3.AWSCredentials(
          'DUMMY-ACCESS-KEY-ID',
          'DUMMY-SECRET-ACCESS-KEY',
        )),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'GlacierChecksums',
        documentation:
            'Glacier requires checksum headers that are cumbersome to provide.',
        protocol: _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        ),
        authScheme: null,
        body: 'hello world',
        bodyMediaType: null,
        params: {
          'accountId': 'foo',
          'vaultName': 'bar',
          'body': 'hello world',
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'X-Amz-Glacier-Version': '2012-06-01',
          'X-Amz-Content-Sha256':
              'b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9',
          'X-Amz-Sha256-Tree-Hash':
              'b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9',
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
        requireQueryParams: [],
      ),
      inputSerializers: const [UploadArchiveInputRestJson1Serializer()],
    );
  }, skip: 'Glacier is not supported yet');
  _i1.test('GlacierAccountId (request)', () async {
    await _i2.httpRequestTest(
      operation: UploadArchiveOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider:
            const _i3.AWSCredentialsProvider(_i3.AWSCredentials(
          'DUMMY-ACCESS-KEY-ID',
          'DUMMY-SECRET-ACCESS-KEY',
        )),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'GlacierAccountId',
        documentation:
            'Glacier requires that the account id be set, but you can just use a\nhyphen (-) to indicate the current account. This should be default\nbehavior if the customer provides a null or empty string.',
        protocol: _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        ),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {
          'accountId': '',
          'vaultName': 'bar',
        },
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
        requireQueryParams: [],
      ),
      inputSerializers: const [UploadArchiveInputRestJson1Serializer()],
    );
  }, skip: 'Glacier is not supported yet');
}

class UploadArchiveInputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<UploadArchiveInput> {
  const UploadArchiveInputRestJson1Serializer() : super('UploadArchiveInput');

  @override
  Iterable<Type> get types => const [UploadArchiveInput];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  UploadArchiveInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UploadArchiveInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'vaultName':
          result.vaultName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'accountId':
          result.accountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'archiveDescription':
          result.archiveDescription = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'checksum':
          result.checksum = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'body':
          result.body = (serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.Stream,
              [
                FullType(
                  List,
                  [FullType(int)],
                )
              ],
            ),
          ) as _i5.Stream<List<int>>);
      }
    }

    result.body ??= const _i5.Stream.empty();
    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UploadArchiveInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ArchiveCreationOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<ArchiveCreationOutput> {
  const ArchiveCreationOutputRestJson1Serializer()
      : super('ArchiveCreationOutput');

  @override
  Iterable<Type> get types => const [ArchiveCreationOutput];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  ArchiveCreationOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ArchiveCreationOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'location':
          result.location = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'checksum':
          result.checksum = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'archiveId':
          result.archiveId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ArchiveCreationOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class InvalidParameterValueExceptionRestJson1Serializer
    extends _i4.StructuredSmithySerializer<InvalidParameterValueException> {
  const InvalidParameterValueExceptionRestJson1Serializer()
      : super('InvalidParameterValueException');

  @override
  Iterable<Type> get types => const [InvalidParameterValueException];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  InvalidParameterValueException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidParameterValueExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InvalidParameterValueException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class MissingParameterValueExceptionRestJson1Serializer
    extends _i4.StructuredSmithySerializer<MissingParameterValueException> {
  const MissingParameterValueExceptionRestJson1Serializer()
      : super('MissingParameterValueException');

  @override
  Iterable<Type> get types => const [MissingParameterValueException];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  MissingParameterValueException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MissingParameterValueExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MissingParameterValueException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class RequestTimeoutExceptionRestJson1Serializer
    extends _i4.StructuredSmithySerializer<RequestTimeoutException> {
  const RequestTimeoutExceptionRestJson1Serializer()
      : super('RequestTimeoutException');

  @override
  Iterable<Type> get types => const [RequestTimeoutException];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  RequestTimeoutException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestTimeoutExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RequestTimeoutException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ResourceNotFoundExceptionRestJson1Serializer
    extends _i4.StructuredSmithySerializer<ResourceNotFoundException> {
  const ResourceNotFoundExceptionRestJson1Serializer()
      : super('ResourceNotFoundException');

  @override
  Iterable<Type> get types => const [ResourceNotFoundException];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  ResourceNotFoundException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceNotFoundExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ResourceNotFoundException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ServiceUnavailableExceptionRestJson1Serializer
    extends _i4.StructuredSmithySerializer<ServiceUnavailableException> {
  const ServiceUnavailableExceptionRestJson1Serializer()
      : super('ServiceUnavailableException');

  @override
  Iterable<Type> get types => const [ServiceUnavailableException];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  ServiceUnavailableException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceUnavailableExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ServiceUnavailableException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
