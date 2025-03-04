// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_json1_v1.glacier.test.upload_multipart_part_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/glacier/model/invalid_parameter_value_exception.dart';
import 'package:rest_json1_v1/src/glacier/model/missing_parameter_value_exception.dart';
import 'package:rest_json1_v1/src/glacier/model/request_timeout_exception.dart';
import 'package:rest_json1_v1/src/glacier/model/resource_not_found_exception.dart';
import 'package:rest_json1_v1/src/glacier/model/service_unavailable_exception.dart';
import 'package:rest_json1_v1/src/glacier/model/upload_multipart_part_input.dart';
import 'package:rest_json1_v1/src/glacier/model/upload_multipart_part_output.dart';
import 'package:rest_json1_v1/src/glacier/operation/upload_multipart_part_operation.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('GlacierMultipartChecksums (request)', () async {
    await _i2.httpRequestTest(
      operation: UploadMultipartPartOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider:
            const _i3.AWSCredentialsProvider(_i3.AWSCredentials(
          'DUMMY-ACCESS-KEY-ID',
          'DUMMY-SECRET-ACCESS-KEY',
        )),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'GlacierMultipartChecksums',
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
          'uploadId': 'baz',
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
        method: 'PUT',
        uri: '/foo/vaults/bar/multipart-uploads/baz',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [UploadMultipartPartInputRestJson1Serializer()],
    );
  }, skip: 'Glacier is not supported yet');
}

class UploadMultipartPartInputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<UploadMultipartPartInput> {
  const UploadMultipartPartInputRestJson1Serializer()
      : super('UploadMultipartPartInput');

  @override
  Iterable<Type> get types => const [UploadMultipartPartInput];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  UploadMultipartPartInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UploadMultipartPartInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'accountId':
          result.accountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vaultName':
          result.vaultName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'uploadId':
          result.uploadId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'checksum':
          result.checksum = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'range':
          result.range = (serializers.deserialize(
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
    UploadMultipartPartInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class UploadMultipartPartOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<UploadMultipartPartOutput> {
  const UploadMultipartPartOutputRestJson1Serializer()
      : super('UploadMultipartPartOutput');

  @override
  Iterable<Type> get types => const [UploadMultipartPartOutput];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  UploadMultipartPartOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UploadMultipartPartOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'checksum':
          result.checksum = (serializers.deserialize(
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
    UploadMultipartPartOutput object, {
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
